.class Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;
.super Landroid/os/Handler;
.source "TouchModalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x0

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 74
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    .line 75
    .local v11, mBundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    const-string v2, "WindowWidth"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "KeyboardLanguage"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyboardMode"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "KeyboardWidth"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "KeyboardHeight"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "orientation"

    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "keyboardnkeys"

    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->initialize(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ILjava/lang/String;IIIZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    const-string v1, "KeyboardMode"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_mode:I
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$102(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;I)I

    .line 81
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    const-string v1, "KeyboardLanguage"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_lang:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$202(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    const-string v1, "keyboardnkeys"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_nKeys:I
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$302(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;I)I

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #setter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridInvalidated:Z
    invoke-static {v0, v13}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$402(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;Z)Z

    .line 89
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$500(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_0

    .line 96
    .end local v11           #mBundle:Landroid/os/Bundle;
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridInvalidated:Z
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$400(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    .line 98
    .restart local v11       #mBundle:Landroid/os/Bundle;
    check-cast v7, [[I

    .line 99
    .local v7, grid_local:[[I
    const-string v0, "KeyboardWidth"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 100
    .local v12, width:I
    const-string v0, "KeyboardHeight"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 101
    .local v9, height:I
    if-lez v12, :cond_1

    if-lez v9, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    array-length v0, v0

    if-ne v0, v12, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, v13

    array-length v0, v0

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_mode:I
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$100(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)I

    move-result v0

    const-string v1, "KeyboardMode"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_lang:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$200(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyboardLanguage"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_nKeys:I
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$300(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)I

    move-result v0

    const-string v1, "keyboardnkeys"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 106
    filled-new-array {v12, v9}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #grid_local:[[I
    check-cast v7, [[I

    .line 107
    .restart local v7       #grid_local:[[I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    array-length v0, v0

    if-ge v10, v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, v10

    aget-object v1, v7, v10

    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
    invoke-static {v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v2, v2, v10

    array-length v2, v2

    invoke-static {v0, v13, v1, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 113
    .end local v10           #i:I
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "KeyboardLanguage"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyboardMode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "KeyboardWidth"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "KeyboardHeight"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "keyboardnkeys"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->dump(ZLjava/lang/String;IIII[[I)V

    .line 121
    .end local v7           #grid_local:[[I
    .end local v9           #height:I
    .end local v11           #mBundle:Landroid/os/Bundle;
    .end local v12           #width:I
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #setter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridInvalidated:Z
    invoke-static {v0, v13}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$402(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;Z)Z

    .line 122
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$500(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto/16 :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridInvalidated:Z
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$402(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;Z)Z

    .line 129
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->updateGrid(III)V

    goto/16 :goto_0

    .line 133
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->restore(II)V

    goto/16 :goto_0

    .line 138
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    move-result-object v0

    check-cast v7, [[I

    iput-object v7, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 139
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #setter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridInvalidated:Z
    invoke-static {v0, v13}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$402(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;Z)Z

    .line 140
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;->this$0:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    #getter for: Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->access$500(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto/16 :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
