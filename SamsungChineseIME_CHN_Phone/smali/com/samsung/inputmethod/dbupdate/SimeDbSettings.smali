.class public Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;
.super Ljava/lang/Object;
.source "SimeDbSettings.java"


# static fields
.field private static final ANDPY_CONFS_DBUPDATE_LANGUAGE_CHINESE_HK_KEY:Ljava/lang/String; = "samsungdbupdate_languagechineseHK"

.field private static final ANDPY_CONFS_DBUPDATE_LANGUAGE_CHINESE_KEY:Ljava/lang/String; = "samsungdbupdate_languagechinese"

.field private static final ANDPY_CONFS_DBUPDATE_LANGUAGE_CHINESE_TW_KEY:Ljava/lang/String; = "samsungdbupdate_languagechineseTW"

.field private static final ANDPY_CONFS_DBUPDATE_LANGUAGE_ENGLISH_KEY:Ljava/lang/String; = "samsungdbupdate_languagechineseEng"

.field private static final ANDPY_CONFS_DBUPDATE_POPULAR_WORD_KEY:Ljava/lang/String; = "samsungdbupdate_popularword"

.field private static final ANDPY_CONFS_UPDATEFREQUENCY_KEY:Ljava/lang/String; = "samsungupdate_frequency_info"

.field private static final ANDPY_CONFS_UPDATE_WLAN_ONLY_KEY:Ljava/lang/String; = "samsungupdate_wlanonly"

.field public static final DB_UPDATE_SETTING:Ljava/lang/String; = "SimeDbSetting"

.field private static final PREFER_CONFS_GET_VERSION_NOTICE_KEY:Ljava/lang/String; = "samsungupdate_dbnoticekey"

.field private static final PREFER_CONFS_LDB_CHINESE_HK_VERSION_KEY:Ljava/lang/String; = "ldb_chinesehkversion"

.field private static final PREFER_CONFS_LDB_CHINESE_SIMPLIFIED_VERSION_KEY:Ljava/lang/String; = "ldb_chinesesimplifiedversion"

.field private static final PREFER_CONFS_LDB_CHINESE_TW_VERSION_KEY:Ljava/lang/String; = "ldb_chinesetwdversion"

.field private static final PREFER_CONFS_LDB_ENGLISH_VERSION_KEY:Ljava/lang/String; = "englishversion"

.field private static final PREFER_CONFS_MDB_CHINESE_HK_VERSION_KEY:Ljava/lang/String; = "mdb_chinesehkversion"

.field private static final PREFER_CONFS_MDB_CHINESE_SIMPLIFIED_VERSION_KEY:Ljava/lang/String; = "mdb_chinesesimplifiedversion"

.field private static final PREFER_CONFS_MDB_CHINESE_TW_VERSION_KEY:Ljava/lang/String; = "mdb_chinesetwdversion"

.field public static final SIME_DB_AUTO_UPDATE_COUNT:I = 0x4

.field public static final SIME_DB_AUTO_UPDATE_INIT_VALUE:I = 0x0

.field public static final SIME_DB_AUTO_UPDATE_MAX_INDEX:I = 0x4

.field public static final SIME_DB_AUTO_UPDATE_OFF:I = 0x0

.field public static final SIME_DB_AUTO_UPDATE_ONE_MONTH:I = 0x3

.field public static final SIME_DB_AUTO_UPDATE_ONE_WEEK:I = 0x1

