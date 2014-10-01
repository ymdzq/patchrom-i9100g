.class public Lcom/samsung/inputmethod/touchmodal/TouchModalManager;
.super Ljava/lang/Thread;
.source "TouchModalManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DUMP_GRID:I = 0x1

.field static final INIT_GRID:I = 0x0

.field private static final KEYBOARD_HEIGHT:Ljava/lang/String; = "KeyboardHeight"

.field private static final KEYBOARD_LANGUAGE:Ljava/lang/String; = "KeyboardLanguage"

.field private static final KEYBOARD_MODE:Ljava/lang/String; = "KeyboardMode"

.field private static final KEYBOARD_NKEYS:Ljava/lang/String; = "keyboardnkeys"

.field private static final KEYBOARD_ORIENT:Ljava/lang/String; = "orientation"

.field private static final KEYBOARD_WIDTH:Ljava/lang/String; = "KeyboardWidth"

.field private static final RESET_GRID:I = 0x4

.field private static final RESTORE_GRID:I = 0x3

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_GRID:I = 0x2

.field private static final WINDOW_WIDTH:Ljava/lang/String; = "WindowWidth"

.field private static mTouchModalManager:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;


# instance fields
.field private final data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

.field private grid_lang:Ljava/lang/String;

.field private grid_mode:I

.field private grid_nKeys:I

.field private isGridInvalidated:Z

.field private isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

.field mHandler:Landroid/os/Handler;

.field private mPrevTouchX:I

.field private mPrevTouchY:I

.field public mSoftKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mSoftKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 34
    iput-boolean v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridInvalidated:Z

    .line 37
    iput v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchX:I

    iput v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchY:I

    .line 39
    new-instance v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-direct {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    .line 41
    iput v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_mode:I

    iput v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_nKeys:I

    .line 42
    const-string v0, "GRID_LANG"

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_lang:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->start()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_mode:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_mode:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_lang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_lang:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_nKeys:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_nKeys:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridInvalidated:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridInvalidated:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/inputmethod/touchmodal/TouchModalManager;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mTouchModalManager:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    invoke-direct {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mTouchModalManager:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mTouchModalManager:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "Object should not be cloned."

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/lang/String;IZIII)V
    .locals 3
    .parameter "language"
    .parameter "mode"
    .parameter "isLandscape"
    .parameter "width"
    .parameter "height"
    .parameter "nKeys"

    .prologue
    .line 279
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 280
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 281
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "KeyboardLanguage"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "KeyboardMode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v2, "KeyboardWidth"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    const-string v2, "KeyboardHeight"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    const-string v2, "orientation"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    const-string v2, "keyboardnkeys"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 290
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    return-void
.end method

.method public getKeyIndex(IIZ[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)I
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "upEvent"
    .parameter "softkeys"

    .prologue
    const/16 v3, 0x43

    const/4 v2, -0x1

    .line 155
    const/4 v0, -0x1

    .line 156
    .local v0, primaryIndex:I
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v1, v1, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 157
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v0

    .line 160
    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    if-ne v1, v3, :cond_0

    if-eqz p3, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchX:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchY:I

    if-lez v1, :cond_0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 169
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, -0x75

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x38

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, -0xc

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    if-eq v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/4 v2, -0x6

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, -0x66

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, -0x7a

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, -0x72

    if-eq v1, v2, :cond_1

    .line 194
    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->update(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    :cond_1
    :goto_1
    return v0

    .line 164
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 195
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public gridInitStart(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ILjava/lang/String;IIIZI)V
    .locals 3
    .parameter "keyboard"
    .parameter "width"
    .parameter "language"
    .parameter "mode"
    .parameter "keyboardWidth"
    .parameter "keyboardHeight"
    .parameter "currentOrientation"
    .parameter "nKeys"

    .prologue
    .line 213
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 214
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 215
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "WindowWidth"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v2, "KeyboardLanguage"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "KeyboardMode"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v2, "KeyboardWidth"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string v2, "KeyboardHeight"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v2, "orientation"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    const-string v2, "keyboardnkeys"

    invoke-virtual {v0, v2, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 226
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    return-void
.end method

.method public resetGrid()V
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 300
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    return-void
.end method

.method public restore()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 270
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchX:I

    iget v4, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchY:I

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    iput v5, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchX:I

    .line 273
    iput v5, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchY:I

    .line 274
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->setPriority(I)V

    .line 66
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 67
    new-instance v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;-><init>(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    .line 146
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 147
    return-void
.end method

.method public update(III)V
    .locals 4
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 265
    iput p2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchX:I

    .line 266
    iput p3, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchY:I

    .line 267
    return-void
.end method

.method public updateGrid(III)V
    .locals 1
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->x:I

    if-le v0, p2, :cond_2

    .line 246
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->y:I

    if-ge v0, p3, :cond_1

    .line 247
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->increaseBL(III)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->increaseTL(III)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->y:I

    if-ge v0, p3, :cond_3

    .line 253
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->increaseBR(III)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->increaseTR(III)V

    goto :goto_0
.end method
