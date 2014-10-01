.class public Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;
.super Landroid/app/Service;
.source "SimeDbAutoUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;
    }
.end annotation


# static fields
.field private static final SIME_DB_AUTO_UPDATE_HOUR:I = 0x8

.field private static final SIME_DB_AUTO_UPDATE_ONE_MONTH:I = 0x1e

.field private static final SIME_DB_AUTO_UPDATE_ONE_WEEK:I = 0x7

.field private static final SIME_DB_AUTO_UPDATE_STARTDELAY_VALUE:I = 0x1f4

.field private static final SIME_DB_AUTO_UPDATE_TWO_WEEKS:I = 0xe

.field private static final SIME_DB_HALF_HOUR:J = 0x1b7740L

.field private static final SIME_DB_ONE_MIN:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "SimeDbAutoUpdateService"


# instance fields
.field private DEBUG:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

.field private mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateTimeTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->DEBUG:Z

    .line 46
    iput-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    .line 49
    iput-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    .line 50
    iput-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 51
    iput-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    new-instance v0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;-><init>(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mBinder:Landroid/os/IBinder;

    .line 150
    new-instance v0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$2;-><init>(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getNextUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;[I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getAutoUpdateDb([I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getAutoUpdateOption()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getAutoUpdateWLANOnly()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bNeedUpdate(I)Z
    .locals 4
    .parameter "dbType"

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getAutoUpdateOption()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getGetDbNotice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getNeedUpdateDateTime(I)Ljava/util/Date;

    move-result-object v2

    .line 332
    .local v2, needUpdateTime:Ljava/util/Date;
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    .line 333
    .local v1, currentDateTime:Ljava/util/Date;
    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 335
    const/4 v0, 0x1

    .line 338
    .end local v1           #currentDateTime:Ljava/util/Date;
    .end local v2           #needUpdateTime:Ljava/util/Date;
    :cond_1
    return v0
.end method

.method private getAutoUpdateDb([I)I
    .locals 8
    .parameter "dbType"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, index:I
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageChinese()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->bNeedUpdate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aput v4, p1, v0

    move v0, v1

    .line 207
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageChineseHK()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->bNeedUpdate(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aput v5, p1, v0

    move v0, v1

    .line 212
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageChineseTW()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v6}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->bNeedUpdate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aput v6, p1, v0

    move v0, v1

    .line 217
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdateLanguageEng()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->bNeedUpdate(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aput v3, p1, v0

    move v0, v1

    .line 221
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDbUpdatePopularDB()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 223
    invoke-direct {p0, v7}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->bNeedUpdate(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aput v7, p1, v0

    move v0, v1

    .line 226
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 227
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->bNeedUpdate(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 228
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const/4 v2, 0x5

    aput v2, p1, v0

    move v0, v1

    .line 229
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_5
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->bNeedUpdate(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 230
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const/4 v2, 0x6

    aput v2, p1, v0

    move v0, v1

    .line 235
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_6
    return v0
.end method

.method private getAutoUpdateOption()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getAutoUpdateFrequencyMode()I

    move-result v0

    return v0
.end method

.method private getAutoUpdateStartTime(I)Ljava/util/Date;
    .locals 5
    .parameter "dbType"

    .prologue
    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, updateStartDate:Ljava/util/Date;
    iget-object v4, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-virtual {v4, p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dbGetUpdateDate(I)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, updateDate:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 307
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy.MM.dd"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 309
    .local v1, pos:Ljava/text/ParsePosition;
    invoke-virtual {v0, v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 310
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/util/Date;->setHours(I)V

    .line 316
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v1           #pos:Ljava/text/ParsePosition;
    :goto_0
    return-object v3

    .line 314
    :cond_0
    new-instance v3, Ljava/util/Date;

    .end local v3           #updateStartDate:Ljava/util/Date;
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .restart local v3       #updateStartDate:Ljava/util/Date;
    goto :goto_0
.end method

.method private getAutoUpdateWLANOnly()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getAutoUpdateWlanOnly()Z

    move-result v0

    return v0
.end method

.method private getCurrentDateTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 322
    .local v0, currentDateTime:Ljava/util/Date;
    return-object v0
.end method

.method private getNeedUpdateDateTime(I)Ljava/util/Date;
    .locals 6
    .parameter "dbType"

    .prologue
    const/4 v5, 0x5

    .line 239
    const/4 v3, 0x0

    .line 241
    .local v3, updateDate:Ljava/util/Date;
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getAutoUpdateOption()I

    move-result v0

    .line 242
    .local v0, autoUpdateOption:I
    const/4 v2, 0x0

    .line 244
    .local v2, increaseDate:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 245
    .local v1, cal:Ljava/util/Calendar;
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getAutoUpdateStartTime(I)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 248
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 250
    const/4 v2, 0x7

    .line 261
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 262
    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 263
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 268
    :goto_1
    return-object v3

    .line 252
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 254
    const/16 v2, 0xe

    goto :goto_0

    .line 256
    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 258
    const/16 v2, 0x1e

    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 266
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_1
.end method

.method private getNextUpdateTime()J
    .locals 9

    .prologue
    .line 272
    const-wide/16 v5, 0x0

    .line 273
    .local v5, nDiff:J
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 274
    .local v2, currentMilliseconds:J
    const-wide/16 v0, 0x0

    .line 276
    .local v0, autoUpdateMilliseconds:J
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getAutoUpdateStartTime(I)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 277
    sub-long v5, v2, v0

    .line 279
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    const/4 v7, 0x6

    if-gt v4, v7, :cond_2

    .line 281
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->imIsHKTWModel()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-virtual {v7, v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->bIsHKTWDb(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 279
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    :cond_1
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getAutoUpdateStartTime(I)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 287
    sub-long v7, v2, v0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_0

    .line 288
    sub-long v5, v2, v0

    goto :goto_1

    .line 291
    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_3

    .line 292
    const-wide/32 v5, 0xdbba0

    .line 294
    :cond_3
    return-wide v5
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimeDbAutoUpdateService"

    const-string v1, "SimeDbUpdateService onBind.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    .line 79
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->getDbSettings()Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;

    .line 82
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 85
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService$1;-><init>(Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->stopAutoUpdate()V

    .line 120
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 123
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimeDbAutoUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->startAutoUpdate()V

    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimeDbAutoUpdateService"

    const-string v1, "SimeDbUpdateService onUnBind.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startAutoUpdate()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method

.method public stopAutoUpdate()V
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimeDbAutoUpdateService"

    const-string v1, "autoUpdate Stop "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mDbManager:Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbUpdateManager;->dbUpdateStop(I)V

    .line 147
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method
