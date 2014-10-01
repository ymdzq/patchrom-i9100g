.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
.super Landroid/widget/RelativeLayout;
.source "SimeSkbKeyboardContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;,
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static final DEBUG:Z = false

.field private static final HANDWRITE_KEYBOARD_ID:I = 0x1

.field private static final LEFT:I = 0x2

.field private static final MAJOR_KEYBOARD_ID:I = 0x0

.field private static final MOVE_TOLERANCE:I = 0x6

.field private static POPUPWINDOW_FOR_PRESSED_UI:Z = false

.field private static final RIGHT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SkbContainer"

.field private static final Y_BIAS_CORRECTION:I


# instance fields
.field private inLeft:Landroid/view/animation/TranslateAnimation;

.field private inRight:Landroid/view/animation/TranslateAnimation;

.field private isNeedRespoonseKeyRelease:Z

.field private mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field private mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field private mCandidatesViewShown:Z

.field private mCurrentView:I

.field private mDirectionGestureHandle:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;

.field private volatile mDiscardEvent:Z

.field private mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mGestureDetectorSkb:Landroid/view/GestureDetector;

.field private mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mLastCandidatesShowing:Z

.field private mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

.field public mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

.field private mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

.field private mPopupSkb:Landroid/widget/PopupWindow;

.field private mPopupSkbNoResponse:Z

.field private mPopupSkbShow:Z

.field private mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

.field private mPopupX:I

.field private mPopupY:I

.field private mPreviousMove:I

.field private mService:Landroid/inputmethodservice/InputMethodService;

.field private mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

.field private mSkbFlipper:Landroid/widget/ViewFlipper;

.field private mSkbLayout:I

.field private mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

