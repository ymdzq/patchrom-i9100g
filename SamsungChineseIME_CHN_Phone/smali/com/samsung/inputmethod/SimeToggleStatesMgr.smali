.class public Lcom/samsung/inputmethod/SimeToggleStatesMgr;
.super Ljava/lang/Object;
.source "SimeToggleStatesMgr.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeToggleStatesMgr"


# instance fields
.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mToggle123SymbolOneLine:I

.field private mToggle123modeoff:I

.field private mToggle123modeon:I

.field private mToggleHandwriteABCmode:I

.field private mToggleHandwriteCHNmode:I

.field private mToggleHandwriteHKmode:I

.field private mToggleHandwriteKORmode:I

.field private mToggleHandwriteTWmode:I

.field private mToggleInputLanguageBOTH:I

.field private mToggleInputLanguageCHN:I

.field private mToggleInputLanguageENGONLY:I

.field private mToggleInputLanguageKOR:I

.field private mToggleInputNUMOnly:I

.field private mToggleInputNumSymOnly:I

.field private mToggleLowerCase:I

.field private mTogglePinyin34:I

.field private mToggleRowCn:I

.field private mToggleRowCn_CN_NoVoice:I

.field private mToggleRowCn_EN_NoVoice:I

.field private mToggleRowCn_HK_NoVoice:I

.field private mToggleRowCn_Hk:I

.field private mToggleRowCn_KO_NoVoice:I

.field private mToggleRowCn_TW_NoVoice:I

.field private mToggleRowCn_Tw:I

.field private mToggleRowEmailAddress:I

.field private mToggleRowEn:I

.field private mToggleRowKo:I

.field private mToggleRowUri:I

.field private mToggleStateCangjie_34:I

.field private mToggleStateCangjie_stroke_34:I

.field private mToggleStateCnCand:I

.field private mToggleStateCnHkLanguage:I

.field private mToggleStateCnHkQuickLanguage:I

.field private mToggleStateCnLanguage:I

.field private mToggleStateCnTwLanguage:I

.field private mToggleStateDone:I

.field private mToggleStateEnLanguage:I

.field private mToggleStateGo:I

.field private mToggleStateKoLanguage:I

.field private mToggleStateMultiModal_Clipboard:I

.field private mToggleStateMultiModal_Clipboard_voice:I

.field private mToggleStateMultiModal_Comma:I

.field private mToggleStateMultiModal_Comma_voice:I

.field private mToggleStateMultiModal_Exclamation:I

.field private mToggleStateMultiModal_Exclamation_voice:I

.field private mToggleStateMultiModal_Handwriting:I

.field private mToggleStateMultiModal_Handwriting_voice:I

.field private mToggleStateMultiModal_Ocr:I

.field private mToggleStateMultiModal_Ocr_voice:I

.field private mToggleStateMultiModal_Question:I

.field private mToggleStateMultiModal_Question_voice:I

.field private mToggleStateMultiModal_Quotation:I

.field private mToggleStateMultiModal_Quotation_voice:I

.field private mToggleStateMultiModal_Settings:I

.field private mToggleStateMultiModal_Settings_voice:I

.field private mToggleStateMultiModal_Voice:I

.field private mToggleStateNext:I

.field private mToggleStatePhoneSym:I

.field private mToggleStateSearch:I

.field private mToggleStateSend:I

.field private mToggleStateZhuyin_34:I

.field private mToggleStateZhuyin_stroke_34:I

.field private mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

.field private mToggleStroke34:I

.field private mToggleSymCangjie:I

.field private mToggleSymEnglish:I

.field private mToggleSymKorean:I

.field private mToggleSymPinyin:I

.field private mToggleSymStroke:I

.field private mToggleSymZhuyin:I

.field private mToggleSymbolLock:I

.field private mToggleSymbolUnlock:I

.field private mToggleT9:I

.field private mToggleTempLowerCase:I

.field private mToggleTempUpperCase:I

.field private mToggleToolBar123HighLight:I

.field private mToggleToolBar123Normal:I

.field private mToggleToolBarABCLowerHighLight:I

.field private mToggleToolBarABCLowerNormal:I

.field private mToggleToolBarABCTempUpperHighLight:I

.field private mToggleToolBarABCTempUpperNormal:I

