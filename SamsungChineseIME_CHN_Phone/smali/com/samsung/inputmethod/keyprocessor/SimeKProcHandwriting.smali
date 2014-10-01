.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcHandwriting.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HandwriteInputProcessor"


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 0
    .parameter "ime"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 40
    return-void
.end method

.method private processKey(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .parameter "event"
    .parameter "realAction"

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processFunctionKeys(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public pickDefaultCandidate()V
    .locals 3

    .prologue
    .line 339
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    .line 340
    .local v1, imestate:Lcom/samsung/inputmethod/SamsungIME$ImeState;
    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_1

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 343
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 344
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 347
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    return-void
.end method

.method public processFunctionKeys(Landroid/view/KeyEvent;Z)Z
    .locals 10
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 151
    const/4 v5, 0x0

    .line 152
    .local v5, result:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    .line 153
    .local v2, imeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 154
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 333
    :goto_0
    return v7

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 157
    .local v4, keyCode:I
    const/4 v3, 0x0

    .line 158
    .local v3, keyChar:I
    const-string v6, ""

    .line 162
    .local v6, text:Ljava/lang/String;
    sparse-switch v4, :sswitch_data_0

    .line 329
    const/4 v5, 0x0

    :cond_1
    :goto_1
    move v7, v5

    .line 333
    goto :goto_0

    .line 164
    :sswitch_0
    if-eqz p2, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processLangKey()V

    .line 169
    :cond_2
    const/4 v5, 0x1

    .line 171
    goto :goto_1

    .line 173
    :sswitch_1
    if-nez p2, :cond_3

    move v7, v8

    .line 174
    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processBackKey()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 181
    :goto_2
    const/4 v5, 0x1

    .line 182
    goto :goto_1

    .line 178
    :cond_4
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 179
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto :goto_2

    .line 184
    :sswitch_2
    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v9, v2, :cond_8

    .line 185
    if-nez p2, :cond_5

    move v7, v8

    .line 186
    goto :goto_0

    .line 188
    :cond_5
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v8

    if-nez v8, :cond_6

    .line 189
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->pickDefaultCandidate()V

    .line 190
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 201
    :goto_3
    const/4 v5, 0x1

    goto :goto_1

    .line 192
    :cond_6
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 193
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->pickDefaultCandidate()V

    .line 194
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_3

    .line 196
    :cond_7
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 198
    .local v0, activeCandNo:I
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v0}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    goto :goto_3

    .line 202
    .end local v0           #activeCandNo:I
    :cond_8
    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v9, v2, :cond_b

    .line 203
    if-nez p2, :cond_9

    move v7, v8

    .line 204
    goto :goto_0

    .line 206
    :cond_9
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v8

    if-nez v8, :cond_a

    .line 207
    const/16 v3, 0x20

    .line 208
    int-to-char v8, v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 209
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 210
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 217
    :goto_4
    const/4 v5, 0x1

    goto :goto_1

    .line 212
    :cond_a
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 215
    .restart local v0       #activeCandNo:I
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v0}, Lcom/samsung/inputmethod/SamsungIME;->onChoiceTouched(I)V

    goto :goto_4

    .line 218
    .end local v0           #activeCandNo:I
    :cond_b
    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v7, v2, :cond_1

    .line 219
    if-nez p2, :cond_c

    move v7, v8

    .line 220
    goto/16 :goto_0

    .line 221
    :cond_c
    const/16 v3, 0x20

    .line 222
    int-to-char v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 223
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 224
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 228
    :sswitch_3
    if-nez p2, :cond_d

    move v7, v8

    .line 229
    goto/16 :goto_0

    .line 230
    :cond_d
    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v9, v2, :cond_e

    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v9, v2, :cond_f

    .line 232
    :cond_e
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 233
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 238
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-lez v8, :cond_10

    sget-boolean v8, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v8, :cond_10

    .line 239
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-interface {v1, v8, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 249
    :goto_5
    const/4 v5, 0x1

    .line 251
    goto/16 :goto_1

    .line 241
    :cond_10
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->simulateKeyEventDownUp(I)V

    goto :goto_5

    .line 253
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 254
    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v9, v2, :cond_13

    .line 255
    if-nez p2, :cond_11

    move v7, v8

    .line 256
    goto/16 :goto_0

    .line 257
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->pickDefaultCandidate()V

    .line 258
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v8

    if-nez v8, :cond_12

    .line 259
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processEnterKey()V

    .line 261
    :cond_12
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 262
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 263
    :cond_13
    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v9, v2, :cond_15

    .line 264
    if-nez p2, :cond_14

    move v7, v8

    .line 265
    goto/16 :goto_0

    .line 266
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processEnterKey()V

    .line 267
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 268
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 269
    :cond_15
    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v7, v2, :cond_1

    .line 270
    if-nez p2, :cond_16

    move v7, v8

    .line 271
    goto/16 :goto_0

    .line 272
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processEnterKey()V

    .line 273
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 277
    :cond_17
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v7

    const/16 v8, 0x17

    invoke-virtual {v7, v8, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 280
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 285
    :sswitch_5
    if-nez p2, :cond_18

    move v7, v8

    .line 286
    goto/16 :goto_0

    .line 287
    :cond_18
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 288
    const/16 v3, 0x2a

    .line 289
    int-to-char v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 290
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 291
    const/4 v5, 0x1

    .line 292
    goto/16 :goto_1

    .line 294
    :sswitch_6
    if-nez p2, :cond_19

    move v7, v8

    .line 295
    goto/16 :goto_0

    .line 296
    :cond_19
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v8

    if-nez v8, :cond_1b

    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 299
    const/16 v3, 0x3002

    .line 303
    :goto_6
    int-to-char v8, v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 304
    if-eqz v1, :cond_1a

    .line 305
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 306
    :cond_1a
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 307
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 308
    const/4 v5, 0x1

    .line 309
    goto/16 :goto_1

    .line 301
    :cond_1b
    const/16 v3, 0x2e

    goto :goto_6

    .line 316
    :sswitch_7
    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v7, v2, :cond_1c

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v7, v2, :cond_1

    .line 319
    :cond_1c
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v7

    invoke-virtual {v7, v4, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 322
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x11 -> :sswitch_5
        0x13 -> :sswitch_7
        0x14 -> :sswitch_7
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x17 -> :sswitch_7
        0x38 -> :sswitch_6
        0x3e -> :sswitch_2
        0x42 -> :sswitch_4
        0x43 -> :sswitch_3
        0xe3 -> :sswitch_0
    .end sparse-switch
.end method

.method public processKeyDown(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, isSoftKey:Z
    const/4 v0, 0x0

    .line 47
    .local v0, bRealAction:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 49
    .local v1, count:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    const/4 v2, 0x1

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 53
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-nez v5, :cond_2

    .line 85
    :cond_1
    :goto_0
    return v3

    .line 59
    :cond_2
    if-eqz v2, :cond_3

    .line 61
    const/4 v0, 0x0

    .line 82
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 83
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isKeyProcessedWhenLong(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 70
    if-lez v1, :cond_4

    move v3, v4

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 74
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isHardKeyProcessedWhenUp(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 75
    const/4 v0, 0x0

    goto :goto_1

    .line 78
    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public processKeyUp(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, isSoftKey:Z
    const/4 v0, 0x0

    .line 94
    .local v0, bRealAction:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 96
    .local v1, count:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    const/4 v2, 0x1

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 100
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-nez v5, :cond_2

    .line 133
    :cond_1
    :goto_0
    return v3

    .line 106
    :cond_2
    if-eqz v2, :cond_3

    .line 108
    const/4 v0, 0x1

    .line 130
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 131
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isKeyProcessedWhenLong(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 117
    if-lez v1, :cond_4

    move v3, v4

    .line 118
    goto :goto_0

    .line 120
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 121
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isHardKeyProcessedWhenUp(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 122
    const/4 v0, 0x1

    goto :goto_1

    .line 125
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
