.class public Lcom/sec/android/app/FileShareClient/OutboundListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OutboundListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[FileShare][Client]"

.field private static final TAGClass:Ljava/lang/String; = "OutboundListAdapter : "


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mInflator:Landroid/view/LayoutInflater;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileShareClient/Receiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/FileShareClient/Outbound;)V
    .locals 1
    .parameter "context"
    .parameter "outbound"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    .line 37
    iput-object p1, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 39
    invoke-virtual {p2}, Lcom/sec/android/app/FileShareClient/Outbound;->getReceiverList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mItemList:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;Lcom/sec/android/app/FileShareClient/Receiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->showCancelConfirmDialog(Lcom/sec/android/app/FileShareClient/Receiver;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showCancelConfirmDialog(Lcom/sec/android/app/FileShareClient/Receiver;)V
    .locals 3
    .parameter "receiver"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->dismissDialog()V

    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050021

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000a

    new-instance v2, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$3;-><init>(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;Lcom/sec/android/app/FileShareClient/Receiver;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000b

    new-instance v2, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$2;-><init>(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 214
    return-void
.end method


# virtual methods
.method public addItem(Lcom/sec/android/app/FileShareClient/Receiver;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 190
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mInflator:Landroid/view/LayoutInflater;

    const v14, 0x7f040007

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 87
    :cond_0
    const v13, 0x7f070023

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 88
    .local v2, completeLayout:Landroid/widget/LinearLayout;
    const v13, 0x7f070011

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 90
    .local v9, progressLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mItemList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/FileShareClient/Receiver;

    .line 91
    .local v11, receiver:Lcom/sec/android/app/FileShareClient/Receiver;
    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v13

    const/16 v14, 0x3ec

    if-ne v13, v14, :cond_2

    .line 92
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    const v13, 0x7f07001b

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 97
    .local v12, senderName:Landroid/widget/TextView;
    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getDeviceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v13, 0x7f07000e

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 100
    .local v5, fileName:Landroid/widget/TextView;
    if-eqz v5, :cond_1

    .line 101
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getTranferFileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_1
    const v13, 0x7f07001e

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    .local v3, count:Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getCurrentCount()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getTotalCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v13, 0x7f07001f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 108
    .local v10, rate:Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getProgress()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v13, 0x7f07001c

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    .line 111
    .local v7, progress:Landroid/widget/ProgressBar;
    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getProgress()I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 113
    const v13, 0x7f070021

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 114
    .local v1, cancelButton:Landroid/widget/RelativeLayout;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 116
    new-instance v13, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$1;-><init>(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;Lcom/sec/android/app/FileShareClient/Receiver;)V

    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .end local v1           #cancelButton:Landroid/widget/RelativeLayout;
    .end local v3           #count:Landroid/widget/TextView;
    .end local v5           #fileName:Landroid/widget/TextView;
    .end local v7           #progress:Landroid/widget/ProgressBar;
    .end local v10           #rate:Landroid/widget/TextView;
    :goto_0
    return-object p2

    .line 127
    .end local v12           #senderName:Landroid/widget/TextView;
    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    const v13, 0x7f070013

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 132
    .local v4, deviceType:Landroid/widget/ImageView;
    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getDeviceTypeIcon()I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 134
    const v13, 0x7f070015

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 135
    .restart local v12       #senderName:Landroid/widget/TextView;
    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getDeviceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const v13, 0x7f070017

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 139
    .local v6, info:Landroid/widget/TextView;
    const v13, 0x7f070016

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 141
    .local v8, progressItem:Landroid/widget/ProgressBar;
    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 175
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getStatus()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 143
    :sswitch_0
    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getErrorCause()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f050008

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_3
    :goto_1
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 145
    :cond_4
    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getErrorCause()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f050007

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 147
    :cond_5
    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getErrorCause()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f050008

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 152
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f05000d

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getCurrentCount()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 156
    :sswitch_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f05000d

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getCurrentCount()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f05000e

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getTotalCount()I

    move-result v18

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getCurrentCount()I

    move-result v19

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 161
    :sswitch_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f05000d

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getCurrentCount()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f050014

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getTotalCount()I

    move-result v18

    invoke-virtual {v11}, Lcom/sec/android/app/FileShareClient/Receiver;->getCurrentCount()I

    move-result v19

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 166
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f050004

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 171
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f050003

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x3eb -> :sswitch_5
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_1
        0x3ef -> :sswitch_3
    .end sparse-switch
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 66
    if-ltz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->notifyDataSetChanged()V

    .line 70
    :cond_0
    return-void
.end method

.method public showCancelAllConfirmDialog(Lcom/sec/android/app/FileShareClient/Outbound;)V
    .locals 3
    .parameter "outbound"

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->dismissDialog()V

    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050021

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000a

    new-instance v2, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$7;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$7;-><init>(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;Lcom/sec/android/app/FileShareClient/Outbound;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000b

    new-instance v2, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$6;-><init>(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 303
    :cond_0
    return-void
.end method

.method public showSendFileListDialog(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 9
    .parameter
    .parameter "bCompleted"
    .parameter "currentStateText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->dismissDialog()V

    .line 220
    iget-object v7, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 221
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040001

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 224
    .local v4, layout:Landroid/widget/LinearLayout;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x6

    if-ge v7, v8, :cond_0

    .line 225
    const v7, 0x7f070006

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 226
    const v7, 0x7f070008

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 227
    const v7, 0x7f070007

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 235
    .local v5, listLayout:Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 236
    .local v1, file:Ljava/io/File;
    const v7, 0x7f040002

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 237
    .local v6, tv:Landroid/widget/TextView;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    new-instance v7, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$4;

    invoke-direct {v7, p0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$4;-><init>(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 230
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #listLayout:Landroid/widget/LinearLayout;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_0
    const v7, 0x7f070008

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 231
    const v7, 0x7f070006

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 232
    const v7, 0x7f070009

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .restart local v5       #listLayout:Landroid/widget/LinearLayout;
    goto :goto_0

    .line 259
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 262
    if-eqz p2, :cond_2

    .line 263
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 267
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f05000a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$5;

    invoke-direct {v8, p0}, Lcom/sec/android/app/FileShareClient/OutboundListAdapter$5;-><init>(Lcom/sec/android/app/FileShareClient/OutboundListAdapter;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    .line 276
    iget-object v7, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 277
    return-void

    .line 265
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/FileShareClient/OutboundListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f050001

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method
