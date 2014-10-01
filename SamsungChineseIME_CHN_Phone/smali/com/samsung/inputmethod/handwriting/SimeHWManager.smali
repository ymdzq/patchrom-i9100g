.class public Lcom/samsung/inputmethod/handwriting/SimeHWManager;
.super Ljava/lang/Object;
.source "SimeHWManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;
    }
.end annotation


# static fields
.field private static CAND_TYPE_CHAR:I = 0x0

.field private static CAND_TYPE_PINYIN:I = 0x0

.field private static CAND_TYPE_STRING:I = 0x0

.field private static CAND_TYPE_TEXT:I = 0x0

.field private static DEBUG:Z = false

.field private static HW_GESTURE_BACKSPACE_CODE:C = '\u0000'

.field private static HW_GESTURE_CASESWITCH_CODE:C = '\u0000'

.field private static HW_GESTURE_DELETE_CODE:C = '\u0000'

.field private static HW_GESTURE_ENTER_CODE:C = '\u0000'

.field private static HW_GESTURE_SPACE_CODE:C = '\u0000'

.field private static HW_GESTURE_TAB_CODE:C = '\u0000'

.field private static HW_INVALID_CANDIDATE_CODE:C = '\u0000'

.field private static final SIMULATE_KEY_DELETE:Z = true

.field private static TAG:Ljava/lang/String;

.field private static mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

.field private static mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;


