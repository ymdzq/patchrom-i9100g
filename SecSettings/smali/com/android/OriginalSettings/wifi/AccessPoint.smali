.class public Lcom/android/OriginalSettings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/AccessPoint$1;,
        Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field static final DBG:Z

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I


# instance fields
.field Hotspot20Available:Z

.field bssid:Ljava/lang/String;

.field private isHS20AP:I

.field keyMgmts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCWErrorReason:I

.field private mCWState:I

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field networkId:I

.field pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->DBG:Z

    .line 57
    new-array v0, v2, [I

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 60
    new-array v0, v1, [I

    sput-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_NONE:[I

    return-void

    :cond_0
    move v0, v2

    .line 50
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 243
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 83
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->Hotspot20Available:Z

    .line 86
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 98
    iput v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mCWState:I

    .line 99
    iput v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mCWErrorReason:I

    .line 244
    const v0, 0x7f0400cb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 245
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 246
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 247
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 236
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 83
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->Hotspot20Available:Z

    .line 86
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 98
    iput v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mCWState:I

    .line 99
    iput v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mCWErrorReason:I

    .line 237
    const v0, 0x7f0400cb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 238
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 239
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 240
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 250
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 83
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->Hotspot20Available:Z

    .line 86
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 98
    iput v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mCWState:I

    .line 99
    iput v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mCWErrorReason:I

    .line 251
    const v0, 0x7f0400cb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 253
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 254
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 257
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 258
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 261
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 262
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 266
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 221
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 222
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 223
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 224
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 231
    :goto_0
    return-object v2

    .line 225
    :cond_0
    if-eqz v1, :cond_1

    .line 226
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 227
    :cond_1
    if-eqz v0, :cond_2

    .line 228
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 230
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 3
    .parameter "result"

    .prologue
    const/4 v0, 0x3

    .line 139
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WAPI-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const/4 v0, 0x4

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WAPI-CERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const/4 v0, 0x5

    goto :goto_0

    .line 145
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    const/4 v0, 0x2

    goto :goto_0

    .line 149
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "CCKM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "DWEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    const/4 v0, 0x7

    goto :goto_0

    .line 156
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 119
    goto :goto_0

    .line 122
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    const/4 v0, 0x4

    goto :goto_0

    .line 125
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    .line 126
    goto :goto_0

    .line 134
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 709
    if-eqz p0, :cond_0

    .line 710
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 278
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 279
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 280
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    .line 281
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    .line 282
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 283
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->isHS20AP:I

    .line 284
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 286
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_2
    return-void

    .line 278
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x2

    .line 298
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 299
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 300
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    .line 301
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 302
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "HS20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->Hotspot20Available:Z

    .line 303
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-ne v0, v2, :cond_0

    .line 304
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 305
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    .line 306
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 307
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 309
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_2
    return-void

    .line 301
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 9

    .prologue
    const v8, 0x7f090280

    const/4 v7, 0x1

    const v6, 0x7f090283

    .line 545
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 547
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 549
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, color:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 558
    .end local v0           #color:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_3

    .line 574
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v3}, Lcom/android/OriginalSettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 658
    :goto_1
    return-void

    .line 551
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2

    .line 552
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .restart local v0       #color:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 555
    .end local v0           #color:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 576
    :cond_3
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_4

    .line 577
    const v3, 0x7f090287

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 578
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v7, :cond_5

    .line 579
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 602
    :pswitch_1
    const v3, 0x7f090281

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 582
    :pswitch_2
    const v3, 0x7f090286

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 586
    :pswitch_3
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 589
    :pswitch_4
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 592
    :pswitch_5
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 595
    :pswitch_6
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 598
    :pswitch_7
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 605
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_6

    .line 607
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_6
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_c

    .line 612
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 613
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 616
    const v3, 0x7f09028c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_9

    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f09028f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :cond_9
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot20_test_mode_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_a

    .line 656
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 618
    :cond_b
    const v3, 0x7f09028e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 634
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 635
    const v3, 0x7f09028d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 531
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 532
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 534
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 536
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 433
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 372
    instance-of v4, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v4, :cond_1

    move v2, v3

    .line 408
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 375
    check-cast v1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 377
    .local v1, other:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v4, v5, :cond_2

    .line 378
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 381
    :cond_2
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    iget v5, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_3

    .line 382
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 385
    :cond_3
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget v5, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_4

    .line 386
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-ne v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 389
    :cond_4
    const-string v2, "rssi"

    const-string v3, "ssid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 390
    iget v2, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 391
    .local v0, difference:I
    if-eqz v0, :cond_5

    move v2, v0

    .line 392
    goto :goto_0

    .line 408
    .end local v0           #difference:I
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 666
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 667
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 673
    :goto_0
    return-void

    .line 670
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 671
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 672
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 496
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 497
    const/4 v0, -0x1

    .line 499
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 4
    .parameter "concise"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 173
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    packed-switch v2, :pswitch_data_0

    .line 216
    :pswitch_0
    if-eqz p1, :cond_8

    const-string v2, ""

    :goto_0
    return-object v2

    .line 175
    :pswitch_1
    new-instance v1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const v2, 0x7f0902a1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, securityString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0902a8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 175
    .end local v1           #securityString:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0902aa

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 183
    .restart local v1       #securityString:Ljava/lang/String;
    :cond_1
    const v2, 0x7f09028e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 186
    goto :goto_0

    .line 189
    .end local v1           #securityString:Ljava/lang/String;
    :pswitch_2
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$1;->$SwitchMap$com$android$OriginalSettings$wifi$AccessPoint$PskType:[I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 201
    if-eqz p1, :cond_6

    const v2, 0x7f0902a0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 191
    :pswitch_3
    if-eqz p1, :cond_3

    const v2, 0x7f09029d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const v2, 0x7f0902a5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 194
    :pswitch_4
    if-eqz p1, :cond_4

    const v2, 0x7f09029e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    const v2, 0x7f0902a6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 197
    :pswitch_5
    if-eqz p1, :cond_5

    const v2, 0x7f09029f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    const v2, 0x7f0902a7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 201
    :cond_6
    const v2, 0x7f0902a9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 205
    :pswitch_6
    if-eqz p1, :cond_7

    const v2, 0x7f09029c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    const v2, 0x7f0902a4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 208
    :pswitch_7
    const v2, 0x7f0902ab

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 211
    :pswitch_8
    const v2, 0x7f0902ac

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 213
    :pswitch_9
    const v2, 0x7f0902ad

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 216
    :cond_8
    const v2, 0x7f0902a3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 189
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public isSupportedSecurityType()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 677
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    const/4 v0, 0x0

    .line 684
    :cond_0
    return v0
.end method

.method public isVendorAccessPoint()Z
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 690
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 321
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    .line 322
    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mSummaryText:Landroid/widget/TextView;

    .line 339
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 342
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x7f070083

    :try_start_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 343
    .local v4, xpp:Landroid/content/res/XmlResourceParser;
    invoke-static {v2, v4}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 344
    .local v0, csl:Landroid/content/res/ColorStateList;
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v4           #xpp:Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 354
    const v5, 0x7f0b0254

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 355
    .local v3, signal:Landroid/widget/ImageView;
    iget v5, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_1

    .line 356
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    :goto_1
    return-void

    .line 345
    .end local v3           #signal:Landroid/widget/ImageView;
    .restart local v2       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 346
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Settings.AccessPoint"

    const-string v6, "onBindView(), XmlResourceParser exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #res:Landroid/content/res/Resources;
    .restart local v3       #signal:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 363
    const v5, 0x7f02048a

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    iget v5, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_2
    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_2
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 269
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 270
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 271
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 272
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, reorder:Z
    if-eqz p1, :cond_5

    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 445
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 448
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 449
    .local v0, newRssi:I
    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    const/16 v2, -0xc8

    if-eq v0, v2, :cond_1

    .line 450
    :cond_0
    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 452
    :cond_1
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 453
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 454
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 465
    .end local v0           #newRssi:I
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 468
    :cond_3
    return-void

    .line 445
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 455
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_2

    .line 456
    const/4 v1, 0x1

    .line 457
    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 458
    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 463
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 413
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 415
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 416
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->notifyChanged()V

    .line 420
    .end local v0           #oldLevel:I
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "HS20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->Hotspot20Available:Z

    .line 422
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 423
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 425
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 426
    const/4 v1, 0x1

    .line 428
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
