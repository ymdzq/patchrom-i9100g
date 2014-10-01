.class Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SamsungIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/SamsungIME;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, action:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const-string v23, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 449
    const-string v23, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 455
    .local v20, reason:Ljava/lang/String;
    if-eqz v20, :cond_2

    const-string v23, "lock"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 459
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->ClearAllPopupMenu()V

    .line 460
    if-eqz v20, :cond_0

    const-string v23, "homekey"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto :goto_0

    .line 465
    .end local v20           #reason:Ljava/lang/String;
    :cond_3
    const-string v23, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v15

    .line 470
    .local v15, info:Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v14

    .line 471
    .local v14, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v15, :cond_0

    if-eqz v14, :cond_0

    iget v0, v15, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v23, v0

    if-eqz v23, :cond_0

    iget v0, v15, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 478
    const/4 v5, 0x0

    .line 479
    .local v5, actraArrageMode:Ljava/lang/String;
    const/4 v7, 0x0

    .line 480
    .local v7, arrangeSplited:I
    const/4 v6, 0x0

    .line 483
    .local v6, arrageUndefined:I
    :try_start_0
    const-class v23, Landroid/content/Intent;

    const-string v24, "EXTRA_ARRANGE_MODE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 484
    .local v12, field:Ljava/lang/reflect/Field;
    invoke-virtual {v12, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6

    .line 491
    .end local v12           #field:Ljava/lang/reflect/Field;
    :goto_1
    :try_start_1
    const-class v23, Landroid/content/res/Configuration;

    const-string v24, "ARRANGE_SPLITED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 492
    .restart local v12       #field:Ljava/lang/reflect/Field;
    invoke-virtual {v12, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    .line 499
    .end local v12           #field:Ljava/lang/reflect/Field;
    :goto_2
    :try_start_2
    const-class v23, Landroid/content/res/Configuration;

    const-string v24, "ARRANGE_UNDEFINED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 500
    .restart local v12       #field:Ljava/lang/reflect/Field;
    invoke-virtual {v12, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    .line 506
    .end local v12           #field:Ljava/lang/reflect/Field;
    :goto_3
    if-eqz v5, :cond_0

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 507
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 509
    .local v18, mode:I
    sget-boolean v23, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v23, :cond_0

    .line 511
    move/from16 v0, v18

    if-ne v0, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->isFloatingKeyboardForMultiWindow()Z

    move-result v23

    if-nez v23, :cond_4

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    invoke-static/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->access$000(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    goto/16 :goto_0

    .line 520
    :cond_4
    move/from16 v0, v18

    if-eq v0, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->isFloatingKeyboardForMultiWindow()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    invoke-static/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->access$000(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    goto/16 :goto_0

    .line 533
    .end local v5           #actraArrageMode:Ljava/lang/String;
    .end local v6           #arrageUndefined:I
    .end local v7           #arrangeSplited:I
    .end local v14           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v15           #info:Landroid/view/inputmethod/EditorInfo;
    .end local v18           #mode:I
    :cond_5
    const-string v23, "ShowClipboard"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    const-string v23, "ShowClipboardDialog"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 536
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v23

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 537
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_0

    .line 540
    :cond_8
    const-string v23, "android.widget.TextView.onCreateContextMenu"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->access$100(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->access$100(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->isShowing()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    invoke-static/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->access$100(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    goto/16 :goto_0

    .line 546
    :cond_9
    const-string v23, "java.com.android.server.InputMethodService.hideInputMethodMenu"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->access$200(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    invoke-static/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->access$000(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    #getter for: Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;
    invoke-static/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->access$300(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWView(Z)V

    goto/16 :goto_0

    .line 551
    :cond_a
    const-string v23, "samsungimehideview"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto/16 :goto_0

    .line 557
    :cond_b
    const-string v23, "com.android.phone.ACTION_NEW_INCOMING_CALL"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto/16 :goto_0

    .line 563
    :cond_c
    const-string v23, "com.samsung.inputmethod.RequestLanguageInfo"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 565
    const/4 v10, 0x0

    .line 566
    .local v10, defaultLanguage:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v3, SelectedCodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const-string v24, "Language"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/samsung/inputmethod/SamsungIME;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 570
    .local v19, pref:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 572
    const-string v23, "Language4"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 573
    .local v22, tw_check:Ljava/lang/Boolean;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 574
    const-string v9, "zh_TW"

    .line 575
    .local v9, code:Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v9           #code:Ljava/lang/String;
    :cond_d
    const-string v23, "Language5"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 579
    .local v13, hk_check:Ljava/lang/Boolean;
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 580
    const-string v9, "zh_HK"

    .line 581
    .restart local v9       #code:Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v9           #code:Ljava/lang/String;
    .end local v13           #hk_check:Ljava/lang/Boolean;
    .end local v22           #tw_check:Ljava/lang/Boolean;
    :cond_e
    const-string v23, "Language1"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 587
    .local v8, chn_check:Ljava/lang/Boolean;
    const-string v23, "Language2"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 588
    .local v17, kor_check:Ljava/lang/Boolean;
    const-string v23, "Language3"

    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 590
    .local v11, eng_check:Ljava/lang/Boolean;
    const-string v23, "%s_%s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "en"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string v26, "US"

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 592
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 594
    const-string v9, "zh_CN"

    .line 595
    .restart local v9       #code:Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .end local v9           #code:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 599
    const-string v9, "ko"

    .line 600
    .restart local v9       #code:Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    .end local v9           #code:Ljava/lang/String;
    :cond_10
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 604
    const-string v9, "en_US"

    .line 605
    .restart local v9       #code:Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    .end local v9           #code:Ljava/lang/String;
    :cond_11
    new-instance v16, Landroid/content/Intent;

    const-string v23, "com.sec.android.gesturepad.Action_InputLan"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v16, intent1:Landroid/content/Intent;
    const-string v23, "defaultLanguage"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string v23, "selectedLanguageList"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 611
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 613
    .end local v3           #SelectedCodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #chn_check:Ljava/lang/Boolean;
    .end local v10           #defaultLanguage:Ljava/lang/String;
    .end local v11           #eng_check:Ljava/lang/Boolean;
    .end local v16           #intent1:Landroid/content/Intent;
    .end local v17           #kor_check:Ljava/lang/Boolean;
    .end local v19           #pref:Landroid/content/SharedPreferences;
    :cond_12
    const-string v23, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 618
    const-string v23, "android.intent.extra.DOCK_STATE"

    const/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 619
    .local v21, state:I
    const/16 v23, 0x9

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #calls: Lcom/samsung/inputmethod/SamsungIME;->settingHWKeyboardConnection(Z)V
    invoke-static/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->access$400(Lcom/samsung/inputmethod/SamsungIME;Z)V

    goto/16 :goto_0

    .line 622
    :cond_13
    if-nez v21, :cond_0

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #calls: Lcom/samsung/inputmethod/SamsungIME;->settingHWKeyboardConnection(Z)V
    invoke-static/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->access$400(Lcom/samsung/inputmethod/SamsungIME;Z)V

    goto/16 :goto_0

    .line 627
    .end local v21           #state:I
    :cond_14
    const-string v23, "android.intent.action.USBHID_KEYBOARD_EVENT"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 632
    const-string v23, "android.intent.extra.device_state"

    const/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 633
    .restart local v21       #state:I
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #calls: Lcom/samsung/inputmethod/SamsungIME;->settingHWKeyboardConnection(Z)V
    invoke-static/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->access$400(Lcom/samsung/inputmethod/SamsungIME;Z)V

    goto/16 :goto_0

    .line 636
    :cond_15
    if-nez v21, :cond_0

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #calls: Lcom/samsung/inputmethod/SamsungIME;->settingHWKeyboardConnection(Z)V
    invoke-static/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->access$400(Lcom/samsung/inputmethod/SamsungIME;Z)V

    goto/16 :goto_0

    .line 641
    .end local v21           #state:I
    :cond_16
    const-string v23, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 646
    const-string v23, "android.bluetooth.profile.extra.STATE"

    const/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 647
    .restart local v21       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    #calls: Lcom/samsung/inputmethod/SamsungIME;->isBTPeripheralConnected()Z
    invoke-static/range {v23 .. v23}, Lcom/samsung/inputmethod/SamsungIME;->access$500(Lcom/samsung/inputmethod/SamsungIME;)Z

    move-result v23

    if-eqz v23, :cond_18

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_17

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 649
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #calls: Lcom/samsung/inputmethod/SamsungIME;->settingHWKeyboardConnection(Z)V
    invoke-static/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->access$400(Lcom/samsung/inputmethod/SamsungIME;Z)V

    goto/16 :goto_0

    .line 650
    :cond_18
    if-eqz v21, :cond_19

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 652
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SamsungIME$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #calls: Lcom/samsung/inputmethod/SamsungIME;->settingHWKeyboardConnection(Z)V
    invoke-static/range {v23 .. v24}, Lcom/samsung/inputmethod/SamsungIME;->access$400(Lcom/samsung/inputmethod/SamsungIME;Z)V

    goto/16 :goto_0

    .line 503
    .end local v21           #state:I
    .restart local v5       #actraArrageMode:Ljava/lang/String;
    .restart local v6       #arrageUndefined:I
    .restart local v7       #arrangeSplited:I
    .restart local v14       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v15       #info:Landroid/view/inputmethod/EditorInfo;
    :catch_0
    move-exception v23

    goto/16 :goto_3

    .line 502
    :catch_1
    move-exception v23

    goto/16 :goto_3

    .line 501
    :catch_2
    move-exception v23

    goto/16 :goto_3

    .line 495
    :catch_3
    move-exception v23

    goto/16 :goto_2

    .line 494
    :catch_4
    move-exception v23

    goto/16 :goto_2

    .line 493
    :catch_5
    move-exception v23

    goto/16 :goto_2

    .line 487
    :catch_6
    move-exception v23

    goto/16 :goto_1

    .line 486
    :catch_7
    move-exception v23

    goto/16 :goto_1

    .line 485
    :catch_8
    move-exception v23

    goto/16 :goto_1
.end method