# instance fields
.field private CandType:[I

.field private CandidateResult:[C

.field private NumberOfCandidate:S

.field public mCBManager:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

.field private mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

.field private mDialog:Landroid/app/Dialog;

.field private mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

.field private mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mUIThread:Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;

.field private mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 78
    const-string v0, "SimeHWManager"

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    .line 113
    const v0, 0xffff

    sput-char v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_INVALID_CANDIDATE_CODE:C

    .line 114
    const/16 v0, 0x20

    sput-char v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_SPACE_CODE:C

    .line 115
    const/16 v0, 0xd

    sput-char v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_ENTER_CODE:C

    .line 116
    const/16 v0, 0x8

    sput-char v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_BACKSPACE_CODE:C

    .line 117
    const/16 v0, 0x1e

    sput-char v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_DELETE_CODE:C

    .line 118
    sput-char v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_CASESWITCH_CODE:C

    .line 119
    const/16 v0, 0x9

    sput-char v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_TAB_CODE:C

    .line 121
    const/4 v0, 0x1

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CAND_TYPE_PINYIN:I

    .line 122
    sput v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CAND_TYPE_CHAR:I

    .line 123
    const/4 v0, 0x3

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CAND_TYPE_STRING:I

    .line 124
    const/4 v0, 0x4

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CAND_TYPE_TEXT:I

    return-void
.end method

.method private constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/16 v0, 0xa

    iput-short v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->NumberOfCandidate:S

    .line 104
    iget-short v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->NumberOfCandidate:S

    mul-int/lit8 v0, v0, 0x21

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    .line 106
    iget-short v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->NumberOfCandidate:S

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandType:[I

    .line 131
    iput-object p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 132
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    .line 133
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDialog:Landroid/app/Dialog;

    .line 134
    new-instance v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;-><init>(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mUIThread:Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;

    .line 135
    invoke-static {p1}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mCBManager:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    .line 137
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->createHWFullScreenView()Z

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/inputmethod/handwriting/SimeHWManager;Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    return-object p1
.end method

.method public static getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/SimeHWManager;
    .locals 1
    .parameter "ime"

    .prologue
    .line 141
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    .line 144
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    return-object v0
.end method

.method public static postMessage(IJ)V
    .locals 3
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 463
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 464
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 465
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static postMessageEx(IJLjava/lang/Object;)V
    .locals 4
    .parameter "what"
    .parameter "delayMillis"
    .parameter "ob"

    .prologue
    .line 482
    :try_start_0
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 483
    .local v1, msg:Landroid/os/Message;
    iput-object p3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 484
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 485
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 492
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 487
    .restart local v1       #msg:Landroid/os/Message;
    :cond_0
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v3, "Fail to postMessageEx."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeMessage(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 473
    :try_start_0
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v2, "Fail to removeMessages."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeMessageEx(ILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "ob"

    .prologue
    .line 496
    :try_start_0
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v2, "Fail to removeMessageEx."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setHWRect(Z)V
    .locals 6
    .parameter "isFullScreen"

    .prologue
    .line 291
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v0

    .line 292
    .local v0, dims:I
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 293
    .local v2, isLandscape:Z
    :goto_0
    if-eqz p1, :cond_1

    .line 295
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    .line 296
    .local v3, width:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v1

    .line 303
    .local v1, height:I
    :goto_1
    int-to-float v4, v0

    const/high16 v5, 0x4020

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v1, v4}, Lcom/samsung/inputmethod/SimeDecoderService;->hwSetRect(III)I

    .line 304
    return-void

    .line 292
    .end local v1           #height:I
    .end local v2           #isLandscape:Z
    .end local v3           #width:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 300
    .restart local v2       #isLandscape:Z
    :cond_1
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v4, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->GetHWBoxWidth(Z)I

    move-result v3

    .line 301
    .restart local v3       #width:I
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v4, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->GetHWBoxHeight(Z)I

    move-result v1

    .restart local v1       #height:I
    goto :goto_1
.end method


# virtual methods
.method public StartTorecognize()V
    .locals 7

    .prologue
    .line 668
    sget-boolean v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v5, "StartTorecognize"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    const/4 v4, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 670
    .local v2, pointer_end:[I
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    invoke-virtual {v4, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->addPointer([I)V

    .line 672
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getPointer()[I

    move-result-object v0

    .line 673
    .local v0, data:[I
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    int-to-short v1, v4

    .line 678
    .local v1, num:S
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 680
    sget-boolean v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 681
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v5, "SimeHWManager.StartTorecognize() reset the CandidateResult[] when start to recognize"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteRecgType()I

    move-result v3

    .line 690
    .local v3, recgType:I
    packed-switch v3, :pswitch_data_0

    .line 729
    :goto_0
    return-void

    .line 692
    :pswitch_0
    iget-short v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->NumberOfCandidate:S

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandType:[I

    iget-object v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    invoke-static {v0, v1, v4, v5, v6}, Lcom/samsung/inputmethod/SimeDecoderService;->hwRecogChar([III[I[C)I

    goto :goto_0

    .line 695
    :pswitch_1
    iget-short v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->NumberOfCandidate:S

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandType:[I

    iget-object v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    invoke-static {v0, v1, v4, v5, v6}, Lcom/samsung/inputmethod/SimeDecoderService;->hwRecogString([III[I[C)I

    goto :goto_0

    .line 703
    :pswitch_2
    iget-short v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->NumberOfCandidate:S

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandType:[I

    iget-object v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    invoke-static {v0, v1, v4, v5, v6}, Lcom/samsung/inputmethod/SimeDecoderService;->hwRecogText([III[I[C)I

    goto :goto_0

    .line 669
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data

    .line 690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public UpdateHandWriteLanguage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 308
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHKTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 314
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_HK:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTWTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 316
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_3

    .line 317
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 319
    :cond_3
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_TW:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V

    goto :goto_0

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 321
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_5

    .line 322
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 324
    :cond_5
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V

    goto :goto_0

    .line 326
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 327
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_7

    .line 328
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 330
    :cond_7
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->ENG:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V

    goto :goto_0

    .line 332
    :cond_8
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_9

    .line 334
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 336
    :cond_9
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->KOR:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V

    goto :goto_0
.end method

.method public cancelMiniPopupWindow()V
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 1114
    return-void
.end method

.method public cancelRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 753
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->removeMessageEx(ILjava/lang/Object;)V

    .line 754
    return-void
.end method

.method public createHWFullScreenView()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 148
    sget-boolean v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v2, "createHandwriteView."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->dismiss()V

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    .line 154
    :cond_1
    new-instance v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    .line 155
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    if-nez v1, :cond_3

    .line 166
    :cond_2
    :goto_0
    return v0

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 159
    new-instance v1, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    .line 160
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    if-eqz v1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->setService(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    .line 164
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->setListenView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->setContentView(Landroid/view/View;)V

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getHWCandidateResult(I)Ljava/lang/String;
    .locals 3
    .parameter "i"

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->isSefDefCode(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getStringByCode(C)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, str:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 736
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v1, v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mUIThread:Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;

    return-object v0
.end method

.method public getIMEService()Lcom/samsung/inputmethod/SamsungIME;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method public getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    return-object v0
.end method

.method public initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V
    .locals 3
    .parameter "forceInit"
    .parameter "language"

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->isHandwriteInit()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 180
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_HK:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p2, v0, :cond_2

    .line 182
    const v0, 0xe0ff

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getConvert()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p2, v0, v2, v1}, Lcom/samsung/inputmethod/SimeDecoderService;->hwInitEngine(Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;CCI)V

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_TW:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p2, v0, :cond_3

    .line 186
    const v0, 0xc0ff

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getConvert()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p2, v0, v2, v1}, Lcom/samsung/inputmethod/SimeDecoderService;->hwInitEngine(Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;CCI)V

    goto :goto_0

    .line 190
    :cond_3
    const/16 v0, 0x6ff

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getConvert()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p2, v0, v2, v1}, Lcom/samsung/inputmethod/SimeDecoderService;->hwInitEngine(Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;CCI)V

    goto :goto_0
.end method

.method public isHandwriteInputMode()Z
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 539
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    goto :goto_0
.end method

.method public isLandscapeFullScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 544
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    if-nez v1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->dismiss()V

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    .line 746
    :cond_0
    return-void
.end method

.method public onInputModeChange(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 4
    .parameter "inputModeSwitcher"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    sget-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v1, "onInputModeChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->setInputMode(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 248
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_3

    .line 251
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWBoxView(Z)V

    .line 253
    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWFullScreenView(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->UpdateHandWriteLanguage()V

    .line 255
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->updateHWRangeAndBoxTitle(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 256
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->setHWFullScreenMode()V

    .line 257
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->setHWRect(Z)V

    .line 258
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mCBManager:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->setBeautifyLineStyle()I

    .line 259
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->updateSetting()V

    goto :goto_0

    .line 261
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteBoxMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v0, :cond_5

    .line 264
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWFullScreenView(Z)V

    .line 266
    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWBoxView(Z)V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->UpdateHandWriteLanguage()V

    .line 268
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->updateHWRangeAndBoxTitle(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 269
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->setHWBoxMode()V

    .line 270
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->setHWRect(Z)V

    .line 271
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mCBManager:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->setBeautifyLineStyle()I

    .line 272
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->updateSetting()V

    goto :goto_0

    .line 277
    :cond_6
    sget-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v1, "onInputModeChange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_7
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v0, :cond_8

    .line 279
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWFullScreenView(Z)V

    .line 281
    :cond_8
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWBoxView(Z)V

    goto :goto_0
.end method

.method public pickDefaultCandidate()V
    .locals 4

    .prologue
    .line 655
    sget-boolean v2, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v3, "pickDefaultCandidate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    .line 657
    .local v1, imestate:Lcom/samsung/inputmethod/SamsungIME$ImeState;
    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_2

    .line 660
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 661
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 662
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 665
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    return-void
.end method

.method public releaseInstance()V
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->onDestroy()V

    .line 506
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    .line 508
    :cond_0
    return-void
.end method

.method public setHWBoxMode()V
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    .line 240
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setService(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V

    .line 241
    return-void
.end method

.method public setHWFullScreenMode()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    .line 235
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->setService(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V

    .line 236
    return-void
.end method

.method public setInputMode(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 550
    return-void
.end method

.method public showHWBoxView(Z)V
    .locals 11
    .parameter "isShown"

    .prologue
    const/4 v4, 0x0

    const/16 v10, 0x8

    const/16 v9, 0xa

    const/4 v8, 0x5

    const/4 v7, 0x3

    .line 381
    sget-boolean v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showHWBoxView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    if-nez v3, :cond_1

    .line 456
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    const/4 v1, 0x1

    .line 385
    .local v1, isLandscape:Z
    :goto_1
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 390
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    const v5, 0x7f0c003e

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    sput-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    .line 391
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 394
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 395
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_5

    .line 396
    if-eqz v1, :cond_4

    .line 397
    const/16 v3, 0x64

    invoke-virtual {v2, v10, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 447
    :cond_2
    :goto_2
    sget-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    if-eqz p1, :cond_13

    .line 450
    sget-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setVisibility(I)V

    goto :goto_0

    .end local v0           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v1           #isLandscape:Z
    .end local v2           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    move v1, v4

    .line 384
    goto :goto_1

    .line 399
    .restart local v0       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .restart local v1       #isLandscape:Z
    .restart local v2       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/16 v3, 0x64

    invoke-virtual {v2, v10, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 401
    :cond_5
    if-eqz v1, :cond_6

    .line 402
    const/16 v3, 0x6c

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 404
    :cond_6
    const/16 v3, 0x8a

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 406
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 407
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v3, :cond_b

    .line 408
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_9

    .line 409
    if-eqz v1, :cond_8

    .line 410
    const/16 v3, 0x6e

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 412
    :cond_8
    const/16 v3, 0x6e

    invoke-virtual {v2, v10, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 414
    :cond_9
    if-eqz v1, :cond_a

    .line 415
    const/16 v3, 0x64

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 417
    :cond_a
    const/16 v3, 0x78

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 420
    :cond_b
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_d

    .line 421
    if-eqz v1, :cond_c

    .line 422
    const/16 v3, 0x5a

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 424
    :cond_c
    const/16 v3, 0x5a

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 426
    :cond_d
    if-eqz v1, :cond_e

    .line 427
    const/16 v3, 0x5a

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 429
    :cond_e
    const/16 v3, 0x6e

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 433
    :cond_f
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_11

    .line 435
    if-eqz v1, :cond_10

    .line 436
    const/16 v3, 0x3c

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 438
    :cond_10
    const/16 v3, 0x3c

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 440
    :cond_11
    if-eqz v1, :cond_12

    .line 441
    const/16 v3, 0x46

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 443
    :cond_12
    const/16 v3, 0x50

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 453
    :cond_13
    invoke-static {v4}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->removeMessage(I)V

    .line 454
    sget-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v3, v10}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public showHWFullScreenView(Z)V
    .locals 3
    .parameter "isShown"

    .prologue
    .line 355
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-nez v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->createHWFullScreenView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    sget-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHWFullScreenView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_2
    if-eqz p1, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->updateToken()V

    .line 366
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->show()V

    goto :goto_0

    .line 371
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->removeMessage(I)V

    .line 372
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->hide()V

    goto :goto_0
.end method

.method public showHWView(Z)V
    .locals 1
    .parameter "isShown"

    .prologue
    .line 343
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWFullScreenView(Z)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWBoxView(Z)V

    goto :goto_0
.end method

.method public startRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;I)V
    .locals 3
    .parameter "client"
    .parameter "speed"

    .prologue
    .line 749
    const/4 v0, 0x1

    int-to-long v1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    .line 750
    return-void
.end method

.method public updateHWCandidates()Z
    .locals 7

    .prologue
    const v6, 0xffff

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 553
    const-string v0, ""

    .line 555
    .local v0, Str:Ljava/lang/String;
    sget-boolean v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v5, "updateHWCandidates"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->reset()V

    .line 580
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v4, v4, v3

    if-nez v4, :cond_1

    .line 651
    :goto_0
    return v3

    .line 582
    :cond_1
    sget-char v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_ENTER_CODE:C

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v4, v4, v2

    if-ne v6, v4, :cond_2

    .line 583
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->reset()V

    .line 584
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v4, 0x42

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->processHWGestureKey(I)V

    goto :goto_0

    .line 586
    :cond_2
    sget-char v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_SPACE_CODE:C

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_3

    const/16 v4, 0x5e

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v4, v4, v2

    if-ne v6, v4, :cond_4

    .line 588
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->reset()V

    .line 589
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->processHWGestureKey(I)V

    goto :goto_0

    .line 591
    :cond_4
    sget-char v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_BACKSPACE_CODE:C

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_5

    sget-char v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_DELETE_CODE:C

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v4, v4, v2

    if-ne v6, v4, :cond_6

    .line 593
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->reset()V

    .line 594
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v4, 0x43

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->processHWGestureKey(I)V

    goto :goto_0

    .line 597
    :cond_6
    sget-char v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_CASESWITCH_CODE:C

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_7

    sget-char v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_GESTURE_TAB_CODE:C

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v4, v4, v2

    if-ne v6, v4, :cond_8

    .line 599
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->pickDefaultCandidate()V

    .line 600
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->reset()V

    .line 601
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_0

    .line 612
    :cond_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    array-length v4, v4

    if-ge v1, v4, :cond_e

    .line 613
    sget-boolean v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHWCandidates i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_9
    sget-boolean v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v4, :cond_a

    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHWCandidates CandidateResult[i]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_a
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v4, v4, v1

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_b

    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v4, v4, v1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b

    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v4, v4, v1

    const/16 v5, 0xd

    if-eq v4, v5, :cond_b

    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v4, v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 621
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 612
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 626
    :cond_c
    sget-char v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->HW_INVALID_CANDIDATE_CODE:C

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v5, v5, v1

    if-ne v4, v5, :cond_d

    .line 627
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4, v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->add(Ljava/lang/String;)V

    .line 628
    const-string v0, ""

    .line 629
    goto :goto_2

    .line 639
    :cond_d
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->CandidateResult:[C

    aget-char v4, v4, v1

    if-nez v4, :cond_f

    .line 646
    :cond_e
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4, v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V

    .line 648
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->pickDefaultCandidate()V

    .line 650
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 651
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v4

    if-lez v4, :cond_10

    :goto_3
    move v3, v2

    goto/16 :goto_0

    .line 643
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHWCandidateResult(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_10
    move v2, v3

    .line 651
    goto :goto_3
.end method

.method public updateHWRangeAndBoxTitle(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 12
    .parameter "inputModeSwitcher"

    .prologue
    const/high16 v11, 0x5

    const/high16 v10, 0x4

    const/high16 v9, 0x3

    const/high16 v8, 0x1

    .line 757
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v5

    const/high16 v6, 0xf00

    and-int v1, v5, v6

    .line 758
    .local v1, layout:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v5

    and-int/lit16 v4, v5, 0xf00

    .line 759
    .local v4, regType:I
    sget-boolean v5, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateHWRangeAndBoxTitle regType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v5

    const/high16 v6, 0xf

    and-int v0, v5, v6

    .line 793
    .local v0, language:I
    const-string v2, "zh_CN"

    .line 794
    .local v2, locale:Ljava/lang/String;
    const/16 v3, 0x6ff

    .line 796
    .local v3, range:C
    sparse-switch v1, :sswitch_data_0

    .line 948
    const/16 v3, 0x600

    .line 949
    const-string v2, "zh_CN"

    .line 951
    :goto_0
    invoke-static {v3, v2}, Lcom/samsung/inputmethod/SimeDecoderService;->hwSetRange(CLjava/lang/String;)I

    .line 952
    :cond_1
    return-void

    .line 800
    :sswitch_0
    const/high16 v5, 0x300

    if-ne v1, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    if-eqz v5, :cond_1

    .line 804
    :cond_2
    const/high16 v5, 0x400

    if-ne v1, v5, :cond_3

    sget-object v5, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    if-eqz v5, :cond_1

    .line 809
    :cond_3
    sparse-switch v4, :sswitch_data_1

    goto :goto_0

    .line 811
    :sswitch_1
    if-ne v0, v9, :cond_4

    .line 812
    const/16 v3, 0x437

    .line 813
    const-string v2, "ko"

    goto :goto_0

    .line 814
    :cond_4
    if-ne v0, v8, :cond_5

    .line 815
    const/16 v3, 0xf7

    .line 816
    const-string v2, "en"

    goto :goto_0

    .line 819
    :cond_5
    if-ne v0, v11, :cond_6

    .line 824
    const v3, 0xe6ff

    .line 825
    const-string v2, "zh_HK"

    goto :goto_0

    .line 826
    :cond_6
    if-ne v0, v10, :cond_7

    .line 831
    const v3, 0xc6ff

    .line 832
    const-string v2, "zh_TW"

    goto :goto_0

    .line 840
    :cond_7
    const/16 v3, 0x46ff

    .line 841
    const-string v2, "zh_CN"

    .line 843
    goto :goto_0

    .line 845
    :sswitch_2
    if-ne v0, v9, :cond_8

    .line 846
    const/4 v3, 0x3

    .line 847
    const-string v2, "ko"

    goto :goto_0

    .line 848
    :cond_8
    if-ne v0, v8, :cond_9

    .line 849
    const/16 v3, 0xc3

    .line 850
    const-string v2, "en"

    goto :goto_0

    .line 854
    :cond_9
    if-ne v0, v11, :cond_a

    .line 855
    const/16 v3, 0xc3

    .line 856
    const-string v2, "zh_HK"

    goto :goto_0

    .line 857
    :cond_a
    if-ne v0, v10, :cond_b

    .line 858
    const/16 v3, 0xc3

    .line 859
    const-string v2, "zh_TW"

    goto :goto_0

    .line 864
    :cond_b
    const/4 v3, 0x3

    .line 865
    const-string v2, "zh_CN"

    .line 867
    goto :goto_0

    .line 869
    :sswitch_3
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v5, :cond_c

    .line 870
    sget-object v5, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 872
    :cond_c
    const/4 v3, 0x4

    .line 873
    if-ne v0, v9, :cond_d

    .line 874
    const/4 v3, 0x4

    .line 875
    const-string v2, "ko"

    goto :goto_0

    .line 876
    :cond_d
    if-ne v0, v8, :cond_e

    .line 877
    const/4 v3, 0x4

    .line 878
    const-string v2, "en"

    goto :goto_0

    .line 882
    :cond_e
    if-ne v0, v11, :cond_f

    .line 883
    const/4 v3, 0x4

    .line 884
    const-string v2, "zh_HK"

    goto :goto_0

    .line 885
    :cond_f
    if-ne v0, v10, :cond_10

    .line 886
    const/4 v3, 0x4

    .line 887
    const-string v2, "zh_TW"

    goto :goto_0

    .line 891
    :cond_10
    const/4 v3, 0x4

    .line 892
    const-string v2, "zh_CN"

    .line 894
    goto :goto_0

    .line 896
    :sswitch_4
    const/16 v3, 0x2000

    .line 897
    const-string v2, "zh_CN"

    .line 898
    goto/16 :goto_0

    .line 900
    :sswitch_5
    if-ne v0, v9, :cond_11

    .line 901
    const/16 v3, 0x10

    .line 902
    const-string v2, "ko"

    goto/16 :goto_0

    .line 903
    :cond_11
    if-ne v0, v8, :cond_12

    .line 904
    const/16 v3, 0x10

    .line 905
    const-string v2, "en"

    goto/16 :goto_0

    .line 907
    :cond_12
    const/16 v3, 0x78

    .line 908
    const-string v2, "zh_CN"

    .line 910
    goto/16 :goto_0

    .line 912
    :sswitch_6
    if-ne v0, v9, :cond_13

    .line 913
    const/16 v3, 0x400

    .line 914
    const-string v2, "ko"

    goto/16 :goto_0

    .line 915
    :cond_13
    if-ne v0, v8, :cond_14

    .line 916
    const/16 v3, 0xc3

    .line 917
    const-string v2, "en"

    goto/16 :goto_0

    .line 920
    :cond_14
    if-ne v0, v11, :cond_15

    .line 925
    const v3, 0xe600

    .line 926
    const-string v2, "zh_HK"

    goto/16 :goto_0

    .line 927
    :cond_15
    if-ne v0, v10, :cond_16

    .line 932
    const v3, 0xc600

    .line 933
    const-string v2, "zh_TW"

    goto/16 :goto_0

    .line 941
    :cond_16
    const/16 v3, 0x4600

    .line 942
    const-string v2, "zh_CN"

    goto/16 :goto_0

    .line 796
    :sswitch_data_0
    .sparse-switch
        0x3000000 -> :sswitch_0
        0x4000000 -> :sswitch_0
    .end sparse-switch

    .line 809
    :sswitch_data_1
    .sparse-switch
        0x100 -> :sswitch_1
        0x200 -> :sswitch_4
        0x300 -> :sswitch_6
        0x400 -> :sswitch_3
        0x500 -> :sswitch_5
        0x600 -> :sswitch_2
    .end sparse-switch
.end method

.method public updateToken()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->setToken(Landroid/os/IBinder;)V

    .line 174
    :cond_0
    return-void
.end method
