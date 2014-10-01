.class Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;
.super Landroid/os/Handler;
.source "SimeHWManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/handwriting/SimeHWManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIThread"
.end annotation


# static fields
.field public static final MSG_CALCULATOR:I = 0x8

.field public static final MSG_CONTACTS:I = 0x9

.field public static final MSG_LUNCHBROWSER:I = 0x6

.field public static final MSG_LUNCHDIAL:I = 0x5

.field public static final MSG_LUNCHMEDIA:I = 0x7

.field public static final MSG_RECOGNIZE:I = 0x1

.field public static final MSG_UPDATE_CANDIDATE:I


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V
    .locals 1
    .parameter

    .prologue
    .line 954
    iput-object p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/high16 v4, 0x1000

    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 975
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1109
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 977
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->isHandwriteInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 981
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$100(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRecgCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 982
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    const v3, 0x7f0b00de

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 994
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->chooseAndUpdate(I)V

    goto :goto_0

    .line 1024
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    #setter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
    invoke-static {v3, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$202(Lcom/samsung/inputmethod/handwriting/SimeHWManager;Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    .line 1026
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->StartTorecognize()V

    .line 1028
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$200(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->clear()V

    .line 1029
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->updateHWCandidates()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1030
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5, v6, v7, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    goto :goto_0

    .line 1050
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    .line 1051
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1052
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dialertab"

    const-string v4, "com.sec.android.app.dialertab.DialerTabActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5, v6, v7, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    goto/16 :goto_0

    .line 1061
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_4
    const-string v2, "about:blank"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1062
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    .line 1063
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1065
    :try_start_1
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1066
    :catch_1
    move-exception v0

    .line 1067
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5, v6, v7, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    goto/16 :goto_0

    .line 1071
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    .line 1072
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1073
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const-string v3, "com.sec.android.app.music"

    const-string v4, "com.sec.android.app.music.list.activity.MpMainTabActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    :try_start_2
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1076
    :catch_2
    move-exception v0

    .line 1077
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5, v6, v7, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    goto/16 :goto_0

    .line 1081
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    .line 1082
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1083
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const-string v3, "com.sec.android.app.calculator"

    const-string v4, "com.sec.android.app.calculator.Calculator"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    :try_start_3
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1086
    :catch_3
    move-exception v0

    .line 1087
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5, v6, v7, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    goto/16 :goto_0

    .line 1091
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    .line 1092
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1093
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const-string v3, "com.android.contacts"

    const-string v4, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    :try_start_4
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1097
    :catch_4
    move-exception v0

    .line 1098
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5, v6, v7, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    goto/16 :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
