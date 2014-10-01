.class public Lcom/samsung/inputmethod/SamsungIME;
.super Landroid/inputmethodservice/InputMethodService;
.source "SamsungIME.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/SamsungIME$ImeState;,
        Lcom/samsung/inputmethod/SamsungIME$SamsungDecoderServiceConnection;,
        Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;,
        Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;
    }
.end annotation


# static fields
.field private static final ACTION_NEW_INCOMING_CALL:Ljava/lang/String; = "com.android.phone.ACTION_NEW_INCOMING_CALL"

.field public static final ACTION_REQUEST_LANGUAGE_INFO:Ljava/lang/String; = "com.samsung.inputmethod.RequestLanguageInfo"

.field private static final CONTEXT_MENU_ACTION:Ljava/lang/String; = "android.widget.TextView.onCreateContextMenu"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_LANGUAGE:Ljava/lang/String; = "defaultLanguage"

.field public static final FOLDER_STATE_ACTION:Ljava/lang/String; = "KeyEvent.FolderOpenState"

.field private static final IME_HIDE_ACTION:Ljava/lang/String; = "samsungimehideview"

.field private static final IME_SELECT_ACTION:Ljava/lang/String; = "java.com.android.server.InputMethodService.hideInputMethodMenu"

.field private static final IMM_PRIV_COMMAND_DOUBLETAP:Ljava/lang/String; = "com.swype.android.inputmethod/cmd_doubletap"

.field private static final IMM_PRIV_COMMAND_TAP:Ljava/lang/String; = "com.swype.android.inputmethod/cmd_tap"

.field private static final MSG_DELAY_COMMIT_COMPOSING:I = 0x0

.field private static NOTIFICATION_HEIGHT:I = 0x0

.field private static final PRIV_COMMAND_HIDE_CURSORCONTROL:Ljava/lang/String; = "com.samsung.inputmethod/cmd_hide_cursorcontrol"

.field private static final PRIV_COMMAND_HIDE_IM_PICKER:Ljava/lang/String; = "com.samsung.inputmethod/hide_im_picker"

.field private static final PRIV_COMMAND_SHOW_CURSORCONTROL:Ljava/lang/String; = "com.samsung.inputmethod/cmd_show_cursorcontrol"

.field private static final PRIV_COMMAND_SHOW_IM_PICKER:Ljava/lang/String; = "com.samsung.inputmethod/show_im_picker"

