.class public Landroid/webkit/SelectActionModeCallbackSec;
.super Ljava/lang/Object;
.source "SelectActionModeCallbackSec.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallbackSec"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field public mIsEditable:Z

.field private mRecreate:Z

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .parameter "menu"
    .parameter "visible"
    .parameter "resourceId"

    .prologue
    .line 270
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 271
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 274
    :cond_0
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 69
    :cond_0
    return-void
.end method

.method finish(Z)V
    .locals 0
    .parameter "recreate"

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 74
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 75
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const/16 v7, 0x7530

    const/16 v6, 0x7d0

    const/4 v4, 0x0

    .line 171
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 253
    :goto_0
    return v4

    .line 173
    :sswitch_0
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->cutSelectionSec()V

    .line 174
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 253
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 180
    :sswitch_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->copySelectionSec()Z

    .line 182
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 183
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 187
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 188
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 196
    :sswitch_3
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 197
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "mWebView.getSelectionSec() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, selection:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 202
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "onActionItemClicked: selected string is too long. Cut it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 206
    :cond_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 208
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 212
    .end local v2           #selection:Ljava/lang/StringBuffer;
    :sswitch_4
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    goto :goto_1

    .line 216
    :sswitch_5
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, sel:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 218
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 219
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5, v1, v4}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 224
    .end local v1           #sel:Ljava/lang/String;
    :sswitch_6
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 225
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "mWebView.getSelectionSec() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 229
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 230
    .local v3, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 231
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 234
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, i:Landroid/content/Intent;
    const-string v4, "query"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 237
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 239
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_4

    .line 240
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    :cond_4
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 246
    .end local v0           #i:Landroid/content/Intent;
    .end local v3           #stringBuffer:Ljava/lang/StringBuffer;
    :sswitch_7
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->pasteFromClipboardEx()V

    .line 247
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_0
        0x1020021 -> :sswitch_1
        0x1020022 -> :sswitch_2
        0x102025d -> :sswitch_7
        0x102047a -> :sswitch_4
        0x102047b -> :sswitch_3
        0x102047c -> :sswitch_5
        0x102047d -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 11
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    const v10, 0x1140007

    invoke-virtual {v9, v10, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 84
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 92
    .local v5, context:Landroid/content/Context;
    const-string v9, "clipboard"

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipboardManager;

    move-object v3, v9

    check-cast v3, Landroid/content/ClipboardManager;

    .line 94
    .local v3, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v6

    .line 99
    .local v6, isFocusable:Z
    iget-boolean v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v9, :cond_0

    .line 100
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v9

    iput-boolean v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    .line 103
    :cond_0
    const/4 v7, 0x0

    .line 104
    .local v7, isTypePassword:Z
    const/4 v8, 0x0

    .line 105
    .local v8, variation:I
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v9, :cond_1

    .line 106
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getInputType()I

    move-result v9

    and-int/lit16 v8, v9, 0xff0

    .line 108
    const/16 v9, 0xe0

    if-ne v8, v9, :cond_1

    .line 109
    const/4 v7, 0x1

    .line 114
    :cond_1
    iget-boolean v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x1

    .line 115
    .local v2, canPaste:Z
    :goto_0
    iget-boolean v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-nez v9, :cond_6

    if-eqz v6, :cond_6

    const/4 v1, 0x1

    .line 116
    .local v1, canFind:Z
    :goto_1
    iget-boolean v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v9, :cond_7

    if-nez v7, :cond_7

    const/4 v0, 0x1

    .line 118
    .local v0, canCut:Z
    :goto_2
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->isBrowserApp()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 119
    and-int/2addr v2, v6

    .line 120
    and-int/2addr v1, v6

    .line 121
    and-int/2addr v0, v6

    .line 124
    :cond_2
    const v9, 0x102047c

    invoke-direct {p0, p2, v1, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 125
    const v9, 0x1020022

    invoke-direct {p0, p2, v2, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 126
    const v9, 0x1020020

    invoke-direct {p0, p2, v0, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 128
    iget-boolean v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v9, :cond_3

    .line 129
    const v9, 0x1020021

    invoke-direct {p0, p2, v0, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 130
    const v9, 0x102047b

    invoke-direct {p0, p2, v0, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 131
    const v9, 0x102047d

    invoke-direct {p0, p2, v0, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 133
    :cond_3
    iget-boolean v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    const v10, 0x102025d

    invoke-direct {p0, p2, v9, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 134
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 141
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 142
    .local v4, config:Landroid/content/res/Configuration;
    iget v9, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v9, 0x4

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4

    .line 143
    iget v9, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 144
    const/4 v9, 0x0

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 145
    const/4 v9, 0x1

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 146
    const/4 v9, 0x2

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 147
    const/4 v9, 0x3

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 148
    const/4 v9, 0x4

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 149
    const/4 v9, 0x5

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 160
    :cond_4
    :goto_3
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 161
    const/4 v9, 0x1

    return v9

    .line 114
    .end local v0           #canCut:Z
    .end local v1           #canFind:Z
    .end local v2           #canPaste:Z
    .end local v4           #config:Landroid/content/res/Configuration;
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 115
    .restart local v2       #canPaste:Z
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 116
    .restart local v1       #canFind:Z
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 151
    .restart local v0       #canCut:Z
    .restart local v4       #config:Landroid/content/res/Configuration;
    :cond_8
    const/4 v9, 0x0

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 152
    const/4 v9, 0x1

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 153
    const/4 v9, 0x2

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 154
    const/4 v9, 0x3

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 155
    const/4 v9, 0x4

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 156
    const/4 v9, 0x5

    invoke-interface {p2, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 260
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 266
    :goto_0
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->performSelectionDoneAction()V

    .line 267
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetWebView()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method setWebViewClassic(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "webViewClassic"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    .line 48
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->onSetWebView()V

    .line 49
    return-void
.end method
