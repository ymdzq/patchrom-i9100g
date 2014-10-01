.class public Lcom/android/OriginalSettings/motion/MotionView;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "MotionView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirCallAcceptAnimationImage:[I

.field private mAirClipAnimationImage:[I

.field private mAirGlanceViewAnimationImage:[I

.field private mAirItemMoveAnimationImage:[I

.field private mAirMotionScrollAnimationImage:[I

.field private mAirNoteSwapAnimationImage:[I

.field private mAirWebNavigateAnimationImage:[I

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCameraShortCutDialog:Landroid/app/AlertDialog;

.field private mCurrentDB:Ljava/lang/String;

.field private mCurrentMotion:I

.field private mCurrentText:Ljava/lang/String;

.field private mDoubleTapToGoTopAnimationImage:[I

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mPanToBrowseImageAnimationImage:[I

.field private mPanToMoveIconAnimationImage:[I

.field private mPickUpToBeNotifiedAnimationImage:[I

.field private mPickUpToCallOutAnimationImage:[I

.field private mSensitivity:Lcom/android/OriginalSettings/motion/SensitivityPreference;

.field private mShakeToUpdateAnimationImage:[I

.field private mSurfacePalmSwipeAnimationImage:[I

.field private mSurfacePalmTouchAnimationImage:[I

.field private mSurfaceTapAndTwistAnimationImage:[I

.field private mTabletPanToBrowseImageAnimationImage:[I

.field private mTabletPanToMoveIconAnimationImage:[I

.field private mTiltToScrollListAnimationImage:[I

.field private mTiltToZoomAnimationImage:[I

.field private mTitle:Ljava/lang/String;

.field private mTurnOverToMuteAnimationImage:[I

.field private mTutorial:Landroid/preference/Preference;

.field private mUnlockCameraShortCut:[I

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 102
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 103
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 104
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    .line 107
    iput v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationIndex:I

    .line 108
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTiltToZoomAnimationImage:[I

    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTiltToScrollListAnimationImage:[I

    .line 113
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mPanToMoveIconAnimationImage:[I

    .line 114
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mPanToBrowseImageAnimationImage:[I

    .line 115
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mShakeToUpdateAnimationImage:[I

    .line 116
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mDoubleTapToGoTopAnimationImage:[I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mPickUpToBeNotifiedAnimationImage:[I

    .line 118
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTurnOverToMuteAnimationImage:[I

    .line 119
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mPickUpToCallOutAnimationImage:[I

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mUnlockCameraShortCut:[I

    .line 121
    new-array v0, v4, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTabletPanToMoveIconAnimationImage:[I

    .line 122
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTabletPanToBrowseImageAnimationImage:[I

    .line 125
    new-array v0, v3, [I

    const v1, 0x7f02049a

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSurfacePalmSwipeAnimationImage:[I

    .line 126
    new-array v0, v3, [I

    const v1, 0x7f02049a

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSurfacePalmTouchAnimationImage:[I

    .line 127
    new-array v0, v3, [I

    const v1, 0x7f02049a

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSurfaceTapAndTwistAnimationImage:[I

    .line 130
    new-array v0, v3, [I

    const v1, 0x7f02008f

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirGlanceViewAnimationImage:[I

    .line 131
    new-array v0, v3, [I

    const v1, 0x7f020021

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirWebNavigateAnimationImage:[I

    .line 132
    new-array v0, v3, [I

    const v1, 0x7f020021

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirNoteSwapAnimationImage:[I

    .line 133
    new-array v0, v3, [I

    const v1, 0x7f020020

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirMotionScrollAnimationImage:[I

    .line 134
    new-array v0, v3, [I

    const v1, 0x7f020021

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirItemMoveAnimationImage:[I

    .line 135
    new-array v0, v3, [I

    const v1, 0x7f020019

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirClipAnimationImage:[I

    .line 136
    new-array v0, v3, [I

    const v1, 0x7f020018

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirCallAcceptAnimationImage:[I

    .line 142
    new-instance v0, Lcom/android/OriginalSettings/motion/MotionView$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/motion/MotionView$1;-><init>(Lcom/android/OriginalSettings/motion/MotionView;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 111
    nop

    :array_0
    .array-data 0x4
        0x71t 0x2t 0x2t 0x7ft
        0x72t 0x2t 0x2t 0x7ft
        0x73t 0x2t 0x2t 0x7ft
    .end array-data

    .line 112
    :array_1
    .array-data 0x4
        0x8et 0x2t 0x2t 0x7ft
        0x8ft 0x2t 0x2t 0x7ft
        0x90t 0x2t 0x2t 0x7ft
        0x91t 0x2t 0x2t 0x7ft
        0x92t 0x2t 0x2t 0x7ft
    .end array-data

    .line 113
    :array_2
    .array-data 0x4
        0x6dt 0x2t 0x2t 0x7ft
        0x6et 0x2t 0x2t 0x7ft
        0x6ft 0x2t 0x2t 0x7ft
        0x70t 0x2t 0x2t 0x7ft
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0x5et 0x2t 0x2t 0x7ft
        0x5ft 0x2t 0x2t 0x7ft
        0x60t 0x2t 0x2t 0x7ft
        0x61t 0x2t 0x2t 0x7ft
        0x62t 0x2t 0x2t 0x7ft
        0x63t 0x2t 0x2t 0x7ft
        0x64t 0x2t 0x2t 0x7ft
    .end array-data

    .line 115
    :array_4
    .array-data 0x4
        0x7ct 0x2t 0x2t 0x7ft
        0x7dt 0x2t 0x2t 0x7ft
        0x7ct 0x2t 0x2t 0x7ft
        0x7dt 0x2t 0x2t 0x7ft
    .end array-data

    .line 116
    :array_5
    .array-data 0x4
        0x66t 0x2t 0x2t 0x7ft
        0x67t 0x2t 0x2t 0x7ft
        0x66t 0x2t 0x2t 0x7ft
        0x67t 0x2t 0x2t 0x7ft
    .end array-data

    .line 117
    :array_6
    .array-data 0x4
        0x77t 0x2t 0x2t 0x7ft
        0x78t 0x2t 0x2t 0x7ft
        0x79t 0x2t 0x2t 0x7ft
    .end array-data

    .line 118
    :array_7
    .array-data 0x4
        0x9bt 0x2t 0x2t 0x7ft
        0x9ct 0x2t 0x2t 0x7ft
        0x9dt 0x2t 0x2t 0x7ft
    .end array-data

    .line 119
    :array_8
    .array-data 0x4
        0x6at 0x2t 0x2t 0x7ft
        0x6bt 0x2t 0x2t 0x7ft
        0x6ct 0x2t 0x2t 0x7ft
    .end array-data

    .line 120
    :array_9
    .array-data 0x4
        0x7at 0x2t 0x2t 0x7ft
        0x7bt 0x2t 0x2t 0x7ft
    .end array-data

    .line 121
    :array_a
    .array-data 0x4
        0x89t 0x2t 0x2t 0x7ft
        0x8at 0x2t 0x2t 0x7ft
        0x8bt 0x2t 0x2t 0x7ft
        0x8ct 0x2t 0x2t 0x7ft
    .end array-data

    .line 122
    :array_b
    .array-data 0x4
        0x81t 0x2t 0x2t 0x7ft
        0x82t 0x2t 0x2t 0x7ft
        0x83t 0x2t 0x2t 0x7ft
        0x84t 0x2t 0x2t 0x7ft
        0x85t 0x2t 0x2t 0x7ft
        0x86t 0x2t 0x2t 0x7ft
        0x87t 0x2t 0x2t 0x7ft
        0x88t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/motion/MotionView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/motion/MotionView;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/motion/MotionView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->updateCheckedUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->startTryActually()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private setArguments()V
    .locals 9

    .prologue
    const v8, 0x7f090a80

    const v7, 0x7f090a7f

    const/16 v4, 0x10

    const/4 v6, -0x2

    const/4 v1, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 514
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    .line 515
    const-string v2, "sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 516
    new-instance v0, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    .line 522
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 526
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 528
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1, v1, v0, v1}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 529
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 531
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 536
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 541
    const-string v0, "MotionView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a66

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 544
    const/16 v0, 0x44d

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 545
    const-string v0, "motion_zooming"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTiltToZoomAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 547
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a86

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 687
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 688
    const-string v0, "sensitivity_category"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 689
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sensitivity_category"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSensitivity:Lcom/android/OriginalSettings/motion/SensitivityPreference;

    iget v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/motion/SensitivityPreference;->setMotion(I)V

    .line 696
    :cond_3
    return-void

    .line 549
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a67

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 550
    const/16 v0, 0x44e

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 551
    const-string v0, "motion_tilt_to_list_scrolling"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 552
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTiltToScrollListAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 553
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a87

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 555
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a69

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 556
    const/16 v0, 0x4b2

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 557
    const-string v0, "motion_pan_to_browse_image"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mPanToBrowseImageAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 559
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 560
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTabletPanToBrowseImageAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 562
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a89

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 564
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a68

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 565
    const/16 v0, 0x4b1

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 566
    const-string v0, "motion_panning"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mPanToMoveIconAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 568
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 569
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTabletPanToMoveIconAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 571
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a88

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 573
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a6a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 574
    const/16 v0, 0x515

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 575
    const-string v0, "motion_shake"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mShakeToUpdateAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 578
    const/4 v0, 0x1

    .line 580
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.kieswifi"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_1
    if-eqz v0, :cond_a

    .line 585
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a8a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 588
    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090a81

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 581
    :catch_0
    move-exception v0

    move v0, v1

    .line 582
    goto :goto_1

    .line 587
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a8b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    goto :goto_2

    .line 589
    :cond_b
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090a6b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 590
    const/16 v0, 0x579

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 591
    const-string v0, "motion_double_tap"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 592
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mDoubleTapToGoTopAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 593
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a8c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090a82

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 595
    :cond_c
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090a6c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 596
    const/16 v0, 0x5dd

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 597
    const-string v0, "motion_pick_up"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mPickUpToBeNotifiedAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 600
    const-string v0, ""

    const-string v1, "KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 602
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a8e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 606
    :goto_3
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090a83

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 605
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090a8e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090a8f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    goto :goto_3

    .line 607
    :cond_e
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090a6d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 608
    const/16 v0, 0x641

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 609
    const-string v0, "motion_overturn"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTurnOverToMuteAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 611
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a90

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090a85

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 613
    :cond_f
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090a9d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 614
    const/16 v0, 0x5de

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 615
    const-string v0, "motion_pick_up_to_call_out"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 616
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mPickUpToCallOutAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 617
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a9f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090a84

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 619
    :cond_10
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ab7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 620
    const/16 v0, 0x6a5

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 621
    const-string v0, "motion_unlock_camera_short_cut"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mUnlockCameraShortCut:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 623
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090abb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090aba

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 625
    :cond_11
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090aa4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 626
    const/16 v0, 0x709

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 627
    const-string v0, "surface_palm_swipe"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSurfacePalmSwipeAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 629
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090aab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090aaa

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 631
    :cond_12
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090aa6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 632
    const/16 v0, 0x70a

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 633
    const-string v0, "surface_palm_touch"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSurfacePalmTouchAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 635
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090aad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090aac

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 637
    :cond_13
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090aa8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 638
    const/16 v0, 0x70b

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 639
    const-string v0, "surface_tap_and_twist"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSurfaceTapAndTwistAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 641
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090aaf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090aae

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 643
    :cond_14
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ac2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 644
    const/16 v0, 0x76d

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 645
    const-string v0, "air_motion_glance_view"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirGlanceViewAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 647
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ac3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090ad6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 649
    :cond_15
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ac4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 650
    const/16 v0, 0x76e

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 651
    const-string v0, "air_motion_web_navigate"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirWebNavigateAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 653
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ac5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 654
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090ad8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 655
    :cond_16
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ac6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 656
    const/16 v0, 0x76f

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 657
    const-string v0, "air_motion_note_swap"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirNoteSwapAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 659
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ac7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090ad9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 661
    :cond_17
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ac8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 662
    const/16 v0, 0x770

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 663
    const-string v0, "air_motion_scroll"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirMotionScrollAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 665
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ac9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 666
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090ada

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 667
    :cond_18
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090acc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 668
    const/16 v0, 0x771

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 669
    const-string v0, "air_motion_item_move"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirItemMoveAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 671
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090acd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 672
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090ade

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 673
    :cond_19
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ace

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 674
    const/16 v0, 0x772

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 675
    const-string v0, "air_motion_clip"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 676
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirClipAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 677
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090acf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090ae0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 679
    :cond_1a
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ad0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    const/16 v0, 0x773

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 681
    const-string v0, "air_motion_call_accept"

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 682
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAirCallAcceptAnimationImage:[I

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    .line 683
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ad1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090ae2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0
.end method

.method private showCameraShortCutDialog()V
    .locals 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->allDialogDismiss()V

    .line 245
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090ab9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a63

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905e9

    new-instance v2, Lcom/android/OriginalSettings/motion/MotionView$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/MotionView$2;-><init>(Lcom/android/OriginalSettings/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    .line 261
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/OriginalSettings/motion/MotionView$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/motion/MotionView$3;-><init>(Lcom/android/OriginalSettings/motion/MotionView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 266
    return-void
.end method

.method private showMotionDialog()V
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->allDialogDismiss()V

    .line 272
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a9c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a9b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a9a

    new-instance v3, Lcom/android/OriginalSettings/motion/MotionView$4;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/motion/MotionView$4;-><init>(Lcom/android/OriginalSettings/motion/MotionView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09012d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 292
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/OriginalSettings/motion/MotionView$5;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/MotionView$5;-><init>(Lcom/android/OriginalSettings/motion/MotionView;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 298
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->allDialogDismiss()V

    .line 338
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a98

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a97

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905e9

    new-instance v2, Lcom/android/OriginalSettings/motion/MotionView$9;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/MotionView$9;-><init>(Lcom/android/OriginalSettings/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a99

    new-instance v2, Lcom/android/OriginalSettings/motion/MotionView$8;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/MotionView$8;-><init>(Lcom/android/OriginalSettings/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 355
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/OriginalSettings/motion/MotionView$10;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/motion/MotionView$10;-><init>(Lcom/android/OriginalSettings/motion/MotionView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 361
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    const-string v0, "MotionView"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationIndex:I

    .line 499
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->updateAnimation()V

    goto :goto_0
.end method

.method private startTryActually()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 365
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x44d

    if-ne v2, v3, :cond_1

    .line 366
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v2, "MotionTest"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v1, v5}, Lcom/android/OriginalSettings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 452
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x44e

    if-ne v2, v3, :cond_3

    .line 372
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 373
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/android/OriginalSettings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 376
    :cond_2
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 379
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x4b1

    if-ne v2, v3, :cond_4

    .line 380
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 381
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.motions.settings.panningtutorial"

    const-string v3, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v1, v5}, Lcom/android/OriginalSettings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 383
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x4b2

    if-ne v2, v3, :cond_5

    .line 384
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v2, "MotionTest"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v1, v5}, Lcom/android/OriginalSettings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 389
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x515

    if-ne v2, v3, :cond_6

    .line 397
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 398
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.OriginalSettings"

    const-string v3, "com.android.OriginalSettings.motion.ShakeTutorial"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v1, v5}, Lcom/android/OriginalSettings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 400
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x579

    if-ne v2, v3, :cond_9

    .line 401
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 402
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 403
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 404
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    :goto_2
    invoke-virtual {p0, v1, v5}, Lcom/android/OriginalSettings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 406
    :cond_7
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 409
    :cond_8
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 412
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x5dd

    if-ne v2, v3, :cond_a

    .line 413
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 414
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    invoke-virtual {p0, v1, v5}, Lcom/android/OriginalSettings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 416
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x5de

    if-ne v2, v3, :cond_b

    .line 417
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 418
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 420
    .end local v1           #intent:Landroid/content/Intent;
    :cond_b
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x6a5

    if-ne v2, v3, :cond_c

    .line 421
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 422
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.camerashortcut.CAMERASHORTCUTTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0, v1, v5}, Lcom/android/OriginalSettings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 424
    .end local v1           #intent:Landroid/content/Intent;
    :cond_c
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x641

    if-ne v2, v3, :cond_e

    .line 425
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/motion/MotionView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 426
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v6, :cond_d

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_d

    .line 427
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->showUseRingDialog()V

    goto/16 :goto_0

    .line 429
    :cond_d
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/motion/MotionView;->startTryActually(Z)V

    goto/16 :goto_0

    .line 431
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_e
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x709

    if-eq v2, v3, :cond_0

    .line 433
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x70a

    if-eq v2, v3, :cond_0

    .line 435
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x70b

    if-eq v2, v3, :cond_0

    .line 437
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x76d

    if-ne v2, v3, :cond_f

    .line 438
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto glance view try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 439
    :cond_f
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x76e

    if-ne v2, v3, :cond_10

    .line 440
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air web navigate try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 441
    :cond_10
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x76f

    if-ne v2, v3, :cond_11

    .line 442
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air note swap try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 443
    :cond_11
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x770

    if-ne v2, v3, :cond_12

    .line 444
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air scroll try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 445
    :cond_12
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x771

    if-ne v2, v3, :cond_13

    .line 446
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air item move try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 447
    :cond_13
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x772

    if-ne v2, v3, :cond_14

    .line 448
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air clip try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 449
    :cond_14
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x773

    if-ne v2, v3, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air call accept try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private startTryActually(Z)V
    .locals 3
    .parameter "useRing"

    .prologue
    .line 455
    iget v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v2, 0x641

    if-ne v1, v2, :cond_0

    .line 456
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 457
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 458
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/MotionView;->startActivity(Landroid/content/Intent;)V

    .line 461
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    const-string v0, "MotionView"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/16 v3, 0x66

    .line 465
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const-string v0, "MotionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    iget v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationIndex:I

    .line 472
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationIndex:I

    .line 474
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->stopAnimation()V

    .line 476
    iget v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 477
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 479
    :cond_3
    iget v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x579

    if-ne v0, v1, :cond_5

    .line 480
    iget v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationIndex:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 481
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 486
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateCheckedUI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 227
    .local v0, saved_value:Z
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 228
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSensitivity:Lcom/android/OriginalSettings/motion/SensitivityPreference;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/motion/SensitivityPreference;->setEnabled(Z)V

    .line 229
    return-void
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 699
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 701
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 705
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 709
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 712
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 713
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    .line 716
    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->setArguments()V

    .line 169
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 210
    const-string v0, "MotionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    packed-switch p1, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 214
    :pswitch_1
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSensitivity:Lcom/android/OriginalSettings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_0

    .line 219
    :pswitch_2
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->showGuideDialog()V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    const-string v2, "MotionView"

    const-string v3, "onCheckChanged"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x6a5

    if-ne v2, v3, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 176
    if-ne p2, v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->showCameraShortCutDialog()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSensitivity:Lcom/android/OriginalSettings/motion/SensitivityPreference;

    invoke-virtual {v0, p2}, Lcom/android/OriginalSettings/motion/SensitivityPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 181
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/MotionView;->addPreferencesFromResource(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    .line 159
    const-string v0, "sensitivity"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/motion/SensitivityPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSensitivity:Lcom/android/OriginalSettings/motion/SensitivityPreference;

    .line 160
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mSensitivity:Lcom/android/OriginalSettings/motion/SensitivityPreference;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/motion/SensitivityPreference;->setInformation(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V

    .line 161
    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I

    .line 163
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 205
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->stopAnimation()V

    .line 206
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->showGuideDialog()V

    .line 238
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 236
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->updateCheckedUI()V

    .line 192
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->updateAnimation()V

    .line 193
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 198
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 302
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->allDialogDismiss()V

    .line 306
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 307
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040051

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 308
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b0029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 309
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0b00dd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    .line 311
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 313
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 315
    const v4, 0x7f090a91

    new-instance v5, Lcom/android/OriginalSettings/motion/MotionView$6;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/motion/MotionView$6;-><init>(Lcom/android/OriginalSettings/motion/MotionView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09012d

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 327
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 328
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/OriginalSettings/motion/MotionView$7;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/motion/MotionView$7;-><init>(Lcom/android/OriginalSettings/motion/MotionView;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 333
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionView;->startAnimation()V

    .line 334
    return-void
.end method
