.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;
.super Ljava/lang/Object;
.source "SimeSkbMultiModalManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeInputModeSwitcher"


# instance fields
.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 0
    .parameter "imeService"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 42
    return-void
.end method


# virtual methods
.method public handleMultiModalKey(I)V
    .locals 4
    .parameter "multiModalKeyCode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    const/4 v0, 0x0

    .line 200
    .local v0, multiModalStatus:I
    const/16 v1, -0x75

    if-eq p1, v1, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->setMultiModalState(I)V

    .line 204
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getMultiModalStatus()I

    move-result v0

    .line 207
    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    :pswitch_0
    return-void

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 211
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->ClearAllPopupMenu()V

    .line 212
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->showIMESettingMenu()V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->handleClipboardKey()V

    goto :goto_0

    .line 222
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 224
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToKeypadModeByToggleKey()I

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToHandwritingModeByToggleKey()I

    goto :goto_0

    .line 232
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->isVoiceInputEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v1, v2, :cond_2

    .line 233
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->startVoiceListening()V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 236
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->ClearAllPopupMenu()V

    .line 237
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->showIMESettingMenu()V

    goto :goto_0

    .line 243
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->handleOcrKey()V

    goto :goto_0

    .line 248
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 249
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v2, ","

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 254
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 255
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v2, "?"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 260
    :pswitch_8
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 261
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v2, "!"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 266
    :pswitch_9
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 267
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v2, "\'"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 207
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
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 46
    return-void
.end method

.method public setMultiModalState(I)V
    .locals 5
    .parameter "keyCode"

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isVoiceInputEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 129
    .local v0, isVoiceValid:Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 182
    :pswitch_0
    if-eqz v0, :cond_9

    .line 183
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    .line 189
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->updateToggleStates()V

    .line 191
    return-void

    .end local v0           #isVoiceValid:Z
    :cond_0
    move v0, v2

    .line 126
    goto :goto_0

    .line 131
    .restart local v0       #isVoiceValid:Z
    :pswitch_1
    if-eqz v0, :cond_1

    .line 132
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 134
    :cond_1
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 137
    :pswitch_2
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 140
    :pswitch_3
    if-eqz v0, :cond_2

    .line 141
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 143
    :cond_2
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 146
    :pswitch_4
    if-eqz v0, :cond_3

    .line 147
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 149
    :cond_3
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 152
    :pswitch_5
    if-eqz v0, :cond_4

    .line 153
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 155
    :cond_4
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 158
    :pswitch_6
    if-eqz v0, :cond_5

    .line 159
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 161
    :cond_5
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 164
    :pswitch_7
    if-eqz v0, :cond_6

    .line 165
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 167
    :cond_6
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 170
    :pswitch_8
    if-eqz v0, :cond_7

    .line 171
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 173
    :cond_7
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 176
    :pswitch_9
    if-eqz v0, :cond_8

    .line 177
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 179
    :cond_8
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 185
    :cond_9
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch -0x81
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updateMultiModalState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isVoiceInputEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 53
    .local v0, isVoiceValid:Z
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getMultiModalStatus()I

    move-result v1

    .line 55
    .local v1, multiModalStatus:I
    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_1
    :pswitch_0
    return-void

    .end local v0           #isVoiceValid:Z
    .end local v1           #multiModalStatus:I
    :cond_0
    move v0, v3

    .line 50
    goto :goto_0

    .line 58
    .restart local v0       #isVoiceValid:Z
    .restart local v1       #multiModalStatus:I
    :pswitch_1
    if-eqz v0, :cond_1

    .line 59
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 61
    :cond_1
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 66
    :pswitch_2
    if-eqz v0, :cond_2

    .line 67
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 69
    :cond_2
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 74
    :pswitch_3
    if-eqz v0, :cond_3

    .line 75
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 77
    :cond_3
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 84
    :pswitch_4
    if-eqz v0, :cond_4

    .line 85
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 87
    :cond_4
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 92
    :pswitch_5
    if-eqz v0, :cond_5

    .line 93
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 95
    :cond_5
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 100
    :pswitch_6
    if-eqz v0, :cond_6

    .line 101
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 103
    :cond_6
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 108
    :pswitch_7
    if-eqz v0, :cond_7

    .line 109
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 111
    :cond_7
    const/16 v2, 0x11

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 116
    :pswitch_8
    if-eqz v0, :cond_8

    .line 117
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 119
    :cond_8
    const/16 v2, 0x12

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