.field private static final PROJECTION_PHONE:[Ljava/lang/String; = null

.field private static final SAMSUNGIME_PRIV_COMMAND_DOUBLETAP:Ljava/lang/String; = "com.samsung.inputmethod/cmd_doubletap"

.field private static final SAMSUNGIME_PRIV_COMMAND_TAP:Ljava/lang/String; = "com.samsung.inputmethod/cmd_tap"

.field public static final SELECTED_LANGAUGE_LIST:Ljava/lang/String; = "selectedLanguageList"

.field private static final SHOW_CLIPBOARD:Ljava/lang/String; = "ShowClipboard"

.field private static final SHOW_CLIPBOARD_DIALOG:Ljava/lang/String; = "ShowClipboardDialog"

.field public static final SHOW_TUTORIAL_DIALOG:I = 0x0

.field private static final SPAN_UNDERLINE:Landroid/text/style/CharacterStyle; = null

.field private static final TAG:Ljava/lang/String; = "SamsungIME"

.field private static final XT9_INPUTMODE_BPMF:I = 0x0

.field private static final XT9_INPUTMODE_CANGJIE:I = 0x3

.field private static final XT9_INPUTMODE_ENG_HPD:I = 0x7

.field private static final XT9_INPUTMODE_ENG_HQD:I = 0x6

.field private static final XT9_INPUTMODE_ENG_HQR:I = 0x5

.field private static final XT9_INPUTMODE_PINYIN:I = 0x1

.field private static final XT9_INPUTMODE_QUICK_CANGJIE:I = 0x4

.field private static final XT9_INPUTMODE_STROKE:I = 0x2

.field private static final XT9_KEYBOARD_TYPE_34:Z = true

.field private static final XT9_KEYBOARD_TYPE_QWERTY:Z

.field private static final bCharacterUseDefaultStyle:Z

.field public static isFolderOpen:Z

.field private static mDocKeyboardConnected:Z

.field private static mInstance:Lcom/samsung/inputmethod/SamsungIME;


# instance fields
.field public final BTKEYBOARD_ACTION_STATE_CHANGED:Ljava/lang/String;

.field public final BTKEYBOARD_EXTRA_STATE:Ljava/lang/String;

.field public final BTKEYBOARD_STATE_CONNECTED:I

.field public final BTKEYBOARD_STATE_CONNECTING:I

.field public final BTKEYBOARD_STATE_DISCONNECTED:I

.field public final BTKEYBOARD_STATE_DISCONNECTING:I

.field private EMAIL_FILTER_URI:Landroid/net/Uri;

.field public final HWKEYBOARD_CONNECTED:I

.field public final HWKEYBOARD_DISCONNECTED:I

.field public final KEYBOARD_BT:I

.field public final KEYBOARD_DOCK:I

.field public final KEYBOARD_UNDEFINED:I

.field public final KEYBOARD_USB:I

.field private bKeyChangedStateToToolbar:Z

.field private composingStringInEdit:Landroid/text/SpannableStringBuilder;

.field private isConfigureChange:Z

.field private isGetOcrString:Z

.field private isLongKey:Z

.field private isSelectedText:Z

.field private mCandId:I

.field private mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field private mChooseInputModeDialog:Landroid/app/AlertDialog;

.field private mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

.field private mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

.field private mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

.field private mContactDataCount:I

.field private mContactInfoDialog:Landroid/app/AlertDialog;

.field private mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

.field private mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

.field private mDelUDBDialog:Landroid/app/AlertDialog;

.field private mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

.field private mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mInputView:Landroid/view/View;

.field private mIntentReceiver:Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;

.field private mIsCandidatesViewShown:Z

.field private mIsFloatingKeyboardForMultiWindow:Z

.field private mKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

.field private mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

.field private mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

.field private mLongPressed:Z

.field private mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

.field private mMultiModalManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

.field private mOcrSIPTextReceiver:Landroid/content/BroadcastReceiver;

.field private mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mProcessedDownKeySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungDecoderServiceConnection:Lcom/samsung/inputmethod/SamsungIME$SamsungDecoderServiceConnection;

.field private mSelectedContact:I

.field private mShowTutorial:Z

.field private mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

.field private mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

.field private mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

.field public mStringfromOcr:Ljava/lang/String;

.field private mTutorialDialog:Landroid/app/AlertDialog;

.field mTutorialHandler:Landroid/os/Handler;

.field private mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

.field private myToast:Lcom/samsung/inputmethod/comm/SimeToast;

.field private selectedText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 153
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    .line 392
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 435
    sput-boolean v3, Lcom/samsung/inputmethod/SamsungIME;->isFolderOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 155
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    .line 166
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange:Z

    .line 172
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mShowTutorial:Z

    .line 180
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->bKeyChangedStateToToolbar:Z

    .line 199
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->isLongKey:Z

    .line 201
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    .line 221
    const-string v0, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->BTKEYBOARD_ACTION_STATE_CHANGED:Ljava/lang/String;

    .line 223
    const-string v0, "android.bluetooth.profile.extra.STATE"

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->BTKEYBOARD_EXTRA_STATE:Ljava/lang/String;

    .line 225
    iput v1, p0, Lcom/samsung/inputmethod/SamsungIME;->BTKEYBOARD_STATE_DISCONNECTED:I

    .line 227
    iput v2, p0, Lcom/samsung/inputmethod/SamsungIME;->BTKEYBOARD_STATE_CONNECTING:I

    .line 229
    iput v3, p0, Lcom/samsung/inputmethod/SamsungIME;->BTKEYBOARD_STATE_CONNECTED:I

    .line 231
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/inputmethod/SamsungIME;->BTKEYBOARD_STATE_DISCONNECTING:I

    .line 233
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/inputmethod/SamsungIME;->HWKEYBOARD_CONNECTED:I

    .line 235
    iput v1, p0, Lcom/samsung/inputmethod/SamsungIME;->HWKEYBOARD_DISCONNECTED:I

    .line 237
    iput v1, p0, Lcom/samsung/inputmethod/SamsungIME;->KEYBOARD_UNDEFINED:I

    .line 239
    iput v2, p0, Lcom/samsung/inputmethod/SamsungIME;->KEYBOARD_DOCK:I

    .line 241
    iput v3, p0, Lcom/samsung/inputmethod/SamsungIME;->KEYBOARD_BT:I

    .line 243
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/inputmethod/SamsungIME;->KEYBOARD_USB:I

    .line 355
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 357
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsFloatingKeyboardForMultiWindow:Z

    .line 364
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    .line 383
    const-string v0, "content://com.android.contacts/data/emails/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->EMAIL_FILTER_URI:Landroid/net/Uri;

    .line 404
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    .line 405
    iput v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactDataCount:I

    .line 406
    iput v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSelectedContact:I

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandId:I

    .line 410
    iput-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mStringfromOcr:Ljava/lang/String;

    .line 411
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->isGetOcrString:Z

    .line 412
    iput-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->selectedText:Ljava/lang/CharSequence;

    .line 413
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->isSelectedText:Z

    .line 685
    new-instance v0, Lcom/samsung/inputmethod/SamsungIME$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/SamsungIME$1;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialHandler:Landroid/os/Handler;

    .line 4821
    new-instance v0, Lcom/samsung/inputmethod/SamsungIME$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/SamsungIME$2;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOcrSIPTextReceiver:Landroid/content/BroadcastReceiver;

    .line 7152
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/decoder/SimeDecManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/SimeHWManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/SamsungIME;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->settingHWKeyboardConnection(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/SamsungIME;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->isBTPeripheralConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/SamsungIME;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->launchTutorial()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/SamsungIME;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->launchSettings()V

    return-void
.end method

.method private bNeedShowTutorial()Z
    .locals 1

    .prologue
    .line 6220
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mShowTutorial:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getShowToturial()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSingleKeypadType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeToStateCommitSelection(Z)V
    .locals 2
    .parameter "updateUi"

    .prologue
    .line 3723
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 3725
    if-nez p1, :cond_1

    .line 3730
    :cond_0
    :goto_0
    return-void

    .line 3727
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3728
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    goto :goto_0
.end method

.method private changeToStateComposing(Z)V
    .locals 2
    .parameter "updateUi"

    .prologue
    .line 3734
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 3736
    if-nez p1, :cond_1

    .line 3741
    :cond_0
    :goto_0
    return-void

    .line 3738
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3739
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    goto :goto_0
.end method

.method private changeToToolBarMode()Z
    .locals 2

    .prologue
    .line 7222
    const/4 v0, 0x0

    .line 7224
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7225
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 7227
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToToolBarSKB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 7228
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7230
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->requestShowSelf()V

    .line 7238
    :goto_0
    const/4 v0, 0x1

    .line 7242
    :cond_0
    return v0

    .line 7234
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0
.end method

.method private checkTutorial()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6315
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->bNeedShowTutorial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6319
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SHOW_TUTORIAL_BY_ACTIVITY:Z

    if-eqz v0, :cond_1

    .line 6320
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->launchTutorial()V

    .line 6325
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mShowTutorial:Z

    .line 6327
    :cond_0
    return-void

    .line 6322
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6323
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private chooseContactCandidate(I)V
    .locals 3
    .parameter "candId"

    .prologue
    .line 4283
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->name:Ljava/lang/String;

    .line 4286
    .local v0, choice:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9English()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4289
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 4291
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 4293
    return-void
.end method

.method private chooseHWCandidate(I)V
    .locals 7
    .parameter "candId"

    .prologue
    const/4 v6, 0x0

    .line 6515
    const/4 v0, 0x0

    .line 6516
    .local v0, composingLength:I
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    .line 6517
    .local v1, composingStr:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 6555
    :cond_0
    :goto_0
    return-void

    .line 6518
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 6523
    if-lez v0, :cond_6

    .line 6524
    if-gez p1, :cond_3

    .line 6525
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 6526
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 6535
    :goto_1
    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v4, v5, :cond_0

    .line 6536
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v4

    if-nez v4, :cond_5

    .line 6537
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 6538
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_2

    .line 6539
    const/4 v4, 0x3

    invoke-interface {v3, v4, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 6540
    .local v2, cs:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 6541
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->preparePredicts(Ljava/lang/CharSequence;Z)V

    .line 6545
    .end local v2           #cs:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_0

    .line 6528
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 6529
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHFSEnglish()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6530
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 6532
    :cond_4
    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    goto :goto_1

    .line 6548
    :cond_5
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0

    .line 6553
    :cond_6
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0
.end method

.method private chooseT9AWcandidate(I)V
    .locals 7
    .parameter "candId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 6809
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getComposingStr()Ljava/lang/String;

    move-result-object v2

    .line 6810
    .local v2, composingStr:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 6858
    :cond_0
    :goto_0
    return-void

    .line 6811
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 6816
    .local v1, composingLength:I
    if-ltz p1, :cond_5

    .line 6817
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v4

    if-lt p1, v4, :cond_3

    .line 6819
    :cond_2
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0

    .line 6822
    :cond_3
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 6823
    .local v0, choice:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9On()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6824
    if-eqz v0, :cond_4

    .line 6825
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 6826
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->needAutoSpace()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6827
    const-string v0, " "

    .line 6828
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 6842
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->prepareCandidatesList()V

    .line 6843
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 6844
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_0

    .line 6848
    .end local v0           #choice:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 6849
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 6850
    invoke-virtual {p0, v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 6851
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 6852
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_0

    .line 6854
    :cond_6
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0
.end method

.method private chooseT9Candidate(I)V
    .locals 10
    .parameter "candId"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 6558
    const/4 v0, 0x0

    .line 6559
    .local v0, composingLength:I
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    .line 6560
    .local v1, composingStr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 6594
    if-ltz p1, :cond_9

    .line 6596
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v7, :cond_5

    .line 6597
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->isFinishSelection()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6599
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getRefinedSpell()Ljava/lang/String;

    move-result-object v4

    .line 6600
    .local v4, refined:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 6601
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 6603
    :cond_0
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 6626
    .end local v4           #refined:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v7, :cond_3

    .line 6627
    if-nez v0, :cond_2

    .line 6629
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 6631
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 6632
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_3

    .line 6633
    const/4 v6, 0x3

    invoke-interface {v3, v6, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 6634
    .local v2, cs:Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    .line 6635
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v7, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v7

    invoke-virtual {v6, v2, v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->preparePredicts(Ljava/lang/CharSequence;Z)V

    .line 6640
    .end local v2           #cs:Ljava/lang/CharSequence;
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 6641
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 6680
    :goto_1
    return-void

    .line 6606
    :cond_4
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateCommitSelection(Z)V

    goto :goto_0

    .line 6609
    :cond_5
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v7, :cond_7

    .line 6610
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->isFinishSelection()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6612
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getRefinedSpell()Ljava/lang/String;

    move-result-object v4

    .line 6613
    .restart local v4       #refined:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    .line 6614
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 6616
    :cond_6
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    goto :goto_0

    .line 6620
    .end local v4           #refined:Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v7, :cond_1

    .line 6621
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v5

    .line 6622
    .local v5, selectCand:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 6623
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_0

    .line 6643
    .end local v5           #selectCand:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 6651
    :cond_9
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v7, :cond_c

    .line 6652
    if-lez v0, :cond_b

    .line 6653
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 6654
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 6655
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_1

    .line 6657
    :cond_a
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 6660
    :cond_b
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 6662
    :cond_c
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v7, :cond_f

    .line 6663
    if-lez v0, :cond_e

    .line 6664
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 6665
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_1

    .line 6667
    :cond_d
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 6670
    :cond_e
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 6673
    :cond_f
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v6, v6, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v6

    if-gtz v6, :cond_10

    .line 6674
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_1

    .line 6676
    :cond_10
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto/16 :goto_1
.end method

.method private dismissCandidateWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5051
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-nez v1, :cond_1

    .line 5067
    :cond_0
    :goto_0
    return-void

    .line 5052
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->resetAll()V

    .line 5054
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 5055
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v1, :cond_2

    .line 5056
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5061
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsCandidatesViewShown:Z

    .line 5062
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesViewShown(Z)V

    .line 5064
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5065
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    goto :goto_0

    .line 5058
    :catch_0
    move-exception v0

    .line 5059
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SamsungIME"

    const-string v2, "Fail to show the PopupWindow."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInstance()Lcom/samsung/inputmethod/SamsungIME;
    .locals 1

    .prologue
    .line 765
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME;->mInstance:Lcom/samsung/inputmethod/SamsungIME;

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SamsungIME;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME;->mInstance:Lcom/samsung/inputmethod/SamsungIME;

    .line 768
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME;->mInstance:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method public static hasHardKeyboard()Z
    .locals 1

    .prologue
    .line 6948
    const/4 v0, 0x0

    .line 6956
    .local v0, hasHardKeyboard:Z
    return v0
.end method

.method private isActionKeyCode(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x1d

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7288
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 7289
    .local v0, keyCode:I
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7290
    if-lt v0, v4, :cond_0

    if-le v0, v5, :cond_2

    :cond_0
    const/4 v3, 0x7

    if-lt v0, v3, :cond_1

    const/16 v3, 0x10

    if-le v0, v3, :cond_2

    :cond_1
    const/16 v3, 0x45

    if-eq v0, v3, :cond_2

    const/16 v3, 0x4a

    if-eq v0, v3, :cond_2

    const/16 v3, 0x37

    if-eq v0, v3, :cond_2

    const/16 v3, 0x38

    if-eq v0, v3, :cond_2

    const/16 v3, 0x4c

    if-ne v0, v3, :cond_3

    .line 7297
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 7290
    goto :goto_0

    .line 7297
    :cond_4
    if-lt v0, v4, :cond_5

    if-le v0, v5, :cond_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private isBTPeripheralConnected()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 659
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 660
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 661
    .local v1, mKeyboard:I
    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 665
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isEditorTypeNull()Z
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHardKey(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1520
    const/4 v0, 0x0

    .line 1521
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1523
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1527
    :cond_1
    const/4 v0, 0x1

    .line 1528
    :cond_2
    return v0
.end method

.method private isHardKeyZero(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1542
    const/4 v0, 0x0

    .line 1543
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1545
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1547
    :goto_0
    return v0

    .line 1545
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNumHardKey(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1532
    const/4 v0, 0x0

    .line 1533
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1535
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1538
    :goto_0
    return v0

    .line 1535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1553
    const/4 v0, 0x0

    .line 1554
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1556
    .local v1, keyCode:I
    const/16 v2, 0x52

    if-eq v2, v1, :cond_0

    const/4 v2, 0x3

    if-eq v2, v1, :cond_0

    const/16 v2, 0x18

    if-eq v2, v1, :cond_0

    const/16 v2, 0x19

    if-ne v2, v1, :cond_1

    .line 1560
    :cond_0
    const/4 v0, 0x1

    .line 1562
    :cond_1
    return v0
.end method

.method private launchSettings()V
    .locals 2

    .prologue
    .line 5967
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5968
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5969
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5970
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V

    .line 5971
    return-void
.end method

.method private launchTutorial()V
    .locals 2

    .prologue
    .line 5975
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SHOW_TUTORIAL_BY_ACTIVITY:Z

    if-eqz v1, :cond_0

    .line 5976
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5977
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/samsung/inputmethod/setting/SimeHelp;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5978
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5979
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V

    .line 5983
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 5982
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->showTutorialDialog()V

    goto :goto_0
.end method

.method private printDownKey()V
    .locals 0

    .prologue
    .line 1102
    return-void
.end method

.method private requestToShowToolBar()Z
    .locals 2

    .prologue
    .line 5435
    const/4 v0, 0x0

    .line 5436
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->isEditorTypeNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5439
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->requestShowSelf()V

    .line 5440
    const/4 v0, 0x1

    .line 5444
    :cond_0
    return v0
.end method

.method private resetCandidateWindow()V
    .locals 3

    .prologue
    .line 5071
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-nez v1, :cond_1

    .line 5097
    :cond_0
    :goto_0
    return-void

    .line 5073
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5079
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5080
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    .line 5083
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    if-eqz v1, :cond_3

    .line 5084
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->reset()V

    .line 5087
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsCandidatesViewShown:Z

    if-eqz v1, :cond_4

    .line 5089
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->dismissCandidateWindow()V

    .line 5090
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->dismissRealCandidates()V

    goto :goto_0

    .line 5075
    :catch_0
    move-exception v0

    .line 5076
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SamsungIME"

    const-string v2, "Fail to show the PopupWindow."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5093
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5095
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->resetAll()V

    goto :goto_0
.end method

.method private settingHWKeyboardConnection(Z)V
    .locals 0
    .parameter "connect"

    .prologue
    .line 671
    sput-boolean p1, Lcom/samsung/inputmethod/SamsungIME;->mDocKeyboardConnected:Z

    .line 672
    return-void
.end method

.method private showTutorialDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5718
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5720
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x104000a

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5722
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030011

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 5724
    .local v2, dialogView:Landroid/view/View;
    const v5, 0x7f0c003f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 5725
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getShowToturial()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5726
    new-instance v5, Lcom/samsung/inputmethod/SamsungIME$6;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/SamsungIME$6;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5732
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5734
    const v5, 0x7f0b00e0

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5736
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    .line 5737
    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 5738
    .local v4, window:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 5739
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5740
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5741
    const/16 v5, 0x7dc

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5746
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5747
    const/high16 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 5749
    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 5750
    return-void

    .line 5725
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #window:Landroid/view/Window;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 5743
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v4       #window:Landroid/view/Window;
    :cond_1
    const/16 v5, 0x3eb

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1
.end method

.method private startSamsungDecoderService()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4504
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getDecoderService()Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4505
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4506
    .local v0, serviceIntent:Landroid/content/Intent;
    const-class v2, Lcom/samsung/inputmethod/SimeDecoderService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4508
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSamsungDecoderServiceConnection:Lcom/samsung/inputmethod/SamsungIME$SamsungDecoderServiceConnection;

    if-nez v2, :cond_0

    .line 4509
    new-instance v2, Lcom/samsung/inputmethod/SamsungIME$SamsungDecoderServiceConnection;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/SamsungIME$SamsungDecoderServiceConnection;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSamsungDecoderServiceConnection:Lcom/samsung/inputmethod/SamsungIME$SamsungDecoderServiceConnection;

    .line 4513
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSamsungDecoderServiceConnection:Lcom/samsung/inputmethod/SamsungIME$SamsungDecoderServiceConnection;

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/inputmethod/SamsungIME;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4521
    .end local v0           #serviceIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return v1

    .line 4517
    .restart local v0       #serviceIntent:Landroid/content/Intent;
    :cond_2
    const-string v1, "SamsungIME"

    const-string v2, "IME bind service fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4518
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toolBarModePreCheck(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 1107
    const/4 v0, 0x0

    .line 1109
    .local v0, bRet:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 1112
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isHardKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1114
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1115
    const/4 v0, 0x1

    .line 1127
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1129
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->changeToToolBarMode()Z

    move-result v2

    .line 1133
    .local v2, isChangedToToolbar:Z
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isNumHardKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1135
    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->isEditorTypeNull()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1139
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->requestToShowToolBar()Z

    .line 1169
    .end local v2           #isChangedToToolbar:Z
    :cond_1
    :goto_1
    return v0

    .line 1118
    :cond_2
    const-string v3, "clipboardEx"

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    .line 1119
    .local v1, clipboard:Landroid/sec/clipboard/ClipboardExManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1120
    const/4 v0, 0x1

    goto :goto_0

    .line 1143
    .end local v1           #clipboard:Landroid/sec/clipboard/ClipboardExManager;
    .restart local v2       #isChangedToToolbar:Z
    :cond_3
    if-eqz v2, :cond_4

    .line 1146
    iput-boolean v5, p0, Lcom/samsung/inputmethod/SamsungIME;->bKeyChangedStateToToolbar:Z

    .line 1149
    const/4 v0, 0x1

    goto :goto_1

    .line 1150
    :cond_4
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->requestToShowToolBar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1153
    iput-boolean v5, p0, Lcom/samsung/inputmethod/SamsungIME;->bKeyChangedStateToToolbar:Z

    .line 1156
    const/4 v0, 0x1

    goto :goto_1

    .line 1165
    .end local v2           #isChangedToToolbar:Z
    :cond_5
    iget-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->bKeyChangedStateToToolbar:Z

    if-eqz v3, :cond_1

    .line 1166
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateStatusBarHeight()V
    .locals 3

    .prologue
    .line 6162
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6163
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 6164
    .local v1, rootView:Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6165
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 6166
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sput v2, Lcom/samsung/inputmethod/SamsungIME;->NOTIFICATION_HEIGHT:I

    .line 6168
    .end local v0           #r:Landroid/graphics/Rect;
    .end local v1           #rootView:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public ClearAllPopupMenu()V
    .locals 1

    .prologue
    .line 5467
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    if-eqz v0, :cond_0

    .line 5468
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 5471
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mChooseInputModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mChooseInputModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5472
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mChooseInputModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5475
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5476
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5479
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5480
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5483
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5484
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5488
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5489
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5492
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5493
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->dismissDialog()V

    .line 5495
    :cond_6
    return-void
.end method

.method public InputMonth(ILjava/lang/String;)V
    .locals 10
    .parameter "keyCode"
    .parameter "label"

    .prologue
    const/16 v9, 0x1f

    const/16 v8, 0x1e

    const/16 v7, 0x1d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2516
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2517
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 2621
    :cond_0
    :goto_0
    return-void

    .line 2519
    :cond_1
    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v1, v3, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 2521
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 2527
    const/4 v2, 0x0

    .line 2528
    .local v2, textCharLen:I
    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2534
    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_2
    if-ne v2, v6, :cond_11

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_11

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_11

    .line 2538
    :cond_3
    if-ne p1, v7, :cond_6

    .line 2539
    const-string p2, "1"

    .line 2615
    :cond_4
    :goto_1
    if-lez v2, :cond_5

    .line 2616
    invoke-interface {v1, v2, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2618
    :cond_5
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_0

    .line 2540
    :cond_6
    if-ne p1, v8, :cond_7

    .line 2541
    const-string p2, "2"

    goto :goto_1

    .line 2542
    :cond_7
    if-ne p1, v9, :cond_8

    .line 2543
    const-string p2, "3"

    goto :goto_1

    .line 2544
    :cond_8
    const/16 v3, 0x20

    if-ne p1, v3, :cond_9

    .line 2545
    const-string p2, "4"

    goto :goto_1

    .line 2546
    :cond_9
    const/16 v3, 0x21

    if-ne p1, v3, :cond_a

    .line 2547
    const-string p2, "5"

    goto :goto_1

    .line 2548
    :cond_a
    const/16 v3, 0x22

    if-ne p1, v3, :cond_b

    .line 2549
    const-string p2, "6"

    goto :goto_1

    .line 2550
    :cond_b
    const/16 v3, 0x23

    if-ne p1, v3, :cond_c

    .line 2551
    const-string p2, "7"

    goto :goto_1

    .line 2552
    :cond_c
    const/16 v3, 0x24

    if-ne p1, v3, :cond_d

    .line 2553
    const-string p2, "8"

    goto :goto_1

    .line 2554
    :cond_d
    const/16 v3, 0x25

    if-ne p1, v3, :cond_e

    .line 2555
    const-string p2, "9"

    goto :goto_1

    .line 2556
    :cond_e
    const/16 v3, 0x26

    if-ne p1, v3, :cond_f

    .line 2557
    const-string p2, "10"

    goto :goto_1

    .line 2558
    :cond_f
    const/16 v3, 0x27

    if-ne p1, v3, :cond_10

    .line 2559
    const-string p2, "11"

    goto :goto_1

    .line 2560
    :cond_10
    const/16 v3, 0x28

    if-ne p1, v3, :cond_4

    .line 2561
    const-string p2, "12"

    goto :goto_1

    .line 2565
    :cond_11
    if-ne p1, v7, :cond_12

    .line 2566
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 2569
    :cond_12
    if-ne p1, v8, :cond_13

    .line 2570
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 2573
    :cond_13
    if-ne p1, v9, :cond_14

    .line 2574
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 2577
    :cond_14
    const/16 v3, 0x20

    if-ne p1, v3, :cond_15

    .line 2578
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 2581
    :cond_15
    const/16 v3, 0x21

    if-ne p1, v3, :cond_16

    .line 2582
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 2585
    :cond_16
    const/16 v3, 0x22

    if-ne p1, v3, :cond_17

    .line 2586
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 2589
    :cond_17
    const/16 v3, 0x23

    if-ne p1, v3, :cond_18

    .line 2590
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 2593
    :cond_18
    const/16 v3, 0x24

    if-ne p1, v3, :cond_19

    .line 2594
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 2597
    :cond_19
    const/16 v3, 0x25

    if-ne p1, v3, :cond_1a

    .line 2598
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 2601
    :cond_1a
    const/16 v3, 0x26

    if-ne p1, v3, :cond_1b

    .line 2602
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 2605
    :cond_1b
    const/16 v3, 0x27

    if-ne p1, v3, :cond_1c

    .line 2606
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 2609
    :cond_1c
    const/16 v3, 0x28

    if-ne p1, v3, :cond_4

    .line 2610
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1
.end method

.method public SetAutoCaptialization(Z)V
    .locals 6
    .parameter "bEnable"

    .prologue
    const v5, 0x12110001

    const/high16 v4, 0x1211

    const/high16 v3, 0x1111

    .line 7000
    const/4 v0, -0x1

    .line 7001
    .local v0, USERDEF_KEYCODE_SHIFT_1:I
    const/4 v1, 0x0

    .line 7002
    .local v1, bUpdateInputMode:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextAbsUpperCaseWithSkb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7045
    :cond_0
    :goto_0
    return-void

    .line 7008
    :cond_1
    if-eqz p1, :cond_3

    .line 7009
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isNeedAutoCapitalization()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextTempUpperCaseWithSkb()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7010
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 7011
    const/4 v1, 0x1

    .line 7038
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 7039
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v2, :cond_0

    .line 7040
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0

    .line 7014
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfigureState()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7015
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34English()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7016
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7017
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 7018
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 7019
    const/4 v1, 0x1

    goto :goto_1

    .line 7022
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 7023
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 7024
    const/4 v1, 0x1

    goto :goto_1

    .line 7029
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7030
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 7031
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 7032
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public SetFloatingKeyboardForMultiWindow(Z)V
    .locals 2
    .parameter "isFloatingKeyboardForMultiWindow"

    .prologue
    .line 724
    iput-boolean p1, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsFloatingKeyboardForMultiWindow:Z

    .line 726
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    if-eqz v0, :cond_0

    .line 727
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsFloatingKeyboardForMultiWindow:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->setKeyboardType(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;)V

    .line 729
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->setKeyboardType(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;)V

    .line 733
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 734
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0
.end method

.method public UpdateSkbContainer()V
    .locals 1

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode2()V

    .line 2512
    return-void
.end method

.method public autoCapitalization()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7048
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 7049
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 7086
    :cond_0
    :goto_0
    return-void

    .line 7051
    :cond_1
    const/4 v1, 0x0

    .line 7052
    .local v1, isEnglish34OneKey:Z
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34English()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9On()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getSimeKProcEnglish()Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 7054
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getSimeKProcEnglish()Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getCommitHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7055
    const/4 v1, 0x1

    .line 7058
    :cond_2
    if-nez v1, :cond_0

    .line 7062
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getAutoCapitalization()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34English()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7063
    :cond_3
    invoke-interface {v0, v8, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 7064
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 7066
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7068
    .local v2, preEdit:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_5

    const-string v4, ". "

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "? "

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "! "

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_5

    .line 7070
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->SetAutoCaptialization(Z)V

    goto :goto_0

    .line 7081
    :catch_0
    move-exception v4

    goto :goto_0

    .line 7071
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_6

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_6

    .line 7072
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->SetAutoCaptialization(Z)V

    goto/16 :goto_0

    .line 7073
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 7074
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->SetAutoCaptialization(Z)V

    goto/16 :goto_0

    .line 7075
    :cond_7
    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextTempUpperCaseWithSkb()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    .line 7078
    :cond_8
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->SetAutoCaptialization(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public changeInputModeByKeyboard()V
    .locals 2

    .prologue
    .line 7273
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7274
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1111

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 7284
    :cond_0
    :goto_0
    return-void

    .line 7275
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7276
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1102

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0

    .line 7277
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7278
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x2104

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0

    .line 7279
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7280
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, -0x6efb

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0

    .line 7281
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7282
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1113

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0
.end method

.method public changeToStateInput(Z)V
    .locals 2
    .parameter "updateUi"

    .prologue
    .line 3745
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 3747
    if-nez p1, :cond_1

    .line 3757
    :cond_0
    :goto_0
    return-void

    .line 3749
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3751
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3752
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    goto :goto_0

    .line 3754
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    goto :goto_0
.end method

.method public changeToStatePredict(Z)V
    .locals 3
    .parameter "updateUi"

    .prologue
    const/4 v2, 0x0

    .line 3761
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 3762
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    if-ne v0, v1, :cond_0

    .line 3763
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setFinishSelection(Z)V

    .line 3765
    :cond_0
    if-nez p1, :cond_2

    .line 3771
    :cond_1
    :goto_0
    return-void

    .line 3767
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3768
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    goto :goto_0
.end method

.method public chooseAndUpdate(I)V
    .locals 2
    .parameter "candId"

    .prologue
    .line 4300
    iput p1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandId:I

    .line 4302
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactDataCount:I

    if-lez v0, :cond_2

    .line 4303
    iget v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactDataCount:I

    if-ge p1, v0, :cond_0

    .line 4304
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->chooseContactCandidate(I)V

    .line 4343
    :goto_0
    return-void

    .line 4308
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9English()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4309
    iget v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactDataCount:I

    sub-int/2addr p1, v0

    .line 4310
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetContactInfo()V

    .line 4317
    :cond_1
    :goto_1
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_4

    .line 4320
    iget v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactDataCount:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9English()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4321
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->chooseDecodingCandidate(I)V

    .line 4328
    :goto_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9English()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4330
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->chooseT9AWcandidate(I)V

    goto :goto_0

    .line 4314
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetContactInfo()V

    goto :goto_1

    .line 4323
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->chooseDecodingCandidate(I)V

    goto :goto_2

    .line 4325
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->choosePredictChoice(I)V

    goto :goto_2

    .line 4332
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4334
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->chooseHWCandidate(I)V

    goto :goto_0

    .line 4338
    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->chooseT9Candidate(I)V

    goto :goto_0
.end method

.method public chooseCandidate(I)V
    .locals 1
    .parameter "activeCandNo"

    .prologue
    .line 4494
    if-gez p1, :cond_0

    .line 4495
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result p1

    .line 4497
    :cond_0
    if-ltz p1, :cond_1

    .line 4498
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    .line 4500
    :cond_1
    return-void
.end method

.method public commitContactDialogData(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    iget v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSelectedContact:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->data:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 4275
    return-void
.end method

.method public commitResultText(Ljava/lang/String;)V
    .locals 3
    .parameter "resultText"

    .prologue
    .line 3796
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3797
    :cond_0
    const-string p1, ""

    .line 3799
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3800
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_5

    .line 3802
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 3804
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3805
    const-string v1, "SamsungIME"

    const-string v2, "commitResultText commitText getCurrentInputConnection()=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v1, :cond_3

    .line 3818
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 3819
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3821
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->reset34SplCandidates()V

    .line 3824
    :cond_3
    return-void

    .line 3809
    :cond_4
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3810
    const-string v1, "SamsungIME"

    const-string v2, "commitResultText finishComposingText getCurrentInputConnection()=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3815
    :cond_5
    const-string v1, "SamsungIME"

    const-string v2, "commitResultText getCurrentInputConnection()=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public commitResultText(Ljava/lang/String;I)V
    .locals 2
    .parameter "resultText"
    .parameter "newCursorPosition"

    .prologue
    .line 3844
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 3845
    :cond_0
    const-string p1, ""

    .line 3847
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3848
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 3849
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3850
    const-string v1, ""

    invoke-interface {v0, v1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3853
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v1, :cond_3

    .line 3854
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 3855
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3857
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->reset34SplCandidates()V

    .line 3860
    :cond_3
    return-void
.end method

.method public commitResultText(Ljava/lang/String;Z)V
    .locals 2
    .parameter "resultText"
    .parameter "isDirectInput"

    .prologue
    .line 3828
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 3829
    :cond_0
    const-string p1, ""

    .line 3831
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3832
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3833
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 3834
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 3835
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3837
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->reset34SplCandidates()V

    .line 3840
    :cond_3
    return-void
.end method

.method public dispatchExtractViewEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 6191
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateStatusBarHeight()V

    .line 6192
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6193
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lcom/samsung/inputmethod/SamsungIME;->NOTIFICATION_HEIGHT:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 6195
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 6196
    .local v0, me:Landroid/view/MotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 6197
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6198
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 6199
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6202
    .end local v0           #me:Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method public dispatchTouchEventFromPalette(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 6171
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateStatusBarHeight()V

    .line 6172
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6174
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6175
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 6176
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/samsung/inputmethod/SamsungIME;->NOTIFICATION_HEIGHT:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 6177
    .local v1, ht:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 6180
    .end local v0           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v1           #ht:F
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsCandidatesViewShown:Z

    if-eqz v2, :cond_2

    .line 6181
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6187
    :cond_1
    :goto_0
    return-void

    .line 6183
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 6184
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    return-object v0
.end method

.method public getContactProviderStatus()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 3985
    const/4 v7, -0x1

    .line 3986
    .local v7, providerStatus:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "data1"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3991
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3993
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3994
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 3995
    if-eqz v7, :cond_0

    .line 4001
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4008
    :goto_0
    return v7

    .line 4001
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4004
    :cond_2
    const-string v0, "SamsungIME"

    const-string v1, "getContactProviderStatus : cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentWindowHeight()I
    .locals 2

    .prologue
    .line 6003
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6004
    iget-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsCandidatesViewShown:Z

    if-eqz v1, :cond_1

    .line 6006
    const/4 v0, 0x0

    .line 6007
    .local v0, nCandidateViewHeight:I
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShowOneItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6009
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getActivCCItem()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getHeight()I

    move-result v0

    .line 6016
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 6021
    .end local v0           #nCandidateViewHeight:I
    :goto_1
    return v1

    .line 6013
    .restart local v0       #nCandidateViewHeight:I
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v0

    goto :goto_0

    .line 6018
    .end local v0           #nCandidateViewHeight:I
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v1

    goto :goto_1

    .line 6021
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCurrentmSkbContainerHeight()I
    .locals 1

    .prologue
    .line 6359
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6360
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v0

    .line 6362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    return-object v0
.end method

.method public getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method public getHWKeyboardConnection()Z
    .locals 1

    .prologue
    .line 677
    sget-boolean v0, Lcom/samsung/inputmethod/SamsungIME;->mDocKeyboardConnected:Z

    return v0
.end method

.method public getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;
    .locals 1

    .prologue
    .line 6501
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    return-object v0
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 6980
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    return-object v0
.end method

.method public getLangSelectorDialog()Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;
    .locals 1

    .prologue
    .line 7089
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    return-object v0
.end method

.method public getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;
    .locals 1

    .prologue
    .line 6505
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    return-object v0
.end method

.method public getMultiModalManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMultiModalManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    return-object v0
.end method

.method public getNotificationHeight()I
    .locals 1

    .prologue
    .line 6510
    sget v0, Lcom/samsung/inputmethod/SamsungIME;->NOTIFICATION_HEIGHT:I

    return v0
.end method

.method public getOneHandContainer()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    if-nez v0, :cond_0

    .line 751
    const-string v0, "SamsungIME"

    const-string v1, "getOneHandContainer==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    return-object v0
.end method

.method public getRealWindowHeight()I
    .locals 2

    .prologue
    .line 6150
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6151
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsCandidatesViewShown:Z

    if-eqz v0, :cond_0

    .line 6152
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 6157
    :goto_0
    return v0

    .line 6154
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v0

    goto :goto_0

    .line 6157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-nez v0, :cond_0

    .line 743
    const-string v0, "SamsungIME"

    const-string v1, "getSkbContainer==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    return-object v0
.end method

.method public getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;
    .locals 1

    .prologue
    .line 7093
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    return-object v0
.end method

.method public getToast()Lcom/samsung/inputmethod/comm/SimeToast;
    .locals 1

    .prologue
    .line 7266
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->myToast:Lcom/samsung/inputmethod/comm/SimeToast;

    return-object v0
.end method

.method public handleClipboardKey()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 4772
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    .line 4773
    .local v12, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v12, :cond_0

    .line 4774
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4775
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v6, 0xdd

    const/4 v11, 0x2

    move-wide v3, v1

    move v7, v5

    move v8, v5

    move v9, v5

    move v10, v5

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4781
    .end local v1           #eventTime:J
    :cond_0
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 4782
    return-void
.end method

.method public handleOcrKey()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4785
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4786
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v2, 0x0

    .line 4787
    .local v2, mOCRSIPType:I
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->selectedText:Ljava/lang/CharSequence;

    .line 4788
    iput-boolean v5, p0, Lcom/samsung/inputmethod/SamsungIME;->isSelectedText:Z

    .line 4790
    if-eqz v0, :cond_1

    .line 4791
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->selectedText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 4792
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->isSelectedText:Z

    .line 4803
    :cond_0
    const/4 v2, 0x4

    .line 4807
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4810
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.ocr"

    const-string v4, "com.sec.android.app.ocr.OCR"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4811
    const/high16 v3, 0x3400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4814
    const-string v3, "OCR_SIP_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4815
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->setGetOcrString(Z)V

    .line 4816
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V

    .line 4819
    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6967
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6968
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 6970
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v1, :cond_0

    .line 6971
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 6972
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v1, :cond_1

    .line 6973
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 6977
    :cond_0
    :goto_0
    return-void

    .line 6975
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateXT9Status()V

    goto :goto_0
.end method

.method public initModulesWithService(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 4747
    new-instance v0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-direct {v0, p1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    .line 4748
    return-void
.end method

.method public inputCommaPeriod(Ljava/lang/String;IZLcom/samsung/inputmethod/SamsungIME$ImeState;)V
    .locals 2
    .parameter "preEdit"
    .parameter "keyChar"
    .parameter "dismissCandWindow"
    .parameter "nextState"

    .prologue
    .line 3921
    const/16 v0, 0x2c

    if-ne p2, v0, :cond_2

    .line 3922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xff0c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3927
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 3929
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3931
    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetCandidateWindow()V

    .line 3933
    :cond_0
    iput-object p4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 3935
    :cond_1
    return-void

    .line 3923
    :cond_2
    const/16 v0, 0x2e

    if-ne p2, v0, :cond_1

    .line 3924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V
    .locals 3
    .parameter "preEdit"
    .parameter "keyChar"
    .parameter "trans"
    .parameter "dismissCandWindow"
    .parameter "nextState"

    .prologue
    const/16 v2, 0x2e

    const/16 v1, 0x2c

    .line 3890
    if-eqz p3, :cond_3

    .line 3892
    if-ne p2, v1, :cond_2

    .line 3893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xff0c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3906
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 3908
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3910
    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetCandidateWindow()V

    .line 3912
    :cond_0
    iput-object p5, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 3914
    :cond_1
    return-void

    .line 3894
    :cond_2
    if-ne p2, v2, :cond_1

    .line 3895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3899
    :cond_3
    if-ne p2, v1, :cond_4

    .line 3900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3901
    :cond_4
    if-ne p2, v2, :cond_1

    .line 3902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public isCandidatesViewShown()Z
    .locals 1

    .prologue
    .line 5986
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsCandidatesViewShown:Z

    return v0
.end method

.method public isClipboardEnabled()Z
    .locals 4

    .prologue
    .line 6881
    const/4 v0, 0x1

    .line 6884
    .local v0, isClipboardEnabled:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 6886
    const/4 v0, 0x0

    .line 6888
    :cond_0
    return v0
.end method

.method public isComposingViewShown()Z
    .locals 1

    .prologue
    .line 5990
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConfigureChange()Z
    .locals 1

    .prologue
    .line 5994
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange:Z

    return v0
.end method

.method public isFloatingKeyboardForMultiWindow()Z
    .locals 1

    .prologue
    .line 715
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-nez v0, :cond_0

    .line 716
    const/4 v0, 0x0

    .line 718
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsFloatingKeyboardForMultiWindow:Z

    goto :goto_0
.end method

.method public isGetOcrString()Z
    .locals 1

    .prologue
    .line 4838
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->isGetOcrString:Z

    return v0
.end method

.method public isNeedAutoCapitalization()Z
    .locals 2

    .prologue
    .line 6986
    const/4 v0, 0x1

    .line 6989
    .local v0, result:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPassWordEditor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isWebEditor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSearchEditor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMMSRecipient()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6994
    :cond_0
    const/4 v0, 0x0

    .line 6996
    :cond_1
    return v0
.end method

.method public isSoftKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1512
    const/4 v0, 0x0

    .line 1513
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1514
    const/4 v0, 0x1

    .line 1515
    :cond_0
    return v0
.end method

.method public isVoiceInputEnabled()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6862
    const/4 v2, 0x0

    .line 6863
    .local v2, isMarketPackageAndSearchEditor:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 6864
    .local v1, editorInfo:Landroid/view/inputmethod/EditorInfo;
    if-eqz v1, :cond_4

    .line 6865
    iget v5, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v6, 0x400000ff

    and-int v0, v5, v6

    .line 6867
    .local v0, editorAction:I
    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 6868
    const-string v5, "com.android.vending"

    iget-object v6, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.google.android.apps.maps"

    iget-object v6, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.google.android.youtube"

    iget-object v6, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.google.android.googlequicksearchbox"

    iget-object v6, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    move v2, v4

    .line 6875
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 6877
    .end local v0           #editorAction:I
    :goto_1
    return v4

    .restart local v0       #editorAction:I
    :cond_2
    move v2, v3

    .line 6868
    goto :goto_0

    :cond_3
    move v4, v3

    .line 6875
    goto :goto_1

    .end local v0           #editorAction:I
    :cond_4
    move v4, v3

    .line 6877
    goto :goto_1
.end method

.method public needHideSoftKeyboard(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 6961
    const/4 v0, 0x0

    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 1014
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1016
    if-nez p1, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    const-string v1, "com.samsung.inputmethod/show_im_picker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.samsung.inputmethod/cmd_show_cursorcontrol"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1020
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1022
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWView(Z)V

    goto :goto_0

    .line 1026
    :cond_3
    const-string v1, "com.samsung.inputmethod/hide_im_picker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.inputmethod/cmd_hide_cursorcontrol"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1028
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0

    .line 1034
    :cond_5
    const-string v1, "com.swype.android.inputmethod/cmd_tap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.swype.android.inputmethod/cmd_doubletap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.samsung.inputmethod/cmd_tap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.samsung.inputmethod/cmd_doubletap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    :cond_6
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1049
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->isEditorTypeNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1055
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1056
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToolBarSKBToNoraml()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1057
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_0
.end method

.method public onChoiceTouched(I)V
    .locals 5
    .parameter "activeCandNo"

    .prologue
    .line 5411
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_1

    .line 5412
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 5430
    :cond_0
    :goto_0
    return-void

    .line 5413
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_3

    .line 5416
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->chooseCandidate(I)V

    goto :goto_0

    .line 5417
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_0

    .line 5418
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getAppCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    .line 5419
    .local v0, appCompletions:[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v3, v0

    if-ge p1, v3, :cond_0

    .line 5421
    aget-object v1, v0, p1

    .line 5422
    .local v1, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v1, :cond_4

    .line 5423
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 5424
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v2, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 5426
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_0
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 3
    .parameter "outInsets"

    .prologue
    .line 793
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 794
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 798
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 799
    .local v0, location:[I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShowOneItem()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 800
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getActivCCItem()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 801
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getActivCCItem()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getLocationInWindow([I)V

    .line 802
    iget v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    const/4 v2, 0x1

    aget v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 806
    :cond_2
    iget v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 914
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 920
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v1, p1, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 921
    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setConfigureState(Z)V

    .line 923
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v2, :cond_0

    .line 924
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopups()V

    .line 926
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v2, :cond_1

    .line 927
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->dismiss()V

    .line 930
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v2, :cond_3

    .line 933
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 934
    const-string v2, "clipboardEx"

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 936
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    if-eqz v0, :cond_2

    .line 937
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 938
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 943
    .end local v0           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_2
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange:Z

    .line 946
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    if-eqz v2, :cond_4

    .line 947
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 953
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 954
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 957
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 958
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 961
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 962
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 965
    :cond_7
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->isDialogShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 966
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->dismissDialog()V

    .line 969
    :cond_8
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 971
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 972
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 979
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToolBarSKBToNoraml()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 982
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 983
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 1004
    :cond_9
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_a

    .line 1005
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->initAndShowFloatingInputPanel()V

    .line 1007
    :cond_a
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1008
    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setConfigureState(Z)V

    .line 1009
    return-void

    .line 985
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateXT9Status()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 813
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 814
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 816
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setFilesDir(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setLibraryDir(Ljava/lang/String;)V

    .line 821
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 823
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getInstance(Landroid/content/SharedPreferences;)Lcom/samsung/inputmethod/setting/SimeSetting;

    .line 825
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->startSamsungDecoderService()Z

    .line 827
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/SamsungIME;->initModulesWithService(Landroid/inputmethodservice/InputMethodService;)V

    .line 829
    new-instance v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 830
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mMultiModalManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    .line 831
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mMultiModalManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 832
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    .line 833
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 834
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    .line 836
    new-instance v1, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    .line 837
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 838
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    const-string v1, "ShowClipboard"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    const-string v1, "ShowClipboardDialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    const-string v1, "android.widget.TextView.onCreateContextMenu"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    const-string v1, "samsungimehideview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 843
    const-string v1, "java.com.android.server.InputMethodService.hideInputMethodMenu"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    const-string v1, "com.android.phone.ACTION_NEW_INCOMING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    const-string v1, "com.samsung.inputmethod.RequestLanguageInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 846
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 847
    const-string v1, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 849
    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    new-instance v1, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mIntentReceiver:Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;

    .line 852
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mIntentReceiver:Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/inputmethod/SamsungIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 855
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mOcrSIPTextReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.ocr.OCR_SIP_TEXT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 857
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSdkVersion()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 858
    const/4 v1, 0x0

    sput v1, Lcom/samsung/inputmethod/SamsungIME;->NOTIFICATION_HEIGHT:I

    .line 864
    :goto_0
    new-instance v1, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    .line 865
    new-instance v1, Lcom/samsung/inputmethod/comm/SimeToast;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/comm/SimeToast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->myToast:Lcom/samsung/inputmethod/comm/SimeToast;

    .line 866
    return-void

    .line 860
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/samsung/inputmethod/SamsungIME;->NOTIFICATION_HEIGHT:I

    goto :goto_0
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 2

    .prologue
    .line 4528
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->createCandidateView()Landroid/view/View;

    move-result-object v0

    .line 4529
    .local v0, candview:Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 4530
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getDefaultCandContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 4531
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getComposingWindow()Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    .line 4532
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandBalloon()Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 4534
    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    .prologue
    .line 5110
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->createInputView()Landroid/view/View;

    move-result-object v0

    .line 5112
    .local v0, inputView:Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getNormalInputView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 5113
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getOneHandInputView()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    .line 5114
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getMiniPopupWidnow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    .line 5115
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getHWManager()Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    .line 5117
    invoke-static {}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->getInstance()Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    .line 5118
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    invoke-virtual {v1, p0}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->initialize(Landroid/inputmethodservice/InputMethodService;)V

    .line 5119
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 875
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSamsungDecoderServiceConnection:Lcom/samsung/inputmethod/SamsungIME$SamsungDecoderServiceConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->unbindService(Landroid/content/ServiceConnection;)V

    .line 876
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->releaseInstance()V

    .line 878
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mIntentReceiver:Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 881
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOcrSIPTextReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 883
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->releaseInstance()V

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopups()V

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    if-eqz v0, :cond_3

    .line 896
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->saveSymbolHistoryToPreference()V

    .line 899
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getDecoderService()Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 902
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getDecoderService()Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9StoreUdb()V

    .line 903
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getDecoderService()Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9FreeUdb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :cond_4
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->resetOneHandMode()V

    .line 909
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 910
    return-void

    .line 904
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 5
    .parameter "completions"

    .prologue
    .line 5331
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5408
    :cond_0
    :goto_0
    return-void

    .line 5334
    :cond_1
    if-eqz p1, :cond_2

    array-length v3, p1

    if-gtz v3, :cond_3

    .line 5335
    :cond_2
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5339
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    goto :goto_0

    .line 5344
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5360
    const/4 v2, 0x1

    .line 5362
    .local v2, isAllCompletionsEmpty:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_5

    .line 5363
    aget-object v0, p1, v1

    .line 5364
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_4

    .line 5365
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5368
    const/4 v2, 0x0

    .line 5362
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5376
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_5
    if-eqz v2, :cond_6

    .line 5377
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5381
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    goto :goto_0

    .line 5388
    :cond_6
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5389
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_7

    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_7

    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_0

    .line 5397
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    sget-boolean v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    if-nez v3, :cond_0

    .line 5401
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 5402
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->prepareAppCompletions([Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5403
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_0

    .line 5405
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    goto :goto_0
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 2

    .prologue
    .line 6206
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 6207
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPSeriesModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6208
    const/4 v1, 0x0

    .line 6210
    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v1

    goto :goto_0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1066
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1067
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v1, :cond_0

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 1069
    .local v1, showInputView:Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1070
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mChooseInputModeDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mChooseInputModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1075
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWView(Z)V

    .line 1079
    :cond_6
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v2

    return v2

    .end local v1           #showInputView:Z
    :cond_7
    move v1, v2

    .line 1067
    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6434
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 6436
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6438
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 6439
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToolBarSKBToNoraml()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 6440
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 6442
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6443
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 6445
    :cond_1
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 1
    .parameter "finishingInput"

    .prologue
    .line 5322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 5323
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    .line 5324
    return-void
.end method

.method public onFinishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5294
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 5296
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange:Z

    if-eqz v0, :cond_0

    .line 5297
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetConfigureChange()V

    .line 5303
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    if-eqz v0, :cond_1

    .line 5305
    :try_start_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getDecoderService()Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService;->imXT9StoreUdb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5311
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->setHWKeyboardLedState(Z)V

    .line 5314
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 5316
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 5317
    return-void

    .line 5306
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onFinishInputView(Z)V
    .locals 3
    .parameter "finishingInput"

    .prologue
    const/4 v2, 0x0

    .line 5232
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->writeBack()V

    .line 5233
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getMajorView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5234
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getMajorView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->dismissBalloonHint()V

    .line 5237
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    if-eqz v0, :cond_1

    .line 5238
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 5240
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 5241
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 5243
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_2

    .line 5244
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopups()V

    .line 5246
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v0, :cond_3

    .line 5247
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->resetFlags()V

    .line 5249
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 5250
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5252
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mChooseInputModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 5253
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mChooseInputModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5256
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 5257
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5260
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5261
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5264
    :cond_7
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 5265
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5270
    :cond_8
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 5271
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mTutorialHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5275
    :cond_9
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5276
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mLangSelectorDialog:Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dialog/SimeLanguageSelectorDialog;->dismissDialog()V

    .line 5280
    :cond_a
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDynamicCharacterRecognitionEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5281
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->dumpCurrentGrid()V

    .line 5286
    :cond_b
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->setHWKeyboardLedState(Z)V

    .line 5288
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 5289
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 1282
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 1283
    .local v1, count:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 1284
    .local v2, ei:Landroid/view/inputmethod/EditorInfo;
    const/4 v0, 0x0

    .line 1297
    .local v0, bRet:Z
    const/16 v3, 0x70

    if-ne v3, p1, :cond_1

    .line 1390
    :cond_0
    :goto_0
    if-eqz v0, :cond_b

    .line 1394
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1395
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->printDownKey()V

    .line 1403
    :goto_1
    return v0

    .line 1299
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isSystemKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1306
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v3, :cond_3

    :cond_2
    const/16 v3, 0xe5

    if-eq p1, v3, :cond_3

    const/16 v3, 0xe3

    if-eq p1, v3, :cond_3

    .line 1310
    const/16 v3, 0xe4

    if-ne p1, v3, :cond_0

    .line 1312
    const/4 v0, 0x1

    goto :goto_0

    .line 1318
    :cond_3
    if-nez v1, :cond_7

    .line 1320
    iput-boolean v4, p0, Lcom/samsung/inputmethod/SamsungIME;->isLongKey:Z

    .line 1321
    iput-boolean v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    .line 1325
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isHardKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1329
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v3, :cond_4

    .line 1331
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/SamsungIME;->toolBarModePreCheck(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1337
    :cond_4
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isActionKeyCode(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1340
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1341
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->changeInputModeByKeyboard()V

    .line 1342
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 1343
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v3, :cond_6

    .line 1344
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 1351
    :cond_6
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processKeyDown(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1352
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1356
    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->isLongKey:Z

    .line 1359
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v3, :cond_a

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v3, :cond_a

    .line 1363
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/SamsungIME;->toolBarModePreCheck(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1364
    if-nez v0, :cond_0

    .line 1366
    iget-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    if-nez v3, :cond_8

    .line 1367
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/SamsungIME;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    .line 1369
    :cond_8
    iget-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    if-eqz v3, :cond_9

    .line 1372
    iput-boolean v4, p0, Lcom/samsung/inputmethod/SamsungIME;->bKeyChangedStateToToolbar:Z

    .line 1373
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1376
    :cond_9
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processKeyDown(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1377
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1383
    :cond_a
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processKeyDown(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1384
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1400
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 1225
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_5

    .line 1226
    const/4 v0, 0x0

    .line 1230
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->isEditorTypeNull()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1271
    .end local v0           #bRet:Z
    :cond_0
    :goto_0
    return v0

    .line 1241
    .restart local v0       #bRet:Z
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isHardKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1242
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 1246
    goto :goto_0

    .line 1252
    :cond_2
    const/16 v1, 0x12

    if-ne p1, v1, :cond_3

    .line 1253
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->processToolBarLongPress()Z

    move-result v0

    goto :goto_0

    .line 1256
    :cond_3
    const/16 v1, 0x11

    if-ne p1, v1, :cond_4

    .line 1257
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->launchSettings()V

    .line 1258
    const/4 v0, 0x1

    goto :goto_0

    .line 1262
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processLongPressKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    const/4 v0, 0x1

    goto :goto_0

    .line 1271
    .end local v0           #bRet:Z
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 1410
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 1411
    .local v1, ei:Landroid/view/inputmethod/EditorInfo;
    const/4 v0, 0x0

    .line 1425
    .local v0, bRet:Z
    const/16 v2, 0x70

    if-ne v2, p1, :cond_2

    .line 1475
    :cond_0
    :goto_0
    if-eqz v0, :cond_a

    .line 1481
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbol()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1482
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbolLock()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1485
    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v2, v3, :cond_1

    .line 1486
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1496
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1497
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->printDownKey()V

    .line 1504
    :goto_2
    return v0

    .line 1428
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isSystemKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1430
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v2, :cond_4

    :cond_3
    const/16 v2, 0xe5

    if-eq p1, v2, :cond_4

    const/16 v2, 0xe3

    if-eq p1, v2, :cond_4

    .line 1434
    const/16 v2, 0xe4

    if-ne p1, v2, :cond_0

    .line 1436
    const/4 v0, 0x1

    goto :goto_0

    .line 1441
    :cond_4
    iget-boolean v2, p0, Lcom/samsung/inputmethod/SamsungIME;->isLongKey:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    if-eqz v2, :cond_5

    .line 1444
    const/4 v0, 0x1

    goto :goto_0

    .line 1446
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_7

    .line 1447
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processKeyUp(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1448
    const/4 v0, 0x1

    goto :goto_0

    .line 1454
    :cond_7
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1458
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processKeyUp(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1459
    const/4 v0, 0x1

    .line 1462
    :cond_8
    if-nez v0, :cond_0

    .line 1465
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1488
    :cond_9
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1490
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1491
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_1

    .line 1501
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_2
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 7
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5124
    const/4 v1, 0x0

    .line 5125
    .local v1, isMainModeChanged:Z
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartInput  ccontentType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Restarting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeBySettings()Z

    move-result v1

    .line 5135
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->requestInputWithHkb(Landroid/view/inputmethod/EditorInfo;Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 5136
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateUIIFLocaleChanged()V

    .line 5140
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 5144
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 5147
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->setHWKeyboardLedState(Z)V

    .line 5149
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5151
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mStringfromOcr:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isGetOcrString()Z

    move-result v2

    if-ne v2, v6, :cond_1

    .line 5152
    iget-boolean v2, p0, Lcom/samsung/inputmethod/SamsungIME;->isSelectedText:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->selectedText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->selectedText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 5153
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->selectedText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 5155
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mStringfromOcr:Ljava/lang/String;

    invoke-interface {v0, v2, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 5156
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 5158
    :cond_1
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->setGetOcrString(Z)V

    .line 5161
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v2, 0x0

    .line 5165
    const/4 v0, 0x0

    .line 5173
    .local v0, isMainModeChanged:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->onStartInputView()V

    .line 5176
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v1, :cond_1

    .line 5177
    if-nez p2, :cond_0

    .line 5178
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->ClearAllPopupMenu()V

    .line 5181
    :cond_0
    sget-boolean v1, Lcom/samsung/inputmethod/SamsungIME;->mFloatingForMultiWindow:Z

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    .line 5184
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeBySettings()Z

    move-result v0

    .line 5186
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->requestInputWithSkb(Landroid/view/inputmethod/EditorInfo;Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 5190
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 5205
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5206
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->DecideHandwriteMode()V

    .line 5210
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->setHWKeyboardLedState(Z)V

    .line 5212
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getHWKeyboardConnection()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5213
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->changeInputModeByKeyboard()V

    .line 5215
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 5217
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    .line 5218
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 5219
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesViewShown(Z)V

    .line 5223
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SHOW_TUTORIAL_FEATURE:Z

    if-eqz v1, :cond_4

    .line 5224
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->checkTutorial()V

    .line 5226
    :cond_4
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 5
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 6370
    const/4 v1, 0x1

    .line 6372
    .local v1, lengthOfAutoSpace:I
    if-eq p5, v4, :cond_6

    if-eq p6, v4, :cond_6

    if-ne p3, p4, :cond_0

    if-eq p6, p4, :cond_6

    .line 6378
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9On()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6381
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 6412
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6413
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 6414
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v2, :cond_3

    .line 6415
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    .line 6419
    :cond_3
    const/4 v0, 0x1

    .line 6421
    .local v0, bSetautoCapitalizationState:Z
    if-ne p1, p2, :cond_4

    if-ne p3, p4, :cond_4

    if-ne p2, p3, :cond_4

    if-ne p6, v4, :cond_4

    if-ne p5, v4, :cond_4

    .line 6422
    const/4 v0, 0x0

    .line 6424
    :cond_4
    if-eqz v0, :cond_5

    .line 6425
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    .line 6428
    :cond_5
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 6429
    return-void

    .line 6385
    .end local v0           #bSetautoCapitalizationState:Z
    :cond_6
    if-ne p6, v4, :cond_8

    if-nez p4, :cond_8

    .line 6386
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9On()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6389
    :cond_7
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0

    .line 6399
    :cond_8
    if-ne p1, p2, :cond_2

    if-eq p4, p6, :cond_2

    if-ne p1, p3, :cond_9

    if-ne p2, p4, :cond_9

    if-eq p4, p6, :cond_2

    :cond_9
    if-eq v4, p6, :cond_2

    if-eq v4, p5, :cond_2

    .line 6406
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKorean()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Korean()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6408
    :cond_a
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0
.end method

.method public onWindowHidden()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6228
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mShowTutorial:Z

    .line 6229
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 6230
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-eqz v0, :cond_0

    .line 6232
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWView(Z)V

    .line 6234
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 6235
    return-void
.end method

.method public processHWGestureKey(I)V
    .locals 13
    .parameter "keyCode"

    .prologue
    .line 6298
    new-instance v0, Landroid/view/KeyEvent;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 6300
    .local v0, eDown:Landroid/view/KeyEvent;
    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 6302
    .local v1, eUp:Landroid/view/KeyEvent;
    invoke-virtual {p0, p1, v0}, Lcom/samsung/inputmethod/SamsungIME;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 6303
    invoke-virtual {p0, p1, v1}, Lcom/samsung/inputmethod/SamsungIME;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 6304
    return-void
.end method

.method public processLongPressKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 9
    .parameter "sKey"

    .prologue
    const/16 v8, 0x1d

    const/16 v7, 0x10

    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4844
    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    .line 4845
    .local v1, keyCode:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v2

    .line 4848
    .local v2, keyLongLabel:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4850
    const/16 v3, 0x47

    if-eq v1, v3, :cond_0

    const/16 v3, 0x48

    if-ne v1, v3, :cond_1

    .line 4852
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;I)V

    .line 4853
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbolLock()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4854
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 4971
    :cond_1
    :goto_0
    return-void

    .line 4856
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 4858
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 4859
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0

    .line 4865
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4866
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUserDefKey()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 4867
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4868
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKeyLongPressed(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 4870
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 4871
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0

    .line 4875
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4882
    if-lt v1, v8, :cond_6

    const/16 v3, 0x36

    if-le v1, v3, :cond_8

    :cond_6
    if-lt v1, v6, :cond_7

    if-le v1, v7, :cond_8

    :cond_7
    const/16 v3, 0x45

    if-ne v1, v3, :cond_1

    .line 4885
    :cond_8
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9QwertyEnglish()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4886
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 4888
    :cond_9
    invoke-virtual {p0, v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4891
    :cond_a
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4893
    const/16 v3, 0x3e

    if-ne v1, v3, :cond_c

    .line 4894
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT934English()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4895
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 4897
    :cond_b
    invoke-virtual {p0, v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 4900
    :cond_c
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4901
    if-lt v1, v6, :cond_d

    if-le v1, v7, :cond_e

    :cond_d
    const/16 v3, 0x4b

    if-ne v1, v3, :cond_1

    .line 4902
    :cond_e
    invoke-virtual {p0, v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 4905
    :cond_f
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4906
    if-lt v1, v6, :cond_10

    if-le v1, v7, :cond_11

    :cond_10
    const/16 v3, -0xa

    if-ne v1, v3, :cond_1

    .line 4907
    :cond_11
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9On()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4908
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 4910
    :cond_12
    invoke-virtual {p0, v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 4914
    :cond_13
    if-lt v1, v6, :cond_14

    if-le v1, v7, :cond_15

    :cond_14
    if-eq v1, v8, :cond_15

    const/16 v3, 0x4b

    if-eq v1, v3, :cond_15

    const/16 v3, 0x37

    if-ne v1, v3, :cond_1

    .line 4915
    :cond_15
    invoke-virtual {p0, v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 4920
    :cond_16
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 4923
    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUserDefKey()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4924
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4925
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKeyLongPressed(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 4927
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 4928
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_0

    .line 4932
    :cond_17
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4934
    if-lt v1, v8, :cond_1

    const/16 v3, 0x36

    if-gt v1, v3, :cond_1

    .line 4936
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4938
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_18

    .line 4940
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4945
    :cond_18
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 4946
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 4949
    :cond_19
    invoke-virtual {p0, v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 4952
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1a
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4953
    if-lt v1, v8, :cond_1

    const/16 v3, 0x27

    if-gt v1, v3, :cond_1

    .line 4954
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4956
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 4957
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 4961
    :cond_1b
    invoke-virtual {p0, v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 4965
    :cond_1c
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4966
    if-ne v1, v6, :cond_1

    .line 4967
    invoke-virtual {p0, v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public processSwitchToNextSymbolPage()Z
    .locals 1

    .prologue
    .line 7251
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToNextPageSymbol()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 7252
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 7253
    const/4 v0, 0x1

    return v0
.end method

.method public processSwitchToPreviousSymbolPage()Z
    .locals 1

    .prologue
    .line 7259
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToPreviousPageSymbol()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 7260
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 7261
    const/4 v0, 0x1

    return v0
.end method

.method public processSwitchToSymbolToolbarMode()Z
    .locals 2

    .prologue
    .line 1178
    const/4 v0, 0x0

    .line 1180
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1181
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->requestShowSelf()V

    .line 1182
    const/4 v0, 0x1

    .line 1192
    :goto_0
    return v0

    .line 1186
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToSymbolInputToolbarMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1187
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 1188
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processToolBarLongPress()Z
    .locals 2

    .prologue
    .line 1212
    const/4 v0, 0x0

    .line 1213
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForShortcutKeyLongPressed()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1215
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 1216
    const/4 v0, 0x1

    .line 1220
    :cond_0
    return v0
.end method

.method public processToolBarShortCut()Z
    .locals 2

    .prologue
    .line 1198
    const/4 v0, 0x0

    .line 1199
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1201
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForShortcutKey()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1202
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 1203
    const/4 v0, 0x1

    .line 1207
    :cond_0
    return v0
.end method

.method public requestHideSelf(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 5459
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->dismissCandidateWindow()V

    .line 5460
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5461
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopups()V

    .line 5463
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 5464
    return-void
.end method

.method public requestShowSelf()V
    .locals 3

    .prologue
    .line 5453
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5454
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 5455
    return-void
.end method

.method public resetConfigureChange()V
    .locals 1

    .prologue
    .line 5998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange:Z

    .line 6000
    return-void
.end method

.method public resetContactInfo()V
    .locals 3

    .prologue
    .line 3978
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactDataCount:I

    .line 3980
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 3981
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    new-instance v2, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    aput-object v2, v1, v0

    .line 3980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3982
    :cond_0
    return-void
.end method

.method public resetToIdleState()V
    .locals 1

    .prologue
    .line 3938
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->reset()V

    .line 3939
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v0, :cond_1

    .line 3941
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 3943
    :cond_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetCandidateWindow()V

    .line 3944
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetContactInfo()V

    .line 3946
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->isShowingMiniPopupWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3947
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 3952
    :cond_2
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 3953
    return-void
.end method

.method public resetToIdleState(Z)V
    .locals 3
    .parameter "resetInlineText"

    .prologue
    .line 3958
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3959
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz p1, :cond_1

    .line 3960
    if-eqz v0, :cond_0

    .line 3961
    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3969
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 3972
    return-void

    .line 3965
    :cond_1
    if-eqz v0, :cond_0

    .line 3966
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_0
.end method

.method public responseSoftKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 24
    .parameter "sKey"

    .prologue
    .line 4538
    if-nez p1, :cond_1

    .line 4743
    :cond_0
    :goto_0
    return-void

    .line 4541
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v22

    .line 4542
    .local v22, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v22, :cond_0

    .line 4544
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4548
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v8

    .line 4549
    .local v8, keyCode:I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isLongPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4550
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/inputmethod/SamsungIME;->processLongPressKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_0

    .line 4571
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUserDefKey()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4573
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->IsSettingKey(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4574
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4575
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->ClearAllPopupMenu()V

    .line 4576
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->showIMESettingMenu()V

    .line 4630
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0

    .line 4577
    :cond_4
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->IsURLPrefixKey(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4578
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4579
    const-string v3, "www."

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;I)V

    .line 4580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 4581
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_3

    .line 4582
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 4583
    :cond_5
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->IsURLSuffixKey(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4585
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_6

    .line 4586
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 4587
    :cond_6
    const-string v3, ".com"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;I)V

    goto :goto_1

    .line 4589
    :cond_7
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->isSymbolLockAndUnlockKey(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 4591
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 4593
    :cond_8
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->IsShilftKey(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9QwertyEnglish()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 4597
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_1

    .line 4598
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    goto/16 :goto_1

    .line 4608
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getSimeKProcEnglish()Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 4609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getSimeKProcEnglish()Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->reset()V

    .line 4611
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 4612
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_1

    .line 4614
    :cond_c
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->IsVoiceKey(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4615
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->startVoiceListening()V

    goto/16 :goto_1

    .line 4616
    :cond_d
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->isMultiModalKey(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mMultiModalManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->handleMultiModalKey(I)V

    goto/16 :goto_1

    .line 4618
    :cond_e
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->isLanguageKey(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 4620
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getHWKeyboardConnection()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4621
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->changeInputModeByKeyboard()V

    .line 4623
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    .line 4624
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_1

    .line 4626
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 4627
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    .line 4628
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_1

    .line 4663
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isKeyCodeKey()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getRepeatCount()I

    move-result v9

    .line 4668
    .local v9, repeat:I
    new-instance v2, Landroid/view/KeyEvent;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 4670
    .local v2, eDown:Landroid/view/KeyEvent;
    new-instance v10, Landroid/view/KeyEvent;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v10 .. v21}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 4673
    .local v10, eUp:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lcom/samsung/inputmethod/SamsungIME;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 4674
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/samsung/inputmethod/SamsungIME;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 4713
    .end local v2           #eDown:Landroid/view/KeyEvent;
    .end local v9           #repeat:I
    .end local v10           #eUp:Landroid/view/KeyEvent;
    :cond_12
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4714
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 4715
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->isFixedSymbolInPopWin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4719
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->saveSymbolsToHistory(Ljava/lang/String;)V

    .line 4737
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isCurrentSkbSticky()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->requestBackToPreviousSkb(Z)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 4739
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 4740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_0

    .line 4675
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUniStrKey()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4677
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v23

    .line 4680
    .local v23, keyLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9English()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_17

    .line 4682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->autoDelSpaceBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 4687
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4688
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 4690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbol()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbolLock()Z

    move-result v3

    if-nez v3, :cond_12

    .line 4693
    const-string v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 4697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 4700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_2

    .line 4705
    :cond_18
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_12

    .line 4706
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_2
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 7203
    if-eqz p1, :cond_1

    .line 7204
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7205
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 7206
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7208
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7213
    :cond_1
    :goto_0
    return-void

    .line 7211
    :cond_2
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setCandidatesViewShown(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    .line 6450
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 6451
    iput-boolean p1, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsCandidatesViewShown:Z

    .line 6454
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_0

    .line 6455
    if-eqz p1, :cond_1

    .line 6456
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->showFloatingCandWindow()V

    .line 6460
    :cond_0
    :goto_0
    return-void

    .line 6458
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->dismissFloatingCandWindow()V

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/String;I)Z
    .locals 7
    .parameter "text"
    .parameter "cursorPos"

    .prologue
    .line 6480
    const/4 v0, 0x0

    .line 6482
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 6484
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 6490
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 6491
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6492
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/samsung/inputmethod/SamsungIME;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6493
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v2, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 6495
    const/4 v0, 0x1

    .line 6497
    :cond_0
    return v0
.end method

.method public setGetOcrString(Z)V
    .locals 0
    .parameter "mGetOctString"

    .prologue
    .line 4834
    iput-boolean p1, p0, Lcom/samsung/inputmethod/SamsungIME;->isGetOcrString:Z

    .line 4835
    return-void
.end method

.method public setHWKeyboardLedState(Z)V
    .locals 5
    .parameter "state"

    .prologue
    .line 7304
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_HW_LED_CONTROL:Z

    if-eqz v3, :cond_0

    .line 7318
    :goto_0
    return-void

    .line 7307
    :cond_0
    const/4 v2, 0x0

    .line 7308
    .local v2, ret:I
    const-string v3, "input"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    .line 7310
    .local v1, im:Landroid/hardware/input/IInputManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setLedState(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 7314
    :catch_0
    move-exception v0

    .line 7315
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SamsungIME"

    const-string v4, "BTKeyboard CapsLock .setLedState() FAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V
    .locals 2
    .parameter "st"

    .prologue
    .line 6463
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 6465
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_0

    .line 6466
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6467
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    .line 6472
    :cond_0
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 2
    .parameter "inputView"

    .prologue
    .line 7189
    if-eqz p1, :cond_1

    .line 7190
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7191
    .local v0, p:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 7192
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 7193
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #p:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7196
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->setInputView(Landroid/view/View;)V

    .line 7197
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 7199
    :cond_1
    return-void
.end method

.method public setNormalInputView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 7173
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputView:Landroid/view/View;

    instance-of v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v1, :cond_0

    .line 7185
    :goto_0
    return-void

    .line 7176
    :cond_0
    if-eqz p1, :cond_2

    .line 7177
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7178
    .local v0, vp:Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 7179
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #vp:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7181
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 7182
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputView:Landroid/view/View;

    .line 7184
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateInputViewShown()V

    goto :goto_0
.end method

.method public setOneHandInputView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 7158
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputView:Landroid/view/View;

    instance-of v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    if-eqz v1, :cond_0

    .line 7170
    :goto_0
    return-void

    .line 7161
    :cond_0
    if-eqz p1, :cond_2

    .line 7162
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7163
    .local v0, vp:Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 7164
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #vp:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7166
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 7167
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputView:Landroid/view/View;

    .line 7169
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateInputViewShown()V

    goto :goto_0
.end method

.method public showCandidateWindow(Z)V
    .locals 3
    .parameter "showComposingView"

    .prologue
    const/4 v2, 0x0

    .line 4975
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesViewShown(Z)V

    .line 4976
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    .line 4977
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->requestLayout()V

    .line 4978
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-nez v0, :cond_2

    .line 4980
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 5047
    :cond_1
    :goto_0
    return-void

    .line 4983
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4984
    :cond_3
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_5

    .line 4988
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->showCompsingWindow()V

    .line 4990
    :cond_5
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_8

    .line 4992
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4993
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto :goto_0

    .line 4996
    :cond_7
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto :goto_0

    .line 5001
    :cond_8
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5002
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto :goto_0

    .line 5005
    :cond_9
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinLeftAndCommon:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto :goto_0

    .line 5011
    :cond_a
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5012
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseText()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5013
    :cond_b
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_d

    .line 5014
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5015
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 5018
    :cond_c
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 5022
    :cond_d
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 5024
    :cond_e
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5025
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_f

    .line 5026
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_0

    .line 5028
    :cond_f
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 5033
    :cond_10
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_12

    .line 5037
    :cond_11
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->showCompsingWindow()V

    .line 5039
    :cond_12
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5040
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 5043
    :cond_13
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0
.end method

.method public showContactDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 10
    .parameter "okListener"
    .parameter "candId"

    .prologue
    const v9, 0x7f0b003b

    const v8, 0x7f0b0029

    .line 4148
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4151
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v6, v6, p2

    iget v2, v6, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->dataCount:I

    .line 4152
    .local v2, itemCount:I
    new-array v3, v2, [Ljava/lang/String;

    .line 4154
    .local v3, items:[Ljava/lang/CharSequence;
    iput p2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSelectedContact:I

    .line 4156
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 4157
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->data:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v3, v1

    .line 4160
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->mimeType:[Ljava/lang/String;

    aget-object v6, v6, v1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4161
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->dataType:[I

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_0

    .line 4223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 4156
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4163
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0024

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto :goto_1

    .line 4166
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0028

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto :goto_1

    .line 4169
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b002f

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto :goto_1

    .line 4172
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0023

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4175
    :pswitch_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0022

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4178
    :pswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b002b

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4181
    :pswitch_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4184
    :pswitch_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b001e

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4187
    :pswitch_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b001f

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4190
    :pswitch_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0020

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4193
    :pswitch_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0025

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4196
    :pswitch_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0026

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4199
    :pswitch_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b002a

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4202
    :pswitch_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b002c

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4205
    :pswitch_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b002d

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4208
    :pswitch_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b002e

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4211
    :pswitch_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0030

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4214
    :pswitch_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0031

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4217
    :pswitch_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b001d

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4220
    :pswitch_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0027

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4227
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->mimeType:[Ljava/lang/String;

    aget-object v6, v6, v1

    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4228
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->dataType:[I

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_1

    .line 4242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4230
    :pswitch_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b003d

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4233
    :pswitch_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0040

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4236
    :pswitch_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4239
    :pswitch_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b003e

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_1

    .line 4249
    :cond_2
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4250
    invoke-virtual {v0, v3, p1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4251
    const v6, 0x7f0b0032

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    .line 4254
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 4255
    .local v5, window:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 4256
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4257
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4258
    const/16 v6, 0x7dc

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4262
    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4263
    const/high16 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 4266
    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 4268
    return-void

    .line 4260
    :cond_3
    const/16 v6, 0x3eb

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2

    .line 4161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 4228
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public showDelUdbDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter "okListener"

    .prologue
    .line 5672
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5673
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .line 5674
    const v3, 0x104000a

    invoke-virtual {v0, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5675
    :cond_0
    const/high16 v3, 0x104

    new-instance v4, Lcom/samsung/inputmethod/SamsungIME$3;

    invoke-direct {v4, p0}, Lcom/samsung/inputmethod/SamsungIME$3;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5680
    new-instance v3, Lcom/samsung/inputmethod/SamsungIME$4;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/SamsungIME$4;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 5685
    new-instance v3, Lcom/samsung/inputmethod/SamsungIME$5;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/SamsungIME$5;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 5698
    const v3, 0x7f0b0033

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5699
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    .line 5700
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 5701
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5702
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5703
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5704
    const/16 v3, 0x7dc

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5709
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5710
    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 5711
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 5712
    return-void

    .line 5706
    :cond_1
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method public showIMESettingMenu()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5862
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 5863
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 5865
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->launchSettings()V

    .line 5875
    return-void
.end method

.method public showInputMethodSelectingMenu()V
    .locals 1

    .prologue
    .line 5498
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 5500
    return-void
.end method

.method public showOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 5753
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5754
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5755
    const v5, 0x7f020002

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5759
    const/high16 v5, 0x104

    new-instance v6, Lcom/samsung/inputmethod/SamsungIME$7;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/SamsungIME$7;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5767
    new-instance v5, Lcom/samsung/inputmethod/SamsungIME$8;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/SamsungIME$8;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 5776
    new-instance v5, Lcom/samsung/inputmethod/SamsungIME$9;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/SamsungIME$9;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 5788
    const v5, 0x7f0b0002

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5789
    .local v2, itemSettings:Ljava/lang/CharSequence;
    const v5, 0x7f0b0003

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5790
    .local v1, itemInputMethod:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v1, v5, v7

    new-instance v6, Lcom/samsung/inputmethod/SamsungIME$10;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/SamsungIME$10;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5808
    const/high16 v5, 0x7f0b

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5809
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 5810
    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 5811
    .local v4, window:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 5812
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5813
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5814
    const/16 v5, 0x7dc

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5818
    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5819
    const/high16 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 5820
    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 5821
    return-void

    .line 5816
    :cond_0
    const/16 v5, 0x3eb

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method public startVoiceListening()V
    .locals 1

    .prologue
    .line 4750
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4751
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->startVoiceRecognition()V

    .line 4753
    :cond_0
    return-void
.end method

.method public updateComposingViewDisplay()V
    .locals 1

    .prologue
    .line 6942
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->updateComposingViewDisplay()V

    .line 6943
    return-void
.end method

.method public updateContactInfoToCandidate(Ljava/lang/String;)I
    .locals 20
    .parameter "inputSpell"

    .prologue
    .line 4018
    if-nez p1, :cond_0

    .line 4019
    const/4 v3, 0x0

    .line 4142
    :goto_0
    return v3

    .line 4021
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 4022
    const/4 v3, 0x0

    goto :goto_0

    .line 4026
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mCandId:I

    if-ltz v3, :cond_2

    .line 4027
    const/4 v3, 0x0

    goto :goto_0

    .line 4033
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->resetContactInfo()V

    .line 4035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->EMAIL_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4036
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4037
    .local v1, cr:Landroid/content/ContentResolver;
    if-nez v1, :cond_3

    .line 4038
    const-string v3, "SamsungIME"

    const-string v4, "updateContactInfoToCandidate() return 0 becaue cr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    const/4 v3, 0x0

    goto :goto_0

    .line 4042
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getContactProviderStatus()I

    move-result v3

    if-eqz v3, :cond_4

    .line 4043
    const-string v3, "SamsungIME"

    const-string v4, "updateContactInfoToCandidate() return 0 becaue ProviderStatus is not STATUS_NORMAL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    const/4 v3, 0x0

    goto :goto_0

    .line 4047
    :cond_4
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4050
    .local v9, cur:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 4051
    .local v8, contactDataIndex:I
    const/4 v12, 0x0

    .line 4052
    .local v12, dataCount:I
    const/4 v15, 0x0

    .line 4054
    .local v15, doNotSave:Z
    if-nez v9, :cond_5

    .line 4055
    const/4 v3, 0x0

    goto :goto_0

    .line 4058
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 4059
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4060
    const-string v3, "contact_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 4061
    .local v16, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v14, v3, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->contactId:Ljava/lang/String;

    .line 4063
    .local v14, dbid:Ljava/lang/String;
    if-eqz v14, :cond_b

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 4109
    .end local v14           #dbid:Ljava/lang/String;
    .end local v16           #id:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v3, v3, v8

    iput v12, v3, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->dataCount:I

    .line 4112
    if-gtz v12, :cond_7

    if-lez v8, :cond_8

    .line 4115
    :cond_7
    const/4 v10, 0x6

    .line 4117
    .local v10, cutLength:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v10, :cond_f

    .line 4118
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4119
    .local v19, parsedName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4121
    .local v7, buf:Ljava/lang/StringBuffer;
    const/16 v3, 0x2026

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4122
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/4 v4, 0x7

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->imXT9CHNAddOneWordToCandsList(Ljava/lang/String;I)Z

    .line 4128
    .end local v7           #buf:Ljava/lang/StringBuffer;
    .end local v19           #parsedName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactDataCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactDataCount:I

    .line 4130
    if-lez v12, :cond_8

    if-nez v8, :cond_8

    .line 4131
    add-int/lit8 v8, v8, 0x1

    .line 4135
    .end local v10           #cutLength:I
    :cond_8
    if-eqz v9, :cond_9

    .line 4136
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4139
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactDataCount:I

    if-nez v3, :cond_a

    .line 4140
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->resetContactInfo()V

    .line 4142
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactDataCount:I

    goto/16 :goto_0

    .line 4066
    .restart local v14       #dbid:Ljava/lang/String;
    .restart local v16       #id:Ljava/lang/String;
    :cond_b
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4070
    .local v18, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v3, v3, v8

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->contactId:Ljava/lang/String;

    .line 4071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v3, v3, v8

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->name:Ljava/lang/String;

    .line 4074
    const-string v3, "mimetype"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 4076
    .local v17, mimeType:Ljava/lang/String;
    const-string v3, "data2"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 4078
    .local v13, dataType:I
    const-string v3, "data1"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4082
    .local v11, data:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4091
    :cond_c
    :goto_3
    if-nez v15, :cond_d

    .line 4095
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->data:[Ljava/lang/String;

    aput-object v11, v3, v12

    .line 4096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->dataType:[I

    aput v13, v3, v12

    .line 4097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->mimeType:[Ljava/lang/String;

    aput-object v17, v3, v12

    .line 4100
    add-int/lit8 v12, v12, 0x1

    .line 4103
    :cond_d
    const/4 v15, 0x0

    .line 4105
    goto/16 :goto_1

    .line 4085
    :cond_e
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 4089
    const/4 v15, 0x1

    goto :goto_3

    .line 4126
    .end local v11           #data:Ljava/lang/String;
    .end local v13           #dataType:I
    .end local v14           #dbid:Ljava/lang/String;
    .end local v16           #id:Ljava/lang/String;
    .end local v17           #mimeType:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .restart local v10       #cutLength:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/SamsungIME;->mContactData:[Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/samsung/inputmethod/SamsungIME$contactInfoItem;->name:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->imXT9CHNAddOneWordToCandsList(Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public updateIcon(I)V
    .locals 0
    .parameter "iconId"

    .prologue
    .line 5105
    return-void
.end method

.method public updateUIIFLocaleChanged()V
    .locals 1

    .prologue
    .line 6308
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isLocaleChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6309
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->resetCachedSkb()V

    .line 6311
    :cond_0
    return-void
.end method

.method public updateXT9Status()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 6070
    const-string v2, ""

    .line 6071
    .local v2, xt9Lan:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHK()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6072
    const-string v2, "zh_HK"

    .line 6083
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->startSamsungDecoderService()Z

    .line 6084
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setXT9Language(Ljava/lang/String;)V

    .line 6087
    const/4 v1, 0x1

    .line 6088
    .local v1, keyboardType:Z
    const/4 v0, 0x0

    .line 6089
    .local v0, inputMode:I
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6090
    const/4 v1, 0x0

    .line 6097
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6099
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Stroke()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6100
    const/4 v0, 0x2

    .line 6126
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getDecoderService()Lcom/samsung/inputmethod/ISamsungIMEDecoderService;

    move-result-object v3

    if-nez v3, :cond_d

    .line 6146
    :goto_3
    return-void

    .line 6073
    .end local v0           #inputMode:I
    .end local v1           #keyboardType:Z
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTW()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6074
    const-string v2, "zh_TW"

    goto :goto_0

    .line 6075
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6076
    const-string v2, "en"

    goto :goto_0

    .line 6078
    :cond_5
    const-string v2, "zh_CN"

    goto :goto_0

    .line 6092
    .restart local v0       #inputMode:I
    .restart local v1       #keyboardType:Z
    :cond_6
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6093
    const/4 v1, 0x1

    goto :goto_1

    .line 6103
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isCangjieMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6104
    const/4 v0, 0x3

    goto :goto_2

    .line 6105
    :cond_8
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQuickCangjieMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6106
    const/4 v0, 0x4

    goto :goto_2

    .line 6107
    :cond_9
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6108
    const/4 v0, 0x0

    goto :goto_2

    .line 6110
    :cond_a
    const/4 v0, 0x1

    goto :goto_2

    .line 6115
    :cond_b
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6118
    if-ne v1, v5, :cond_c

    .line 6119
    const/4 v0, 0x7

    goto :goto_2

    .line 6121
    :cond_c
    const/4 v0, 0x6

    goto :goto_2

    .line 6129
    :cond_d
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3, v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setXT9InputMode(IZ)V

    .line 6133
    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    .line 6134
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->strokeEnableComponent(Z)V

    .line 6136
    :cond_e
    if-ne v0, v5, :cond_f

    .line 6137
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFuzzyPinyinState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mohuPinyinEnable(I)V

    .line 6139
    :cond_f
    if-nez v1, :cond_11

    if-eq v0, v5, :cond_10

    if-nez v0, :cond_11

    .line 6141
    :cond_10
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getErrorCorrect()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->errorCorrectEnable(Z)V

    .line 6143
    :cond_11
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getMdbPrority()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setMdbProrityHigh(Z)V

    .line 6144
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFullSentence()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->enableFullSentence(Z)V

    goto/16 :goto_3
.end method