.field public static final SIME_DB_AUTO_UPDATE_TWO_WEEK:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBUpdateDateKey:[Ljava/lang/String;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "englishversion"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "ldb_chinesesimplifiedversion"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ldb_chinesehkversion"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ldb_chinesetwdversion"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mdb_chinesesimplifiedversion"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mdb_chinesehkversion"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mdb_chinesetwdversion"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mDBUpdateDateKey:[Ljava/lang/String;

    .line 68
    iput-object v4, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 69
    iput-object v4, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mContext:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mContext:Landroid/content/Context;

    const-string v1, "SimeDbSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 75
    return-void
.end method

.method private getDefaultLanguageSetting(Ljava/lang/String;)Z
    .locals 7
    .parameter "languageKey"

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, bDefaultValue:Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 82
    .local v0, am:Landroid/app/IActivityManager;
    const/4 v4, 0x0

    .line 84
    .local v4, curLocale:Ljava/util/Locale;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v4, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, country:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 93
    const-string v6, "samsungdbupdate_languagechinese"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 95
    const-string v6, "HK"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "TW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 96
    const/4 v1, 0x1

    :cond_0
    :goto_0
    move v2, v1

    .line 110
    .end local v1           #bDefaultValue:Z
    .end local v3           #country:Ljava/lang/String;
    .local v2, bDefaultValue:I
    :goto_1
    return v2

    .line 85
    .end local v2           #bDefaultValue:I
    .restart local v1       #bDefaultValue:Z
    :catch_0
    move-exception v5

    .local v5, e:Landroid/os/RemoteException;
    move v2, v1

    .line 86
    .restart local v2       #bDefaultValue:I
    goto :goto_1

    .line 99
    .end local v2           #bDefaultValue:I
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v3       #country:Ljava/lang/String;
    :cond_1
    const-string v6, "samsungdbupdate_languagechineseHK"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    const-string v6, "HK"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    const/4 v1, 0x1

    goto :goto_0

    .line 104
    :cond_2
    const-string v6, "samsungdbupdate_languagechineseTW"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    const-string v6, "TW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 224
    const/4 v0, 0x1

    .line 227
    .local v0, bRet:Z
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 228
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 229
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 239
    :goto_0
    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 248
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_1
    return v0

    .line 230
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local p2
    :cond_1
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 231
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    const/4 v0, 0x0

    goto :goto_1

    .line 232
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local p2
    :cond_2
    :try_start_1
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 233
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 237
    .restart local p2
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAutoUpdateFrequencyMode()I
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungupdate_frequency_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAutoUpdateWlanOnly()Z
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungupdate_wlanonly"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDbUpdateDate(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dbType"
    .parameter "defValue"

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, ret:Ljava/lang/String;
    if-ltz p1, :cond_0

    const/4 v1, 0x7

    if-ge p1, v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mDBUpdateDateKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    return-object v0
.end method

.method public getDbUpdateLanguageChinese()Z
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungdbupdate_languagechinese"

    const-string v2, "samsungdbupdate_languagechinese"

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDefaultLanguageSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDbUpdateLanguageChineseHK()Z
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungdbupdate_languagechineseHK"

    const-string v2, "samsungdbupdate_languagechineseHK"

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDefaultLanguageSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDbUpdateLanguageChineseTW()Z
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungdbupdate_languagechineseTW"

    const-string v2, "samsungdbupdate_languagechineseTW"

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDefaultLanguageSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDbUpdateLanguageEng()Z
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungdbupdate_languagechineseEng"

    const-string v2, "samsungdbupdate_languagechineseEng"

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDefaultLanguageSetting(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDbUpdatePopularDB()Z
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungdbupdate_popularword"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGetDbNotice()Z
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungupdate_dbnoticekey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    const-string v0, "samsungupdate_frequency_info"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 213
    const-string v0, "samsungupdate_wlanonly"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 214
    const-string v0, "samsungdbupdate_languagechinese"

    const-string v1, "samsungdbupdate_languagechinese"

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDefaultLanguageSetting(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 215
    const-string v0, "samsungdbupdate_languagechineseHK"

    const-string v1, "samsungdbupdate_languagechineseHK"

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDefaultLanguageSetting(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 216
    const-string v0, "samsungdbupdate_languagechineseTW"

    const-string v1, "samsungdbupdate_languagechineseTW"

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDefaultLanguageSetting(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 217
    const-string v0, "samsungdbupdate_languagechineseEng"

    const-string v1, "samsungdbupdate_languagechineseEng"

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->getDefaultLanguageSetting(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 218
    const-string v0, "samsungdbupdate_popularword"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 219
    const-string v0, "samsungupdate_dbnoticekey"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public setAutoUpdateFrequencyMode(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 188
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 189
    const-string v0, "samsungupdate_frequency_info"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 191
    :cond_0
    return-void
.end method

.method public setAutoUpdateWlanOnly(Z)V
    .locals 2
    .parameter "bWlanOnly"

    .prologue
    .line 195
    const-string v0, "samsungupdate_wlanonly"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method public setDbNotice(Z)V
    .locals 2
    .parameter "bGetNotice"

    .prologue
    .line 204
    const-string v0, "samsungupdate_dbnoticekey"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public setDbUpdateDate(ILjava/lang/String;)V
    .locals 1
    .parameter "dbType"
    .parameter "value"

    .prologue
    .line 166
    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->mDBUpdateDateKey:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p2}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 170
    :cond_0
    return-void
.end method

.method public setDbupdateLanuageChinese(Z)V
    .locals 2
    .parameter "v"

    .prologue
    .line 115
    const-string v0, "samsungdbupdate_languagechinese"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public setDbupdateLanuageChineseHK(Z)V
    .locals 2
    .parameter "v"

    .prologue
    .line 126
    const-string v0, "samsungdbupdate_languagechineseHK"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public setDbupdateLanuageChineseTW(Z)V
    .locals 2
    .parameter "v"

    .prologue
    .line 136
    const-string v0, "samsungdbupdate_languagechineseTW"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public setDbupdateLanuageEng(Z)V
    .locals 2
    .parameter "v"

    .prologue
    .line 146
    const-string v0, "samsungdbupdate_languagechineseEng"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public setDbupdatePopularDB(Z)V
    .locals 2
    .parameter "v"

    .prologue
    .line 156
    const-string v0, "samsungdbupdate_popularword"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbupdate/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 157
    return-void
.end method