.field private mSkvPosInContainer:[I

.field private mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

.field private mTProximityKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

.field private volatile mWaitForTouchUp:Z

.field private mWidth:I

.field private mXLast:I

.field private mXyPosTmp:[I

.field private mYBiasCorrection:I

.field private mYLast:I

.field private mbIsMultiTouch:Z

.field private mbShiftTouch:Z

.field private outLeft:Landroid/view/animation/TranslateAnimation;

.field private outRight:Landroid/view/animation/TranslateAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->POPUPWINDOW_FOR_PRESSED_UI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 271
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbLayout:I

    .line 106
    invoke-static {}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->getInstance()Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mTProximityKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    .line 143
    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 155
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    .line 162
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    .line 178
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWaitForTouchUp:Z

    .line 185
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    .line 192
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    .line 212
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    .line 217
    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 227
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mXyPosTmp:[I

    .line 254
    iput-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isNeedRespoonseKeyRelease:Z

    .line 257
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    .line 259
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    .line 268
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    .line 273
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 275
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-direct {v0, p0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    .line 276
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    .line 277
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->SetMultiTouchListener(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;)V

    .line 279
    const-string v0, "1"

    const-string v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    .line 284
    :goto_0
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-direct {v0, p1, p0, v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 285
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->POPUPWINDOW_FOR_PRESSED_UI:Z

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-direct {v0, p1, p0, v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 290
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    .line 291
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 293
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 297
    :cond_1
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeGestureListener;

    invoke-direct {v0, v5}, Lcom/samsung/inputmethod/comm/SimeGestureListener;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    .line 298
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;

    invoke-direct {v0, p0, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDirectionGestureHandle:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;

    .line 299
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDirectionGestureHandle:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/comm/SimeGestureListener;->setDirectionGestureHandle(Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;)V

    .line 300
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureDetectorSkb:Landroid/view/GestureDetector;

    .line 302
    return-void

    .line 282
    :cond_2
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mCandidatesViewShown:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mCandidatesViewShown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->popupSymbols()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/inputmethodservice/InputMethodService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inRight:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inLeft:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWaitForTouchUp:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    return v0
.end method

.method private inKeyboardView(II[I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "positionInParent"

    .prologue
    .line 1197
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v0, :cond_1

    .line 1198
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    if-gt v0, p2, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p2, :cond_0

    .line 1200
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    aput v1, p3, v0

    .line 1201
    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    aput v1, p3, v0

    .line 1202
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0, p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setOffsetToSkbContainer([I)V

    .line 1203
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 1208
    :goto_0
    return-object v0

    .line 1205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    goto :goto_0
.end method

.method private inPopupSymbolView(II[I)Z
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "positionInParent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1214
    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v2, :cond_1

    .line 1215
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    if-gt v2, p1, :cond_0

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p1, :cond_0

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    if-gt v2, p2, :cond_0

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p2, :cond_0

    .line 1217
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    aput v2, p3, v1

    .line 1218
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    aput v1, p3, v0

    .line 1219
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v1, p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setOffsetToSkbContainer([I)V

    .line 1225
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1222
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1225
    goto :goto_0
.end method

.method private onSKBTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x2

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 1722
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 1724
    .local v3, y:I
    iget v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingTop()I

    move-result v7

    sub-int v3, v6, v7

    .line 1728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v10, :cond_1

    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eq v6, v4, :cond_1

    .line 1729
    iget v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mXLast:I

    sub-int v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x6

    if-gt v6, v7, :cond_1

    iget v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYLast:I

    sub-int v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x6

    if-gt v6, v7, :cond_1

    .line 1948
    :cond_0
    :goto_0
    return v4

    .line 1735
    :cond_1
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mXLast:I

    .line 1736
    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYLast:I

    .line 1750
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_HOLDANDRELEASE:Z

    if-eqz v6, :cond_7

    .line 1751
    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-ne v6, v4, :cond_7

    .line 1753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 1754
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1757
    :cond_2
    iget v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    if-le v6, v2, :cond_3

    .line 1758
    iget v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    add-int/lit8 v2, v6, 0x1

    .line 1761
    :cond_3
    iget v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v6, v2, :cond_4

    .line 1762
    iget v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v2, v6, -0x1

    .line 1765
    :cond_4
    iget v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    if-gt v6, v3, :cond_5

    iget v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v6, v3, :cond_6

    .line 1766
    :cond_5
    iget v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 1768
    :cond_6
    iput-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    .line 1773
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1944
    :cond_8
    :goto_1
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-nez v6, :cond_0

    move v4, v5

    .line 1945
    goto :goto_0

    .line 1775
    :pswitch_0
    invoke-direct {p0, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1777
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v6, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->setDownPosition(Landroid/view/MotionEvent;)V

    .line 1779
    iput-boolean v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWaitForTouchUp:Z

    .line 1780
    iput-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    .line 1785
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 1786
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1787
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    invoke-direct {p0, v2, v3, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inKeyboardView(II[I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 1788
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v6, :cond_9

    .line 1789
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v7, v7, v5

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v8, v8, v4

    sub-int v8, v3, v8

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyPress(IILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;Z)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1794
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v6

    if-ne v6, v11, :cond_9

    .line 1795
    iput-boolean v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    .line 1802
    :cond_9
    iput-boolean v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isNeedRespoonseKeyRelease:Z

    goto :goto_1

    .line 1808
    :pswitch_1
    if-ltz v2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v6

    if-ge v2, v6, :cond_8

    if-ltz v3, :cond_8

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 1814
    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    if-eqz v6, :cond_a

    .line 1815
    invoke-direct {p0, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    goto :goto_1

    .line 1819
    :cond_a
    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    if-nez v6, :cond_8

    .line 1824
    :cond_b
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v6

    if-nez v6, :cond_c

    .line 1825
    const/4 v0, 0x0

    .line 1826
    .local v0, direction:I
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v6, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->checkNeedMove(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1828
    if-ne v0, v4, :cond_d

    .line 1829
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v7, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getDirectionX(Landroid/view/MotionEvent;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onDownKeyEvent(I)V

    .line 1835
    .end local v0           #direction:I
    :cond_c
    :goto_2
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    invoke-direct {p0, v2, v3, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inKeyboardView(II[I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v1

    .line 1836
    .local v1, skv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    if-eqz v1, :cond_8

    .line 1837
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eq v1, v6, :cond_e

    .line 1838
    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 1839
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v7, v7, v5

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v8, v8, v4

    sub-int v8, v3, v8

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyPress(IILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;Z)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1842
    iput-boolean v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isNeedRespoonseKeyRelease:Z

    goto/16 :goto_1

    .line 1830
    .end local v1           #skv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    .restart local v0       #direction:I
    :cond_d
    if-ne v0, v10, :cond_c

    .line 1831
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v7, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getDirectionY(Landroid/view/MotionEvent;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onDownKeyEvent(I)V

    goto :goto_2

    .line 1843
    .end local v0           #direction:I
    .restart local v1       #skv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    :cond_e
    if-eqz v1, :cond_8

    .line 1844
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v6, :cond_8

    .line 1845
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v7, v7, v5

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v8, v8, v4

    sub-int v8, v3, v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyMove(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1857
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-nez v6, :cond_8

    .line 1858
    iput-boolean v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    goto/16 :goto_1

    .line 1866
    .end local v1           #skv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    :pswitch_2
    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    if-nez v6, :cond_f

    .line 1867
    iput-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    .line 1869
    :cond_f
    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    if-eqz v6, :cond_10

    .line 1870
    invoke-direct {p0, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    goto/16 :goto_1

    .line 1873
    :cond_10
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->finishPointing()V

    .line 1877
    iput-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWaitForTouchUp:Z

    .line 1880
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_HOLDANDRELEASE:Z

    if-eqz v6, :cond_15

    .line 1881
    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v6, :cond_11

    .line 1882
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopupSkb()V

    .line 1896
    :cond_11
    :goto_3
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v6, :cond_13

    .line 1897
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v7, v7, v5

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v8, v8, v4

    sub-int v8, v3, v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyRelease(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1901
    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v6, :cond_12

    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    if-nez v6, :cond_13

    :cond_12
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isDisable()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v6, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isConditionCheck(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1902
    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isNeedRespoonseKeyRelease:Z

    if-eqz v6, :cond_13

    .line 1905
    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    if-eqz v6, :cond_17

    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v6

    if-ne v6, v11, :cond_17

    .line 1907
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->shiftActionHandlerForMultiTouch(Z)V

    .line 1916
    :cond_13
    :goto_4
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-eqz v6, :cond_14

    .line 1917
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setLongPressed(Z)V

    .line 1920
    :cond_14
    iput-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    goto/16 :goto_1

    .line 1885
    :cond_15
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-ne v6, v7, :cond_16

    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    if-nez v6, :cond_16

    .line 1886
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopupSkb()V

    .line 1889
    :cond_16
    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v6, :cond_11

    .line 1890
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopupSkb()V

    goto :goto_3

    .line 1910
    :cond_17
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-direct {p0, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_4

    .line 1925
    :pswitch_3
    invoke-direct {p0, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1936
    iget-boolean v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    if-eqz v6, :cond_8

    .line 1937
    iput-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    goto/16 :goto_1

    .line 1773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private popupSymbols()V
    .locals 18

    .prologue
    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getPopupResId()I

    move-result v11

    .line 1273
    .local v11, popupResId:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isVoiceInputEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    .line 1278
    .local v7, isVoiceValid:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1280
    if-lez v11, :cond_1

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v15

    .line 1282
    .local v15, skbContainerWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v14

    .line 1283
    .local v14, skbContainerHeight:I
    const/4 v4, 0x0

    .line 1284
    .local v4, miniSkbWidth:I
    const/4 v5, 0x0

    .line 1286
    .local v5, miniSkbHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1288
    .local v12, r:Landroid/content/res/Resources;
    const v2, 0x7f0a0031

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v4, v2

    .line 1289
    const v2, 0x7f0a0032

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v5, v2

    .line 1293
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    move-result-object v1

    .line 1294
    .local v1, skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    const/4 v13, 0x0

    .line 1296
    .local v13, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    const/4 v8, 0x0

    .line 1297
    .local v8, mIsenableOCR:Z
    const/4 v9, 0x0

    .line 1301
    .local v9, ocrInstalled:Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.ocr"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1302
    if-eqz v9, :cond_0

    .line 1303
    const/4 v8, 0x1

    .line 1308
    :cond_0
    :goto_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_OCR_FEATURE:Z

    if-eqz v2, :cond_6

    if-eqz v8, :cond_6

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1312
    if-eqz v7, :cond_3

    .line 1314
    mul-int/lit8 v4, v4, 0x5

    .line 1315
    const v2, 0x7f04002f

    const v3, 0x7f04002f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    .line 1458
    :goto_2
    if-nez v13, :cond_1a

    .line 1526
    .end local v1           #skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    .end local v4           #miniSkbWidth:I
    .end local v5           #miniSkbHeight:I
    .end local v8           #mIsenableOCR:Z
    .end local v9           #ocrInstalled:Landroid/content/pm/PackageInfo;
    .end local v12           #r:Landroid/content/res/Resources;
    .end local v13           #skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .end local v14           #skbContainerHeight:I
    .end local v15           #skbContainerWidth:I
    :cond_1
    :goto_3
    return-void

    .line 1273
    .end local v7           #isVoiceValid:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1318
    .restart local v1       #skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    .restart local v4       #miniSkbWidth:I
    .restart local v5       #miniSkbHeight:I
    .restart local v7       #isVoiceValid:Z
    .restart local v8       #mIsenableOCR:Z
    .restart local v9       #ocrInstalled:Landroid/content/pm/PackageInfo;
    .restart local v12       #r:Landroid/content/res/Resources;
    .restart local v13       #skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v14       #skbContainerHeight:I
    .restart local v15       #skbContainerWidth:I
    :cond_3
    mul-int/lit8 v4, v4, 0x4

    .line 1319
    const v2, 0x7f040030

    const v3, 0x7f040030

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto :goto_2

    .line 1324
    :cond_4
    if-eqz v7, :cond_5

    .line 1326
    mul-int/lit8 v4, v4, 0x5

    .line 1327
    const v2, 0x7f040034

    const v3, 0x7f040034

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto :goto_2

    .line 1330
    :cond_5
    mul-int/lit8 v4, v4, 0x4

    .line 1331
    const v2, 0x7f040035

    const v3, 0x7f040035

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto :goto_2

    .line 1337
    :cond_6
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MM_NO_CLIPBOARD_KEY:Z

    if-eqz v2, :cond_a

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1340
    if-eqz v7, :cond_7

    .line 1342
    mul-int/lit8 v4, v4, 0x3

    .line 1343
    const v2, 0x7f04002c

    const v3, 0x7f04002c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto :goto_2

    .line 1346
    :cond_7
    mul-int/lit8 v4, v4, 0x2

    .line 1347
    const v2, 0x7f04002e

    const v3, 0x7f04002e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto :goto_2

    .line 1352
    :cond_8
    if-eqz v7, :cond_9

    .line 1354
    mul-int/lit8 v4, v4, 0x3

    .line 1355
    const v2, 0x7f040031

    const v3, 0x7f040031

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1358
    :cond_9
    mul-int/lit8 v4, v4, 0x2

    .line 1359
    const v2, 0x7f040033

    const v3, 0x7f040033

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1365
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1367
    if-eqz v7, :cond_e

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v2, v3, :cond_e

    .line 1368
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_CMKEY:Z

    if-eqz v2, :cond_c

    .line 1369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1370
    mul-int/lit8 v4, v4, 0x4

    .line 1371
    mul-int/lit8 v5, v5, 0x2

    .line 1372
    const v2, 0x7f040011

    const v3, 0x7f040011

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1374
    :cond_b
    mul-int/lit8 v4, v4, 0x4

    .line 1375
    mul-int/lit8 v5, v5, 0x2

    .line 1376
    const v2, 0x7f040012

    const v3, 0x7f040012

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1379
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1380
    mul-int/lit8 v4, v4, 0x4

    .line 1381
    const v2, 0x7f04002b

    const v3, 0x7f04002b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1383
    :cond_d
    mul-int/lit8 v4, v4, 0x3

    .line 1384
    const v2, 0x7f04002c

    const v3, 0x7f04002c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1388
    :cond_e
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_CMKEY:Z

    if-eqz v2, :cond_10

    .line 1389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1390
    mul-int/lit8 v4, v4, 0x4

    .line 1391
    mul-int/lit8 v5, v5, 0x2

    .line 1392
    const v2, 0x7f040013

    const v3, 0x7f040013

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1394
    :cond_f
    mul-int/lit8 v4, v4, 0x4

    .line 1395
    mul-int/lit8 v5, v5, 0x2

    .line 1396
    const v2, 0x7f040014

    const v3, 0x7f040014

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1399
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1400
    mul-int/lit8 v4, v4, 0x3

    .line 1401
    const v2, 0x7f04002d

    const v3, 0x7f04002d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1403
    :cond_11
    mul-int/lit8 v4, v4, 0x2

    .line 1404
    const v2, 0x7f04002e

    const v3, 0x7f04002e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1412
    :cond_12
    if-eqz v7, :cond_16

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v2, v3, :cond_16

    .line 1413
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_CMKEY:Z

    if-eqz v2, :cond_14

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1415
    mul-int/lit8 v4, v4, 0x4

    .line 1416
    mul-int/lit8 v5, v5, 0x2

    .line 1417
    const v2, 0x7f040010

    const v3, 0x7f040010

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1419
    :cond_13
    mul-int/lit8 v4, v4, 0x4

    .line 1420
    mul-int/lit8 v5, v5, 0x2

    .line 1421
    const v2, 0x7f040015

    const v3, 0x7f040015

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1424
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1425
    mul-int/lit8 v4, v4, 0x4

    .line 1426
    const v2, 0x7f04002a

    const v3, 0x7f04002a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1428
    :cond_15
    mul-int/lit8 v4, v4, 0x3

    .line 1429
    const v2, 0x7f040031

    const v3, 0x7f040031

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1433
    :cond_16
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_CMKEY:Z

    if-eqz v2, :cond_18

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1435
    mul-int/lit8 v4, v4, 0x4

    .line 1436
    mul-int/lit8 v5, v5, 0x2

    .line 1437
    const v2, 0x7f040016

    const v3, 0x7f040016

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1439
    :cond_17
    mul-int/lit8 v4, v4, 0x4

    .line 1440
    mul-int/lit8 v5, v5, 0x2

    .line 1441
    const v2, 0x7f040017

    const v3, 0x7f040017

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1444
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1445
    mul-int/lit8 v4, v4, 0x3

    .line 1446
    const v2, 0x7f040032

    const v3, 0x7f040032

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1448
    :cond_19
    mul-int/lit8 v4, v4, 0x2

    .line 1449
    const v2, 0x7f040033

    const v3, 0x7f040033

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v13

    goto/16 :goto_2

    .line 1460
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v2, :cond_1b

    .line 1461
    new-instance v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    const/4 v3, -0x2

    const/4 v6, -0x2

    invoke-virtual {v2, v3, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onMeasure(II)V

    .line 1465
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2, v13}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setSoftKeyboard(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)Z

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v3, v6, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setBalloonHint(Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Z)V

    .line 1469
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_HOLDANDRELEASE:Z

    if-eqz v2, :cond_1c

    .line 1470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setNoSoundNoVibrate(Z)V

    .line 1473
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingRight()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingTop()I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mXyPosTmp:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getLocationInWindow([I)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLeft()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v2

    sub-int v2, v14, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1490
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v15, :cond_1d

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    sub-int v2, v15, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1498
    :cond_1d
    move/from16 v16, v14

    .line 1499
    .local v16, standardHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1500
    mul-int/lit8 v16, v14, 0x2

    .line 1502
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    move/from16 v0, v16

    if-le v2, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v14

    const/high16 v6, 0x3f00

    mul-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    sub-int v2, v16, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1508
    :cond_1f
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_20

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getDummyInputView()Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    move-result-object v10

    .line 1510
    .local v10, parentView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1517
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    const/16 v3, 0x53

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v10, v3, v6, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    .line 1520
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    .line 1521
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    .line 1523
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dimSoftKeyboard(Z)V

    .line 1524
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    goto/16 :goto_3

    .line 1515
    .end local v10           #parentView:Landroid/view/View;
    :cond_20
    move-object/from16 v10, p0

    .restart local v10       #parentView:Landroid/view/View;
    goto :goto_4

    .line 1304
    .end local v10           #parentView:Landroid/view/View;
    .end local v16           #standardHeight:I
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method private resetKeyPress(J)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->removeTimer()Z

    .line 1550
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->resetKeyPress(J)V

    .line 1553
    :cond_0
    return-void
.end method

.method private responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 1
    .parameter "sKey"

    .prologue
    .line 1190
    if-nez p1, :cond_0

    .line 1192
    :goto_0
    return-void

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v0, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->responseSoftKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_0
.end method

.method private toggleDivstateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z
    .locals 3
    .parameter "skb"
    .parameter "candidatesShowing"

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseText()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isCangjieMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQuickCangjieMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v1

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getTooggleStateForCnCand()I

    move-result v0

    .line 382
    .local v0, stateCand:I
    if-nez p2, :cond_2

    .line 383
    invoke-virtual {p1, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->disableToggleState(IZ)V

    .line 384
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V

    .line 389
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleState(IZ)V

    goto :goto_1
.end method

.method private toggleEnterstateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z
    .locals 4
    .parameter "skb"
    .parameter "candidatesShowing"

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseText()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    const/4 v0, 0x0

    .line 357
    .local v0, bRet:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStateForEnter()I

    move-result v1

    .line 359
    .local v1, stateEnter:I
    if-eqz v1, :cond_0

    .line 361
    if-nez p2, :cond_2

    .line 362
    invoke-virtual {p1, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleState(IZ)V

    .line 363
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    .line 369
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->disableToggleState(IZ)V

    .line 367
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    goto :goto_1
.end method

.method private toggleTonestateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z
    .locals 4
    .parameter "skb"
    .parameter "candidatesShowing"

    .prologue
    const/4 v3, 0x0

    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStateForZhuyinTone()I

    move-result v1

    .line 339
    .local v1, stateTone:I
    if-nez p2, :cond_0

    .line 341
    invoke-virtual {p1, v1, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->disableToggleState(IZ)V

    .line 342
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V

    .line 347
    :goto_0
    return v0

    .line 344
    :cond_0
    invoke-virtual {p1, v1, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleState(IZ)V

    goto :goto_0
.end method

.method private updateSkbLayout()V
    .locals 13

    .prologue
    const v12, 0x7f04000a

    const v1, 0x7f040009

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 476
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    if-nez v2, :cond_0

    .line 477
    const v2, 0x7f0c003b

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    .line 479
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v2, :cond_1

    .line 480
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v9}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 481
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setService(Landroid/inputmethodservice/InputMethodService;)V

    .line 485
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v5, :cond_3

    .line 486
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a001f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v6, v2

    .line 487
    .local v6, leftPadding:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0020

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    .line 488
    .local v8, rightPadding:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    sub-int v3, v2, v8

    .line 490
    .local v3, skbWidth:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getOneHandCoreHeight(I)I

    move-result v4

    .line 504
    .local v4, skbHeight:I
    :goto_0
    const/4 v7, 0x0

    .line 505
    .local v7, majorSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    move-result-object v0

    .line 506
    .local v0, skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    iput v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mCurrentView:I

    .line 507
    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPreviousMove:I

    .line 508
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbLayout:I

    packed-switch v2, :pswitch_data_0

    .line 998
    :goto_1
    :pswitch_0
    if-eqz v7, :cond_2

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v1, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setSoftKeyboard(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1004
    :cond_2
    :goto_2
    return-void

    .line 491
    .end local v0           #skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    .end local v3           #skbWidth:I
    .end local v4           #skbHeight:I
    .end local v6           #leftPadding:I
    .end local v7           #majorSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .end local v8           #rightPadding:I
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v5, :cond_4

    .line 492
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a003b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v6, v2

    .line 493
    .restart local v6       #leftPadding:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a003c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    .line 494
    .restart local v8       #rightPadding:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    sub-int/2addr v2, v6

    sub-int v3, v2, v8

    .line 495
    .restart local v3       #skbWidth:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v4

    .restart local v4       #skbHeight:I
    goto :goto_0

    .line 497
    .end local v3           #skbWidth:I
    .end local v4           #skbHeight:I
    .end local v6           #leftPadding:I
    .end local v8           #rightPadding:I
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingLeft()I

    move-result v6

    .line 498
    .restart local v6       #leftPadding:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingRight()I

    move-result v8

    .line 499
    .restart local v8       #rightPadding:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    sub-int/2addr v2, v6

    sub-int v3, v2, v8

    .line 500
    .restart local v3       #skbWidth:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v4

    .restart local v4       #skbHeight:I
    goto :goto_0

    .line 510
    .restart local v0       #skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    .restart local v7       #majorSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :pswitch_1
    const v1, 0x7f040046

    const v2, 0x7f040046

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 512
    goto :goto_1

    .line 514
    :pswitch_2
    const v1, 0x7f040049

    const v2, 0x7f040049

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 516
    goto :goto_1

    .line 518
    :pswitch_3
    const v1, 0x7f04003f

    const v2, 0x7f04003f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 520
    goto/16 :goto_1

    .line 522
    :pswitch_4
    const v1, 0x7f040040

    const v2, 0x7f040040

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 524
    goto/16 :goto_1

    .line 526
    :pswitch_5
    const v1, 0x7f040023

    const v2, 0x7f040023

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 528
    goto/16 :goto_1

    .line 530
    :pswitch_6
    const v1, 0x7f040024

    const v2, 0x7f040024

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 532
    goto/16 :goto_1

    .line 534
    :pswitch_7
    const v1, 0x7f040018

    const v2, 0x7f040018

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 536
    goto/16 :goto_1

    .line 538
    :pswitch_8
    const v1, 0x7f040019

    const v2, 0x7f040019

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 540
    goto/16 :goto_1

    .line 558
    :pswitch_9
    const v1, 0x7f04001c

    const v2, 0x7f04001c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 560
    goto/16 :goto_1

    .line 562
    :pswitch_a
    const v1, 0x7f04001d

    const v2, 0x7f04001d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 564
    goto/16 :goto_1

    .line 566
    :pswitch_b
    const v1, 0x7f040041

    const v2, 0x7f040041

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 568
    goto/16 :goto_1

    .line 570
    :pswitch_c
    const v1, 0x7f040042

    const v2, 0x7f040042

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 572
    goto/16 :goto_1

    .line 574
    :pswitch_d
    const v1, 0x7f040025

    const v2, 0x7f040025

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 576
    goto/16 :goto_1

    .line 580
    :pswitch_e
    const v1, 0x7f040043

    const v2, 0x7f040043

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 582
    goto/16 :goto_1

    .line 584
    :pswitch_f
    const v1, 0x7f040044

    const v2, 0x7f040044

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 586
    goto/16 :goto_1

    .line 588
    :pswitch_10
    const v1, 0x7f040045

    const v2, 0x7f040045

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 590
    goto/16 :goto_1

    .line 592
    :pswitch_11
    const v1, 0x7f040027

    const v2, 0x7f040027

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 594
    goto/16 :goto_1

    .line 596
    :pswitch_12
    const v1, 0x7f040028

    const v2, 0x7f040028

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 598
    goto/16 :goto_1

    .line 600
    :pswitch_13
    const v1, 0x7f040029

    const v2, 0x7f040029

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 602
    goto/16 :goto_1

    .line 604
    :pswitch_14
    const v1, 0x7f040051

    const v2, 0x7f040051

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 606
    goto/16 :goto_1

    .line 608
    :pswitch_15
    const v1, 0x7f040054

    const v2, 0x7f040054

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 610
    goto/16 :goto_1

    .line 612
    :pswitch_16
    const v1, 0x7f04005a

    const v2, 0x7f04005a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 614
    goto/16 :goto_1

    .line 616
    :pswitch_17
    const v1, 0x7f04005d

    const v2, 0x7f04005d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 618
    goto/16 :goto_1

    .line 620
    :pswitch_18
    const v1, 0x7f040052

    const v2, 0x7f040052

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 622
    goto/16 :goto_1

    .line 624
    :pswitch_19
    const v1, 0x7f040053

    const v2, 0x7f040053

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 626
    goto/16 :goto_1

    .line 628
    :pswitch_1a
    const v1, 0x7f04005b

    const v2, 0x7f04005b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 630
    goto/16 :goto_1

    .line 632
    :pswitch_1b
    const v1, 0x7f04005c

    const v2, 0x7f04005c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 634
    goto/16 :goto_1

    .line 636
    :pswitch_1c
    const v1, 0x7f04000d

    const v2, 0x7f04000d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 638
    goto/16 :goto_1

    .line 640
    :pswitch_1d
    const v1, 0x7f04000e

    const v2, 0x7f04000e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 642
    goto/16 :goto_1

    .line 644
    :pswitch_1e
    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mCurrentView:I

    .line 645
    iput v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPreviousMove:I

    .line 646
    const v1, 0x7f040021

    const v2, 0x7f040021

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 648
    goto/16 :goto_1

    .line 651
    :pswitch_1f
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 653
    goto/16 :goto_1

    .line 655
    :pswitch_20
    const v1, 0x7f04000c

    const v2, 0x7f04000c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 657
    goto/16 :goto_1

    .line 659
    :pswitch_21
    const v1, 0x7f04000f

    const v2, 0x7f04000f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 661
    goto/16 :goto_1

    .line 663
    :pswitch_22
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    move v1, v12

    move v2, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 665
    goto/16 :goto_1

    .line 667
    :pswitch_23
    const v1, 0x7f040048

    const v2, 0x7f040048

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 669
    goto/16 :goto_1

    .line 671
    :pswitch_24
    const v1, 0x7f040047

    const v2, 0x7f040047

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 673
    goto/16 :goto_1

    .line 675
    :pswitch_25
    const v1, 0x7f040081

    const v2, 0x7f040081

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 677
    goto/16 :goto_1

    .line 679
    :pswitch_26
    const v1, 0x7f040084

    const v2, 0x7f040084

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 681
    goto/16 :goto_1

    .line 683
    :pswitch_27
    const v1, 0x7f040082

    const v2, 0x7f040082

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 685
    goto/16 :goto_1

    .line 691
    :pswitch_28
    const v1, 0x7f04000b

    const v2, 0x7f04000b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 693
    goto/16 :goto_1

    .line 695
    :pswitch_29
    const v1, 0x7f040083

    const v2, 0x7f040083

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 697
    goto/16 :goto_1

    .line 700
    :pswitch_2a
    const v1, 0x7f040026

    const v2, 0x7f040026

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 702
    goto/16 :goto_1

    .line 712
    :pswitch_2b
    const v1, 0x7f04004a

    const v2, 0x7f04004a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 714
    goto/16 :goto_1

    .line 716
    :pswitch_2c
    const v1, 0x7f040050

    const v2, 0x7f040050

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 718
    goto/16 :goto_1

    .line 720
    :pswitch_2d
    const v1, 0x7f040055

    const v2, 0x7f040055

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 722
    goto/16 :goto_1

    .line 724
    :pswitch_2e
    const v1, 0x7f040059

    const v2, 0x7f040059

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 726
    goto/16 :goto_1

    .line 728
    :pswitch_2f
    const v1, 0x7f04005e

    const v2, 0x7f04005e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 730
    goto/16 :goto_1

    .line 732
    :pswitch_30
    const v1, 0x7f040062

    const v2, 0x7f040062

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 734
    goto/16 :goto_1

    .line 736
    :pswitch_31
    const v1, 0x7f040061

    const v2, 0x7f040061

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 738
    goto/16 :goto_1

    .line 740
    :pswitch_32
    const v1, 0x7f040067

    const v2, 0x7f040067

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 742
    goto/16 :goto_1

    .line 760
    :pswitch_33
    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mCurrentView:I

    .line 761
    iput v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPreviousMove:I

    .line 762
    const v1, 0x7f04001e

    const v2, 0x7f04001e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 764
    goto/16 :goto_1

    .line 766
    :pswitch_34
    const v1, 0x7f04001f

    const v2, 0x7f04001f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 768
    goto/16 :goto_1

    .line 770
    :pswitch_35
    const v1, 0x7f040020

    const v2, 0x7f040020

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 772
    goto/16 :goto_1

    .line 809
    :pswitch_36
    const v1, 0x7f040036

    const v2, 0x7f040036

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 811
    goto/16 :goto_1

    .line 813
    :pswitch_37
    const v1, 0x7f04004b

    const v2, 0x7f04004b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 815
    goto/16 :goto_1

    .line 817
    :pswitch_38
    const v1, 0x7f040056

    const v2, 0x7f040056

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 819
    goto/16 :goto_1

    .line 821
    :pswitch_39
    const v1, 0x7f04005f

    const v2, 0x7f04005f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 823
    goto/16 :goto_1

    .line 825
    :pswitch_3a
    const v1, 0x7f040063

    const v2, 0x7f040063

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 827
    goto/16 :goto_1

    .line 829
    :pswitch_3b
    const v1, 0x7f040068

    const v2, 0x7f040068

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 831
    goto/16 :goto_1

    .line 833
    :pswitch_3c
    const v1, 0x7f04006c

    const v2, 0x7f04006c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 835
    goto/16 :goto_1

    .line 841
    :pswitch_3d
    const v1, 0x7f040037

    const v2, 0x7f040037

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 843
    goto/16 :goto_1

    .line 845
    :pswitch_3e
    const v1, 0x7f04004d

    const v2, 0x7f04004d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 847
    goto/16 :goto_1

    .line 849
    :pswitch_3f
    const v1, 0x7f040057

    const v2, 0x7f040057

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 851
    goto/16 :goto_1

    .line 853
    :pswitch_40
    const v1, 0x7f040060

    const v2, 0x7f040060

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 855
    goto/16 :goto_1

    .line 857
    :pswitch_41
    const v1, 0x7f040065

    const v2, 0x7f040065

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 859
    goto/16 :goto_1

    .line 861
    :pswitch_42
    const v1, 0x7f04006a

    const v2, 0x7f04006a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 863
    goto/16 :goto_1

    .line 865
    :pswitch_43
    const v1, 0x7f04006d

    const v2, 0x7f04006d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 867
    goto/16 :goto_1

    .line 893
    :pswitch_44
    const v1, 0x7f04001a

    const v2, 0x7f04001a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 895
    goto/16 :goto_1

    .line 897
    :pswitch_45
    const v1, 0x7f04001b

    const v2, 0x7f04001b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 899
    goto/16 :goto_1

    .line 901
    :pswitch_46
    const v1, 0x7f04007f

    const v2, 0x7f04007f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 903
    goto/16 :goto_1

    .line 905
    :pswitch_47
    const v1, 0x7f040080

    const v2, 0x7f040080

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 907
    goto/16 :goto_1

    .line 909
    :pswitch_48
    const v1, 0x7f04003b

    const v2, 0x7f04003b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 911
    goto/16 :goto_1

    .line 914
    :pswitch_49
    const v1, 0x7f04003d

    const v2, 0x7f04003d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 916
    goto/16 :goto_1

    .line 919
    :pswitch_4a
    const v1, 0x7f04003a

    const v2, 0x7f04003a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 921
    goto/16 :goto_1

    .line 923
    :pswitch_4b
    const v1, 0x7f040038

    const v2, 0x7f040038

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 925
    goto/16 :goto_1

    .line 927
    :pswitch_4c
    const v1, 0x7f040039

    const v2, 0x7f040039

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 929
    goto/16 :goto_1

    .line 934
    :pswitch_4d
    const v1, 0x7f04007e

    const v2, 0x7f04007e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 936
    goto/16 :goto_1

    .line 938
    :pswitch_4e
    const v1, 0x7f04007c

    const v2, 0x7f04007c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 940
    goto/16 :goto_1

    .line 942
    :pswitch_4f
    const v1, 0x7f040071

    const v2, 0x7f040071

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 944
    goto/16 :goto_1

    .line 946
    :pswitch_50
    const v1, 0x7f040073

    const v2, 0x7f040073

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 948
    goto/16 :goto_1

    .line 950
    :pswitch_51
    const v1, 0x7f040075

    const v2, 0x7f040075

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 952
    goto/16 :goto_1

    .line 954
    :pswitch_52
    const v1, 0x7f040077

    const v2, 0x7f040077

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 956
    goto/16 :goto_1

    .line 958
    :pswitch_53
    const v1, 0x7f040079

    const v2, 0x7f040079

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 960
    goto/16 :goto_1

    .line 962
    :pswitch_54
    const v1, 0x7f04007b

    const v2, 0x7f04007b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 964
    goto/16 :goto_1

    .line 966
    :pswitch_55
    const v1, 0x7f040070

    const v2, 0x7f040070

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 968
    goto/16 :goto_1

    .line 970
    :pswitch_56
    const v1, 0x7f040072

    const v2, 0x7f040072

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 972
    goto/16 :goto_1

    .line 974
    :pswitch_57
    const v1, 0x7f040074

    const v2, 0x7f040074

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 976
    goto/16 :goto_1

    .line 978
    :pswitch_58
    const v1, 0x7f040076

    const v2, 0x7f040076

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 980
    goto/16 :goto_1

    .line 982
    :pswitch_59
    const v1, 0x7f040078

    const v2, 0x7f040078

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 984
    goto/16 :goto_1

    .line 986
    :pswitch_5a
    const v1, 0x7f04007a

    const v2, 0x7f04007a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 988
    goto/16 :goto_1

    .line 990
    :pswitch_5b
    const v1, 0x7f040022

    const v2, 0x7f040022

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 992
    goto/16 :goto_1

    .line 1002
    :cond_5
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1, v2, v5, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setBalloonHint(Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Z)V

    goto/16 :goto_2

    .line 508
    :pswitch_data_0
    .packed-switch 0x7f040009
        :pswitch_1f
        :pswitch_22
        :pswitch_28
        :pswitch_20
        :pswitch_1c
        :pswitch_1d
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_44
        :pswitch_45
        :pswitch_9
        :pswitch_a
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_1e
        :pswitch_5b
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_2a
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_36
        :pswitch_3d
        :pswitch_4b
        :pswitch_4c
        :pswitch_4a
        :pswitch_48
        :pswitch_0
        :pswitch_49
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_1
        :pswitch_24
        :pswitch_23
        :pswitch_2
        :pswitch_2b
        :pswitch_37
        :pswitch_0
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_2c
        :pswitch_14
        :pswitch_18
        :pswitch_19
        :pswitch_15
        :pswitch_2d
        :pswitch_38
        :pswitch_3f
        :pswitch_0
        :pswitch_2e
        :pswitch_16
        :pswitch_1a
        :pswitch_1b
        :pswitch_17
        :pswitch_2f
        :pswitch_39
        :pswitch_40
        :pswitch_31
        :pswitch_30
        :pswitch_3a
        :pswitch_0
        :pswitch_41
        :pswitch_0
        :pswitch_32
        :pswitch_3b
        :pswitch_0
        :pswitch_42
        :pswitch_0
        :pswitch_3c
        :pswitch_43
        :pswitch_0
        :pswitch_0
        :pswitch_55
        :pswitch_4f
        :pswitch_56
        :pswitch_50
        :pswitch_57
        :pswitch_51
        :pswitch_58
        :pswitch_52
        :pswitch_59
        :pswitch_53
        :pswitch_5a
        :pswitch_54
        :pswitch_4e
        :pswitch_0
        :pswitch_4d
        :pswitch_46
        :pswitch_47
        :pswitch_25
        :pswitch_27
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public PageDown()Z
    .locals 4

    .prologue
    .line 1029
    const/4 v0, 0x1

    .line 1030
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1033
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1050
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 1040
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->startAnimation(Landroid/view/animation/Animation;)V

    move v1, v0

    .line 1050
    .restart local v1       #bRet:I
    goto :goto_0
.end method

.method public PageUp()Z
    .locals 4

    .prologue
    .line 1058
    const/4 v0, 0x1

    .line 1059
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1062
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1078
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 1069
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->startAnimation(Landroid/view/animation/Animation;)V

    move v1, v0

    .line 1078
    .restart local v1       #bRet:I
    goto :goto_0
.end method

.method public checkIsMultiTouchState()Z
    .locals 1

    .prologue
    .line 2180
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    return v0
.end method

.method public dimSoftKeyboard(Z)V
    .locals 1
    .parameter "dimSkb"

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->dimSoftKeyboard(Z)V

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    .line 1532
    return-void
.end method

.method public dismissPopupSkb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1535
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->dismissBalloonHint()V

    .line 1539
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aput v2, v0, v2

    .line 1540
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 1542
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    .line 1543
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dimSoftKeyboard(Z)V

    .line 1544
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1545
    return-void
.end method

.method public dismissPopups()V
    .locals 2

    .prologue
    .line 1567
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->handleBack(Z)Z

    .line 1568
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1569
    return-void
.end method

.method public getMajorView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    return-object v0
.end method

.method public getPopupSkbStatus()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->getResponseTimes()I

    move-result v0

    return v0
.end method

.method public handleBack(Z)Z
    .locals 2
    .parameter "realAction"

    .prologue
    const/4 v0, 0x1

    .line 1556
    iget-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v1, :cond_1

    .line 1557
    if-nez p1, :cond_0

    .line 1563
    :goto_0
    return v0

    .line 1559
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopupSkb()V

    .line 1560
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    goto :goto_0

    .line 1563
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/inputmethodservice/InputMethodService;Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 2
    .parameter "service"
    .parameter "inputModeSwitcher"

    .prologue
    .line 1016
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->setService(Landroid/inputmethodservice/InputMethodService;)V

    .line 1017
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 1018
    const v0, 0x7f0c003b

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    .line 1019
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 1020
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 1021
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setService(Landroid/inputmethodservice/InputMethodService;)V

    .line 1022
    return-void
.end method

.method public isCurrentSkbSticky()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 325
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v1

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v0

    .line 327
    .local v0, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getStickyFlag()Z

    move-result v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1573
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1579
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v0, Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->onInputModeChange(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 1583
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 1587
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1590
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1592
    .local v5, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v8

    sget-object v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v8, v9, :cond_0

    .line 1593
    const v8, 0x7f0a001f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 1594
    .local v2, leftPadding:I
    const v8, 0x7f0a0020

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 1595
    .local v6, rightPadding:I
    const v8, 0x7f0a001d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    .line 1597
    .local v7, topPadding:I
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v8

    sub-int/2addr v8, v2

    sub-int v4, v8, v6

    .line 1598
    .local v4, measuredWidth:I
    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getOneHandCoreHeight(I)I

    move-result v8

    add-int v3, v8, v7

    .line 1617
    .end local v2           #leftPadding:I
    .end local v6           #rightPadding:I
    .local v3, measuredHeight:I
    :goto_0
    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1619
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1621
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 1622
    return-void

    .line 1599
    .end local v3           #measuredHeight:I
    .end local v4           #measuredWidth:I
    .end local v7           #topPadding:I
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v8

    sget-object v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v8, v9, :cond_1

    .line 1600
    const v8, 0x7f0a0039

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    .line 1601
    .restart local v7       #topPadding:I
    const v8, 0x7f0a003a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    .line 1602
    .local v0, bottomPadding:I
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v4

    .line 1603
    .restart local v4       #measuredWidth:I
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v3

    .line 1604
    .restart local v3       #measuredHeight:I
    add-int v8, v7, v0

    add-int/2addr v3, v8

    goto :goto_0

    .line 1606
    .end local v0           #bottomPadding:I
    .end local v3           #measuredHeight:I
    .end local v4           #measuredWidth:I
    .end local v7           #topPadding:I
    :cond_1
    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingTop()I

    move-result v7

    .line 1607
    .restart local v7       #topPadding:I
    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingBottom()I

    move-result v0

    .line 1608
    .restart local v0       #bottomPadding:I
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v4

    .line 1609
    .restart local v4       #measuredWidth:I
    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v3

    .line 1610
    .restart local v3       #measuredHeight:I
    add-int v8, v7, v0

    add-int/2addr v3, v8

    goto :goto_0
.end method

.method public onMultiTouchBegin(IIFF)V
    .locals 1
    .parameter "activePointerID"
    .parameter "curPointerID"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 2185
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    if-eqz v0, :cond_0

    .line 2186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    .line 2187
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    .line 2190
    return-void
.end method

.method public onMultiTouchFinished(IIFF)V
    .locals 2
    .parameter "activePointerID"
    .parameter "curPointerID"
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v1, 0x0

    .line 2194
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    if-eqz v0, :cond_0

    .line 2198
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    .line 2199
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    if-eqz v0, :cond_0

    .line 2201
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->shiftActionHandlerForMultiTouch(Z)V

    .line 2202
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    .line 2205
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    const-wide/16 v3, 0x12c

    const/4 v2, 0x0

    .line 1084
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWidth:I

    .line 1085
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inLeft:Landroid/view/animation/TranslateAnimation;

    .line 1086
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->outLeft:Landroid/view/animation/TranslateAnimation;

    .line 1087
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inRight:Landroid/view/animation/TranslateAnimation;

    .line 1088
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->outRight:Landroid/view/animation/TranslateAnimation;

    .line 1090
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1091
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1092
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1093
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1095
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inLeft:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$1;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$1;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1108
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->outLeft:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1139
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inRight:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$3;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$3;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1153
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->outRight:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$4;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$4;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1186
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1955
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v15

    .line 1961
    .local v15, newEv:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v16

    .line 1962
    .local v16, ret:Z
    return v16
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1646
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1660
    const/16 v3, 0x200

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1661
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    .line 1667
    :goto_0
    sget-boolean v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    if-eqz v3, :cond_2

    .line 1668
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    sget-boolean v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MINIPOPUP_CLOSE_BUTTON_HIDE:Z

    if-eqz v3, :cond_0

    .line 1669
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 1670
    sput-boolean v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    .line 1706
    :cond_0
    :goto_1
    return v2

    .line 1663
    :cond_1
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    goto :goto_0

    .line 1675
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    if-eqz v3, :cond_3

    .line 1678
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 1679
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1682
    invoke-direct {p0, v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1683
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    goto :goto_1

    .line 1688
    .end local v0           #ani:Landroid/view/animation/Animation;
    :cond_3
    iget-boolean v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-nez v3, :cond_4

    .line 1689
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureDetectorSkb:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1690
    invoke-direct {p0, v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1691
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    goto :goto_1

    .line 1697
    :cond_4
    const/4 v2, 0x0

    .line 1700
    .local v2, ret:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->processMultiTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1701
    :goto_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->hasMoreEvent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1702
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->getTouchEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 1703
    .local v1, newEv:Landroid/view/MotionEvent;
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->onSKBTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_2
.end method

.method public setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 318
    return-void
.end method

.method public setService(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 309
    return-void
.end method

.method public shiftActionHandlerForMultiTouch(Z)V
    .locals 2
    .parameter "bDown"

    .prologue
    .line 2130
    if-eqz p1, :cond_5

    .line 2132
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextLowerCaseWithSkb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextTempUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2136
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1221

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2140
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    .line 2176
    :cond_1
    :goto_1
    return-void

    .line 2138
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1121

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0

    .line 2144
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextLowerCaseWithSkb()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextTempUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2147
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1123

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2148
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    goto :goto_1

    .line 2161
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2163
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2164
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1211

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2168
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    goto :goto_1

    .line 2166
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1111

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_2

    .line 2170
    :cond_7
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1113

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2172
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    goto :goto_1
.end method

.method public startHandwriteAnimation()V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inLeft:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1010
    :cond_0
    return-void
.end method

.method public toggleCandidateMode(Z)V
    .locals 3
    .parameter "candidatesShowing"

    .prologue
    .line 394
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLastCandidatesShowing:Z

    if-ne v2, p1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v1

    .line 398
    .local v1, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    if-eqz v1, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, bRet:Z
    invoke-direct {p0, v1, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleDivstateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z

    move-result v0

    .line 403
    invoke-direct {p0, v1, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleTonestateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 404
    invoke-direct {p0, v1, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleEnterstateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 406
    if-eqz v0, :cond_0

    .line 407
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLastCandidatesShowing:Z

    .line 408
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    goto :goto_0
.end method

.method public updateInputMode()V
    .locals 4

    .prologue
    .line 415
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbLayout()I

    move-result v1

    .line 417
    .local v1, skbLayout:I
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbLayout:I

    .line 418
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateSkbLayout()V

    .line 420
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->requestLayout()V

    .line 422
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->updateXT9Status()V

    .line 424
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLastCandidatesShowing:Z

    .line 426
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v2, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v0

    .line 429
    .local v0, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    if-eqz v0, :cond_0

    .line 430
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V

    .line 431
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    .line 433
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 434
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->onInputModeChange(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    goto :goto_0
.end method

.method public updateInputMode1()V
    .locals 3

    .prologue
    .line 442
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbLayout()I

    move-result v1

    .line 443
    .local v1, skbLayout:I
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbLayout:I

    if-eq v2, v1, :cond_0

    .line 444
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbLayout:I

    .line 445
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateSkbLayout()V

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->requestLayout()V

    .line 451
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLastCandidatesShowing:Z

    .line 453
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v2, :cond_2

    .line 460
    :cond_1
    :goto_0
    return-void

    .line 455
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v0

    .line 456
    .local v0, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    if-eqz v0, :cond_1

    .line 457
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V

    .line 458
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    goto :goto_0
.end method

.method public updateInputMode2()V
    .locals 2

    .prologue
    .line 464
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v0

    .line 465
    .local v0, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    if-nez v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V

    .line 467
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    goto :goto_0
.end method

.method public updatePopupSymbolsLocation(II)V
    .locals 8
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 1230
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v1

    .line 1235
    .local v1, skbContainerWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v0

    .line 1237
    .local v0, skbContainerHeight:I
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_0

    .line 1238
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLeft()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1239
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1242
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v1, :cond_2

    .line 1248
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1251
    :cond_2
    move v2, v0

    .line 1252
    .local v2, standardHeight:I
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1253
    mul-int/lit8 v2, v0, 0x2

    .line 1256
    :cond_3
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v2, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 1259
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1262
    :cond_4
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1263
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1265
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0
.end method