.field private mToggleToolBarABCUpperHighLight:I

.field private mToggleToolBarABCUpperNormal:I

.field private mToggleToolBarENGLowerHighLight:I

.field private mToggleToolBarENGLowerNormal:I

.field private mToggleToolBarENGTempUpperHighLight:I

.field private mToggleToolBarENGTempUpperNormal:I

.field private mToggleToolBarENGUpperHighLight:I

.field private mToggleToolBarENGUpperNormal:I

.field private mToggleToolBarKORHighLight:I

.field private mToggleToolBarPYHighLight:I

.field private mToggleToolBarPYNormal:I

.field private mToggleToolBarSTRHighLight:I

.field private mToggleToolBarSTRNormal:I

.field private mToggleToolBarSYMHighLight:I

.field private mToggleToolBarSYMNormal:I

.field private mToggleUrlPrefix:I

.field private mToggleUrlSuffix:I

.field private mtoggleEmailSymbol:I

.field private mtoggleTone:I

.field private mtoggleUrlSymbol:I


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 2
    .parameter "imeService"
    .parameter "imeInputModeSwitcher"

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    invoke-direct {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    .line 269
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 270
    iput-object p2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 271
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 272
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnCand:I

    .line 274
    const v1, 0x7f0b017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleLowerCase:I

    .line 276
    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleTempLowerCase:I

    .line 278
    const v1, 0x7f0b01cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleTempUpperCase:I

    .line 280
    const v1, 0x7f0b018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStatePhoneSym:I

    .line 282
    const v1, 0x7f0b0171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateGo:I

    .line 284
    const v1, 0x7f0b0173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateSearch:I

    .line 286
    const v1, 0x7f0b0174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateSend:I

    .line 288
    const v1, 0x7f0b0172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateNext:I

    .line 290
    const v1, 0x7f0b0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateDone:I

    .line 293
    const v1, 0x7f0b018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn:I

    .line 294
    const v1, 0x7f0b0196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowEn:I

    .line 295
    const v1, 0x7f0b0198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowKo:I

    .line 297
    const v1, 0x7f0b019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowUri:I

    .line 298
    const v1, 0x7f0b0195

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowEmailAddress:I

    .line 300
    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleT9:I

    .line 302
    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymPinyin:I

    .line 303
    const v1, 0x7f0b01ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymStroke:I

    .line 304
    const v1, 0x7f0b01a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymEnglish:I

    .line 305
    const v1, 0x7f0b01a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymKorean:I

    .line 307
    const v1, 0x7f0b0175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnLanguage:I

    .line 308
    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateEnLanguage:I

    .line 309
    const v1, 0x7f0b017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateKoLanguage:I

    .line 311
    const v1, 0x7f0b018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mTogglePinyin34:I

    .line 312
    const v1, 0x7f0b01a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStroke34:I

    .line 314
    const v1, 0x7f0b01ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleUrlPrefix:I

    .line 315
    const v1, 0x7f0b01cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleUrlSuffix:I

    .line 318
    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleTone:I

    .line 319
    const v1, 0x7f0b01d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleUrlSymbol:I

    .line 320
    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleEmailSymbol:I

    .line 323
    const v1, 0x7f0b0165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123modeon:I

    .line 324
    const v1, 0x7f0b0164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123modeoff:I

    .line 327
    const v1, 0x7f0b01d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteABCmode:I

    .line 328
    const v1, 0x7f0b01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteKORmode:I

    .line 329
    const v1, 0x7f0b01d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteCHNmode:I

    .line 330
    const v1, 0x7f0b01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteHKmode:I

    .line 331
    const v1, 0x7f0b01db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteTWmode:I

    .line 334
    const v1, 0x7f0b01aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymbolLock:I

    .line 335
    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymbolUnlock:I

    .line 340
    const v1, 0x7f0b0178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnTwLanguage:I

    .line 341
    const v1, 0x7f0b0176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnHkLanguage:I

    .line 342
    const v1, 0x7f0b0177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnHkQuickLanguage:I

    .line 345
    const v1, 0x7f0b0193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_Tw:I

    .line 346
    const v1, 0x7f0b0190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_Hk:I

    .line 349
    const v1, 0x7f0b0191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_HK_NoVoice:I

    .line 350
    const v1, 0x7f0b0194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_TW_NoVoice:I

    .line 353
    const v1, 0x7f0b0192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_CN_NoVoice:I

    .line 354
    const v1, 0x7f0b0197

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_EN_NoVoice:I

    .line 355
    const v1, 0x7f0b0199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_KO_NoVoice:I

    .line 358
    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymCangjie:I

    .line 359
    const v1, 0x7f0b01ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymZhuyin:I

    .line 363
    const v1, 0x7f0b0166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCangjie_34:I

    .line 364
    const v1, 0x7f0b016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCangjie_stroke_34:I

    .line 366
    const v1, 0x7f0b01d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateZhuyin_34:I

    .line 367
    const v1, 0x7f0b01d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateZhuyin_stroke_34:I

    .line 369
    const v1, 0x7f0b017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Settings:I

    .line 370
    const v1, 0x7f0b017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Clipboard:I

    .line 371
    const v1, 0x7f0b017d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Handwriting:I

    .line 372
    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Voice:I

    .line 373
    const v1, 0x7f0b017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Ocr:I

    .line 375
    const v1, 0x7f0b0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Comma:I

    .line 376
    const v1, 0x7f0b0182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Question:I

    .line 377
    const v1, 0x7f0b0183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Exclamation:I

    .line 378
    const v1, 0x7f0b0184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Quotation:I

    .line 380
    const v1, 0x7f0b0188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Settings_voice:I

    .line 381
    const v1, 0x7f0b0185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Clipboard_voice:I

    .line 382
    const v1, 0x7f0b0186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Handwriting_voice:I

    .line 383
    const v1, 0x7f0b0187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Ocr_voice:I

    .line 385
    const v1, 0x7f0b0189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Comma_voice:I

    .line 386
    const v1, 0x7f0b018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Question_voice:I

    .line 387
    const v1, 0x7f0b018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Exclamation_voice:I

    .line 388
    const v1, 0x7f0b018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Quotation_voice:I

    .line 411
    const v1, 0x7f0b0163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123SymbolOneLine:I

    .line 414
    const v1, 0x7f0b01c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageCHN:I

    .line 416
    const v1, 0x7f0b01c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageKOR:I

    .line 418
    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageBOTH:I

    .line 421
    const v1, 0x7f0b01c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageENGONLY:I

    .line 424
    const v1, 0x7f0b01c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputNUMOnly:I

    .line 426
    const v1, 0x7f0b01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputNumSymOnly:I

    .line 430
    const v1, 0x7f0b01b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarPYHighLight:I

    .line 432
    const v1, 0x7f0b01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarPYNormal:I

    .line 435
    const v1, 0x7f0b01ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSTRHighLight:I

    .line 437
    const v1, 0x7f0b01bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSTRNormal:I

    .line 440
    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCLowerHighLight:I

    .line 442
    const v1, 0x7f0b01b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCLowerNormal:I

    .line 444
    const v1, 0x7f0b01b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCTempUpperHighLight:I

    .line 446
    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCTempUpperNormal:I

    .line 448
    const v1, 0x7f0b01b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCUpperHighLight:I

    .line 450
    const v1, 0x7f0b01b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCUpperNormal:I

    .line 453
    const v1, 0x7f0b01bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGLowerHighLight:I

    .line 455
    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGLowerNormal:I

    .line 457
    const v1, 0x7f0b01be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGTempUpperHighLight:I

    .line 459
    const v1, 0x7f0b01bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGTempUpperNormal:I

    .line 461
    const v1, 0x7f0b01c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGUpperHighLight:I

    .line 463
    const v1, 0x7f0b01c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGUpperNormal:I

    .line 466
    const v1, 0x7f0b01c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarKORHighLight:I

    .line 468
    const v1, 0x7f0b01c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123HighLight:I

    .line 469
    const v1, 0x7f0b01ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123Normal:I

    .line 471
    const v1, 0x7f0b01cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSYMHighLight:I

    .line 472
    const v1, 0x7f0b01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSYMNormal:I

    .line 474
    return-void
.end method


# virtual methods
.method public getToggleStateForEnter(Landroid/view/inputmethod/EditorInfo;)I
    .locals 5
    .parameter "mEditorInfo"

    .prologue
    .line 487
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v4, 0x400000ff

    and-int v0, v3, v4

    .line 490
    .local v0, action:I
    const/4 v2, 0x0

    .line 492
    .local v2, toggleState:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 493
    iget v2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateGo:I

    .line 509
    :cond_0
    :goto_0
    return v2

    .line 494
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 495
    iget v2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateSearch:I

    goto :goto_0

    .line 496
    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 497
    iget v2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateSend:I

    goto :goto_0

    .line 498
    :cond_3
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 499
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v4, 0xfff000

    and-int v1, v3, v4

    .line 500
    .local v1, f:I
    const/high16 v3, 0x2

    if-eq v1, v3, :cond_0

    const/high16 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 503
    iget v2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateNext:I

    goto :goto_0

    .line 505
    .end local v1           #f:I
    :cond_4
    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    .line 506
    iget v2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateDone:I

    goto :goto_0
.end method

.method public getToggleStateForZhuyinTone()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleTone:I

    return v0
.end method

.method public getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    return-object v0
.end method

.method public getTooggleStateForCnCand()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnCand:I

    return v0
.end method

.method public prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V
    .locals 18
    .parameter "needSkb"
    .parameter "mInputMode"
    .parameter "mRecentLauageInputMode"
    .parameter "mEditorInfo"

    .prologue
    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    .line 519
    if-nez p1, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 520
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwerty:Z

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mKeyStatesNum:I

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mKeyStates:[I

    .line 524
    .local v10, states:[I
    const/4 v11, 0x0

    .line 526
    .local v11, statesNum:I
    const/high16 v16, 0xf

    and-int v8, p2, v16

    .line 527
    .local v8, language:I
    const/high16 v16, 0xf00

    and-int v9, p2, v16

    .line 528
    .local v9, layout:I
    const/high16 v16, 0xf0

    and-int v2, p2, v16

    .line 529
    .local v2, charcase:I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v15, v0, 0xff0

    .line 530
    .local v15, variation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    const/4 v6, 0x1

    .line 532
    .local v6, isLandscape:Z
    :goto_1
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    .line 533
    .local v4, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v16

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->isVoiceInputEnabled()Z

    move-result v16

    if-eqz v16, :cond_11

    const/4 v7, 0x1

    .line 535
    .local v7, isVoiceValid:Z
    :goto_2
    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v3

    .line 537
    .local v3, dim:I
    const/high16 v16, 0x5000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_37

    .line 540
    const/high16 v16, 0x2

    move/from16 v0, v16

    if-ne v0, v8, :cond_15

    .line 541
    if-eqz v7, :cond_12

    const/16 v16, 0x140

    move/from16 v0, v16

    if-eq v3, v0, :cond_12

    const/16 v16, 0xf0

    move/from16 v0, v16

    if-eq v3, v0, :cond_12

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 546
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 547
    add-int/lit8 v11, v11, 0x1

    .line 550
    const/high16 v16, 0x100

    move/from16 v0, v16

    if-ne v0, v9, :cond_13

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwerty:Z

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 678
    :cond_1
    :goto_4
    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_29

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowEmailAddress:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setUrlSuffixShown(Z)V

    .line 697
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isUrlSuffixShown()Z

    move-result v16

    if-eqz v16, :cond_2b

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleUrlSuffix:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 702
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbolLock()Z

    move-result v16

    if-nez v16, :cond_2c

    .line 705
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymbolUnlock:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 710
    :goto_7
    add-int/lit8 v11, v11, 0x1

    .line 713
    const/high16 v16, 0x100

    move/from16 v0, v16

    if-eq v0, v9, :cond_3

    const/high16 v16, 0x300

    move/from16 v0, v16

    if-eq v0, v9, :cond_3

    const/high16 v16, 0x400

    move/from16 v0, v16

    if-ne v0, v9, :cond_4

    .line 714
    :cond_3
    if-eqz v6, :cond_4

    .line 715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123SymbolOneLine:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 716
    add-int/lit8 v11, v11, 0x1

    .line 720
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/samsung/inputmethod/SimeInputModeDef;->getHW123ModeState(I)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2d

    .line 722
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123modeon:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 740
    :cond_5
    :goto_8
    add-int/lit8 v11, v11, 0x1

    .line 742
    const/high16 v16, 0x6000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    const/high16 v16, 0x7000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 744
    :cond_6
    const/high16 v16, 0x3202

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_32

    .line 745
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymStroke:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 762
    :goto_9
    add-int/lit8 v11, v11, 0x1

    .line 773
    :cond_7
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->getMultiModalManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->updateMultiModalState()V

    .line 775
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getMultiModalStatus()I

    move-result v13

    .line 777
    .local v13, toggleState:I
    packed-switch v13, :pswitch_data_0

    .line 893
    :goto_b
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->getToggleStateForEnter(Landroid/view/inputmethod/EditorInfo;)I

    move-result v13

    .line 894
    if-eqz v13, :cond_8

    .line 896
    aput v13, v10, v11

    .line 897
    add-int/lit8 v11, v11, 0x1

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    .line 904
    :cond_8
    invoke-static/range {p4 .. p4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLMode(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v16

    if-eqz v16, :cond_39

    .line 905
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleUrlSymbol:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 906
    add-int/lit8 v11, v11, 0x1

    .line 915
    :cond_9
    :goto_c
    sget-boolean v16, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v16, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v16

    if-eqz v16, :cond_3a

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputNumSymOnly:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 948
    :cond_a
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToolbarModeMgr()Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    move-result-object v14

    .line 950
    .local v14, toolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;
    const/high16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_40

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarPYNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 952
    add-int/lit8 v11, v11, 0x1

    .line 959
    :cond_b
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9On()Z

    move-result v16

    if-eqz v16, :cond_43

    .line 960
    const/16 v16, 0x100

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_41

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGLowerNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 962
    add-int/lit8 v11, v11, 0x1

    .line 987
    :cond_c
    :goto_f
    const/16 v16, 0x1000

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 991
    :cond_d
    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_46

    .line 993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123Normal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 994
    add-int/lit8 v11, v11, 0x1

    .line 1001
    :cond_e
    :goto_10
    const/high16 v16, -0x1000

    and-int v16, v16, p2

    sparse-switch v16, :sswitch_data_0

    .line 1070
    .end local v14           #toolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;
    :cond_f
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v11, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mKeyStatesNum:I

    goto/16 :goto_0

    .line 530
    .end local v3           #dim:I
    .end local v4           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v6           #isLandscape:Z
    .end local v7           #isVoiceValid:Z
    .end local v13           #toggleState:I
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 533
    .restart local v4       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .restart local v6       #isLandscape:Z
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 544
    .restart local v3       #dim:I
    .restart local v7       #isVoiceValid:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_CN_NoVoice:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_3

    .line 553
    :cond_13
    const/high16 v16, 0x200

    move/from16 v0, v16

    if-ne v0, v9, :cond_1

    .line 554
    const/high16 v16, 0x3202

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_14

    .line 555
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mTogglePinyin34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 556
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 557
    :cond_14
    const/high16 v16, 0x1202

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 558
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStroke34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 559
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 562
    :cond_15
    const/high16 v16, 0x4

    move/from16 v0, v16

    if-ne v0, v8, :cond_19

    .line 565
    if-eqz v7, :cond_16

    const/16 v16, 0x140

    move/from16 v0, v16

    if-eq v3, v0, :cond_16

    const/16 v16, 0xf0

    move/from16 v0, v16

    if-eq v3, v0, :cond_16

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_Tw:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 569
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnTwLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 570
    add-int/lit8 v11, v11, 0x1

    .line 573
    const/high16 v16, 0x100

    move/from16 v0, v16

    if-ne v0, v9, :cond_17

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwerty:Z

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    goto/16 :goto_4

    .line 568
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_TW_NoVoice:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto :goto_12

    .line 577
    :cond_17
    const/high16 v16, 0x200

    move/from16 v0, v16

    if-ne v0, v9, :cond_1

    .line 578
    const/high16 v16, 0x3204

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_18

    .line 580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateZhuyin_34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 581
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 582
    :cond_18
    const/high16 v16, 0x2204

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 583
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateZhuyin_stroke_34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 584
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 588
    :cond_19
    const/high16 v16, 0x5

    move/from16 v0, v16

    if-ne v0, v8, :cond_20

    .line 590
    if-eqz v7, :cond_1b

    const/16 v16, 0x140

    move/from16 v0, v16

    if-eq v3, v0, :cond_1b

    const/16 v16, 0xf0

    move/from16 v0, v16

    if-eq v3, v0, :cond_1b

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_Hk:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 595
    :goto_13
    const/high16 v16, -0x6000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1c

    .line 596
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnHkQuickLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 597
    add-int/lit8 v11, v11, 0x1

    .line 609
    :cond_1a
    :goto_14
    const/high16 v16, 0x100

    move/from16 v0, v16

    if-ne v0, v9, :cond_1e

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwerty:Z

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    goto/16 :goto_4

    .line 593
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_HK_NoVoice:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto :goto_13

    .line 598
    :cond_1c
    const/high16 v16, -0x7000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1d

    .line 599
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnHkLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 600
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 601
    :cond_1d
    const/high16 v16, 0x3000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a

    .line 602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnHkLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 603
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 616
    :cond_1e
    const/high16 v16, 0x200

    move/from16 v0, v16

    if-ne v0, v9, :cond_1

    .line 617
    const/high16 v16, 0x3205

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_1f

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCangjie_34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 619
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 621
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCangjie_stroke_34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 622
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 628
    :cond_20
    const/high16 v16, 0x1

    move/from16 v0, v16

    if-ne v0, v8, :cond_25

    .line 629
    if-eqz v7, :cond_21

    const/16 v16, 0x140

    move/from16 v0, v16

    if-eq v3, v0, :cond_21

    const/16 v16, 0xf0

    move/from16 v0, v16

    if-eq v3, v0, :cond_21

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowEn:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 634
    :goto_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateEnLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 635
    add-int/lit8 v11, v11, 0x1

    .line 637
    const/high16 v16, 0x20

    move/from16 v0, v16

    if-ne v0, v2, :cond_22

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 639
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleTempUpperCase:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 648
    :goto_16
    add-int/lit8 v11, v11, 0x1

    .line 650
    const/high16 v16, 0x100

    move/from16 v0, v16

    if-ne v0, v9, :cond_24

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwerty:Z

    goto/16 :goto_4

    .line 632
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_EN_NoVoice:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto :goto_15

    .line 640
    :cond_22
    const/high16 v16, 0x30

    move/from16 v0, v16

    if-ne v0, v2, :cond_23

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 642
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleTempLowerCase:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto :goto_16

    .line 644
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleLowerCase:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto :goto_16

    .line 652
    :cond_24
    const/high16 v16, 0x200

    move/from16 v0, v16

    if-ne v0, v9, :cond_1

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9On()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 655
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleT9:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 656
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 659
    :cond_25
    const/high16 v16, 0x3

    move/from16 v0, v16

    if-ne v0, v8, :cond_1

    .line 660
    if-eqz v7, :cond_27

    const/16 v16, 0x140

    move/from16 v0, v16

    if-eq v3, v0, :cond_27

    const/16 v16, 0xf0

    move/from16 v0, v16

    if-eq v3, v0, :cond_27

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowKo:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 664
    :goto_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateKoLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 665
    add-int/lit8 v11, v11, 0x1

    .line 667
    const/high16 v16, 0x30

    move/from16 v0, v16

    if-eq v0, v2, :cond_26

    const/high16 v16, 0x20

    move/from16 v0, v16

    if-ne v0, v2, :cond_28

    .line 668
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleTempLowerCase:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 675
    :goto_18
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 663
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_KO_NoVoice:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto :goto_17

    .line 671
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 672
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleLowerCase:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto :goto_18

    .line 681
    :cond_29
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowUri:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 685
    .local v5, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_2

    .line 686
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 687
    .local v12, text:Ljava/lang/CharSequence;
    if-eqz v12, :cond_2a

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-eqz v16, :cond_2a

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setUrlSuffixShown(Z)V

    goto/16 :goto_5

    .line 690
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setUrlSuffixShown(Z)V

    goto/16 :goto_5

    .line 700
    .end local v5           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v12           #text:Ljava/lang/CharSequence;
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleUrlPrefix:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_6

    .line 708
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymbolLock:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_7

    .line 728
    :cond_2d
    const/high16 v16, 0x1

    move/from16 v0, v16

    if-ne v0, v8, :cond_2e

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteABCmode:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_8

    .line 730
    :cond_2e
    const/high16 v16, 0x3

    move/from16 v0, v16

    if-ne v0, v8, :cond_2f

    .line 731
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteKORmode:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_8

    .line 732
    :cond_2f
    const/high16 v16, 0x2

    move/from16 v0, v16

    if-ne v0, v8, :cond_30

    .line 733
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteCHNmode:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_8

    .line 734
    :cond_30
    const/high16 v16, 0x4

    move/from16 v0, v16

    if-ne v0, v8, :cond_31

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteTWmode:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_8

    .line 736
    :cond_31
    const/high16 v16, 0x5

    move/from16 v0, v16

    if-ne v0, v8, :cond_5

    .line 737
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteHKmode:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_8

    .line 746
    :cond_32
    const/high16 v16, 0x1202

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_33

    .line 747
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymPinyin:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_9

    .line 748
    :cond_33
    const/high16 v16, 0x1203

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_34

    .line 749
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymKorean:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_9

    .line 753
    :cond_34
    const/high16 v16, 0x3204

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_35

    .line 754
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymZhuyin:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_9

    .line 755
    :cond_35
    const/high16 v16, 0x3205

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_36

    .line 756
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymCangjie:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_9

    .line 760
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymEnglish:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_9

    .line 765
    :cond_37
    const/high16 v16, 0x20

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 766
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStatePhoneSym:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 767
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    .line 780
    .restart local v13       #toggleState:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Settings:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 781
    add-int/lit8 v11, v11, 0x1

    .line 782
    goto/16 :goto_b

    .line 785
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Clipboard:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 786
    add-int/lit8 v11, v11, 0x1

    .line 787
    goto/16 :goto_b

    .line 790
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Handwriting:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 791
    add-int/lit8 v11, v11, 0x1

    .line 792
    goto/16 :goto_b

    .line 795
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->isVoiceInputEnabled()Z

    move-result v16

    if-eqz v16, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v16

    sget-object v17, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_38

    .line 796
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 797
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    .line 799
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Settings:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 800
    add-int/lit8 v11, v11, 0x1

    .line 802
    goto/16 :goto_b

    .line 804
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Ocr:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 805
    add-int/lit8 v11, v11, 0x1

    .line 806
    goto/16 :goto_b

    .line 809
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Comma:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 810
    add-int/lit8 v11, v11, 0x1

    .line 811
    goto/16 :goto_b

    .line 814
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Question:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 815
    add-int/lit8 v11, v11, 0x1

    .line 816
    goto/16 :goto_b

    .line 819
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Exclamation:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 820
    add-int/lit8 v11, v11, 0x1

    .line 821
    goto/16 :goto_b

    .line 824
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Quotation:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 825
    add-int/lit8 v11, v11, 0x1

    .line 826
    goto/16 :goto_b

    .line 829
    :pswitch_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Settings_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 830
    add-int/lit8 v11, v11, 0x1

    .line 831
    goto/16 :goto_b

    .line 834
    :pswitch_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Clipboard_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 835
    add-int/lit8 v11, v11, 0x1

    .line 836
    goto/16 :goto_b

    .line 839
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Handwriting_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 840
    add-int/lit8 v11, v11, 0x1

    .line 841
    goto/16 :goto_b

    .line 844
    :pswitch_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Ocr_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 845
    add-int/lit8 v11, v11, 0x1

    .line 846
    goto/16 :goto_b

    .line 849
    :pswitch_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Comma_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 850
    add-int/lit8 v11, v11, 0x1

    .line 851
    goto/16 :goto_b

    .line 854
    :pswitch_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Question_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 855
    add-int/lit8 v11, v11, 0x1

    .line 856
    goto/16 :goto_b

    .line 859
    :pswitch_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Exclamation_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 860
    add-int/lit8 v11, v11, 0x1

    .line 861
    goto/16 :goto_b

    .line 864
    :pswitch_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Quotation_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 865
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    .line 908
    :cond_39
    invoke-static/range {p4 .. p4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 909
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleEmailSymbol:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 910
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c

    .line 922
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v16

    if-eqz v16, :cond_3b

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputNUMOnly:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_d

    .line 926
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEngNumSymModeOnly()Z

    move-result v16

    if-eqz v16, :cond_3c

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageENGONLY:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_d

    .line 930
    :cond_3c
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v16

    if-eqz v16, :cond_3d

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v16

    if-eqz v16, :cond_3d

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageBOTH:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_d

    .line 934
    :cond_3d
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v16

    if-eqz v16, :cond_3e

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageKOR:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_d

    .line 938
    :cond_3e
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v16

    if-eqz v16, :cond_3f

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageCHN:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_d

    .line 943
    :cond_3f
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v16

    if-nez v16, :cond_a

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v16

    if-nez v16, :cond_a

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageENGONLY:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_d

    .line 953
    .restart local v14       #toolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;
    :cond_40
    const/high16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 954
    const-string v16, "SimeToggleStatesMgr"

    const-string v17, "---------AAAAAAAAAAAAAaaaaa"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSTRNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 956
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_e

    .line 964
    :cond_41
    const/16 v16, 0x200

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_42

    .line 965
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGTempUpperNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 966
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_f

    .line 968
    :cond_42
    const/16 v16, 0x300

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 969
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGUpperNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 970
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_f

    .line 974
    :cond_43
    const/16 v16, 0x100

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_44

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCLowerNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 976
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_f

    .line 977
    :cond_44
    const/16 v16, 0x200

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_45

    .line 978
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCTempUpperNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 979
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_f

    .line 981
    :cond_45
    const/16 v16, 0x300

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 982
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCUpperNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 983
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_f

    .line 996
    :cond_46
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 997
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSYMNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 998
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_10

    .line 1003
    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSTRHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1004
    add-int/lit8 v11, v11, 0x1

    .line 1005
    goto/16 :goto_11

    .line 1007
    :sswitch_1
    const/high16 v16, 0x2

    move/from16 v0, v16

    if-eq v8, v0, :cond_47

    const/high16 v16, 0x4

    move/from16 v0, v16

    if-ne v8, v0, :cond_48

    .line 1009
    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarPYHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1010
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1011
    :cond_48
    const/high16 v16, 0x3

    move/from16 v0, v16

    if-ne v8, v0, :cond_49

    .line 1012
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarKORHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1013
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1014
    :cond_49
    const/high16 v16, 0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_f

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9On()Z

    move-result v16

    if-eqz v16, :cond_4c

    .line 1016
    const/high16 v16, 0x20

    move/from16 v0, v16

    if-ne v0, v2, :cond_4a

    .line 1017
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGUpperHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1018
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1019
    :cond_4a
    const/high16 v16, 0x30

    move/from16 v0, v16

    if-ne v0, v2, :cond_4b

    .line 1020
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGTempUpperHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1021
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1022
    :cond_4b
    const/high16 v16, 0x10

    move/from16 v0, v16

    if-ne v0, v2, :cond_f

    .line 1023
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGLowerHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1024
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1027
    :cond_4c
    const/high16 v16, 0x20

    move/from16 v0, v16

    if-ne v0, v2, :cond_4d

    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCUpperHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1029
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1030
    :cond_4d
    const/high16 v16, 0x30

    move/from16 v0, v16

    if-ne v0, v2, :cond_4e

    .line 1031
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCTempUpperHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1032
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1033
    :cond_4e
    const/high16 v16, 0x10

    move/from16 v0, v16

    if-ne v0, v2, :cond_f

    .line 1034
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCLowerHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1035
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1041
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSYMHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1042
    add-int/lit8 v11, v11, 0x1

    .line 1043
    goto/16 :goto_11

    .line 1045
    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123HighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1046
    add-int/lit8 v11, v11, 0x1

    .line 1047
    goto/16 :goto_11

    .line 1051
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123HighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1052
    add-int/lit8 v11, v11, 0x1

    .line 1053
    goto/16 :goto_11

    .line 1056
    :sswitch_5
    const/high16 v16, 0xf0

    and-int v16, v16, p2

    const/high16 v17, 0x20

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4f

    .line 1057
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSYMHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1058
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1060
    :cond_4f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123HighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1061
    add-int/lit8 v11, v11, 0x1

    .line 1063
    goto/16 :goto_11

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 1001
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x10000000 -> :sswitch_1
        0x30000000 -> :sswitch_0
        0x50000000 -> :sswitch_5
        0x60000000 -> :sswitch_2
        0x70000000 -> :sswitch_3
    .end sparse-switch
.end method
