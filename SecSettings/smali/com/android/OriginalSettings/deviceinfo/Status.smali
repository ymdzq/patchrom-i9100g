.class public Lcom/android/OriginalSettings/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private PRL_SysProp:Ljava/lang/String;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsRegistered:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private sUnknown:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private zero_eight:Ljava/lang/String;

.field private zero_five:Ljava/lang/String;

.field private zero_four:Ljava/lang/String;

.field private zero_nine:Ljava/lang/String;

.field private zero_seven:Ljava/lang/String;

.field private zero_six:Ljava/lang/String;

.field private zero_three:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 147
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eri_version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sid_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "nid_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->user_name:Ljava/lang/String;

    .line 136
    const-string v0, "000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    .line 137
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    .line 138
    const-string v0, "00000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    .line 139
    const-string v0, "000000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    .line 140
    const-string v0, "0000000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    .line 141
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    .line 142
    const-string v0, "000000000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    .line 145
    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 233
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$1;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$2;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$3;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 333
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$4;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    .line 370
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 920
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$5;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$5;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1197
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$6;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$6;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/OriginalSettings/deviceinfo/Status;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mImsRegistered:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/OriginalSettings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getOemData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600()[B
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/OriginalSettings/deviceinfo/Status;->buf:[B

    return-object v0
.end method

.method static synthetic access$602([B)[B
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    sput-object p0, Lcom/android/OriginalSettings/deviceinfo/Status;->buf:[B

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/OriginalSettings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/deviceinfo/Status;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->NAI_length:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/deviceinfo/Status;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->NAI_length:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/deviceinfo/Status;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$984(Lcom/android/OriginalSettings/deviceinfo/Status;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method private connectToRilService()V
    .locals 3

    .prologue
    .line 1190
    const-string v0, "Status"

    const-string v1, "connect To Secphone service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1192
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/OriginalSettings/deviceinfo/Status;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1194
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x3c

    .line 912
    rem-long v0, p1, v3

    long-to-int v0, v0

    .line 913
    div-long v1, p1, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 914
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    long-to-int v2, v2

    .line 916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "devID"

    .prologue
    .line 963
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 964
    .local v0, len:I
    const/4 v1, 0x0

    .line 966
    .local v1, out:Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 967
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 971
    :cond_0
    :goto_0
    return-object v1

    .line 968
    :cond_1
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 969
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x2

    .line 981
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 984
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 992
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1016
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 986
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 989
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 995
    :pswitch_2
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 998
    :pswitch_3
    const-string v0, "00"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1001
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1004
    :pswitch_5
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1007
    :pswitch_6
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1010
    :pswitch_7
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1013
    :pswitch_8
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 984
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 993
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x8

    .line 1026
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1027
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1029
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1058
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1082
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 1031
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1034
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1037
    :pswitch_2
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1040
    :pswitch_3
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1043
    :pswitch_4
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1046
    :pswitch_5
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1049
    :pswitch_6
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1052
    :pswitch_7
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1055
    :pswitch_8
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1061
    :pswitch_9
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1064
    :pswitch_a
    const-string v0, "00"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1067
    :pswitch_b
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1070
    :pswitch_c
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1073
    :pswitch_d
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1076
    :pswitch_e
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1079
    :pswitch_f
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1029
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1059
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getOemData()V
    .locals 7

    .prologue
    .line 295
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 296
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 299
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 300
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 301
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 302
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 303
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/deviceinfo/Status;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 309
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 308
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 309
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 310
    :catch_2
    move-exception v2

    .line 311
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 308
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 309
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 312
    :goto_1
    throw v4

    .line 310
    :catch_3
    move-exception v2

    .line 311
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 317
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 318
    .local v0, req:Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 320
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 321
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_0
    const-string v1, "Status"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 904
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 905
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 907
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 648
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 651
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 3

    .prologue
    .line 839
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 840
    const-string v1, "bt_address"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 842
    if-nez v0, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 850
    :goto_0
    return-void

    .line 846
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 847
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 846
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 847
    :cond_2
    const v0, 0x7f0904c8

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 2

    .prologue
    .line 829
    const-string v0, "wifi_ip_address"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 830
    invoke-static {p0}, Lcom/android/OriginalSettings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 831
    if-eqz v1, :cond_0

    .line 832
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 836
    :goto_0
    return-void

    .line 834
    :cond_0
    const v1, 0x7f0904c8

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRssiNoti(I)V
    .locals 7
    .parameter "onOff"

    .prologue
    .line 269
    const-string v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRssiNoti() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 274
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 275
    .local v3, fileSize:I
    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 276
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 277
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 278
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    if-eqz v1, :cond_0

    .line 284
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 291
    return-void

    .line 285
    :catch_0
    move-exception v2

    .line 286
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 280
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    if-eqz v1, :cond_0

    .line 284
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 285
    :catch_2
    move-exception v2

    .line 286
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 283
    if-eqz v1, :cond_1

    .line 284
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 287
    :cond_1
    :goto_1
    throw v4

    .line 285
    :catch_3
    move-exception v2

    .line 286
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Status"

    const-string v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 660
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 668
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object p2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 672
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 675
    :cond_1
    return-void
.end method

.method private setSysScopeStatus()V
    .locals 2

    .prologue
    .line 854
    const-string v0, "sysscope_status"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 855
    const v1, 0x7f09012c

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 856
    new-instance v1, Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sysscope/service/SysScope;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    .line 857
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 858
    return-void
.end method

.method private setWifiStatus()V
    .locals 3

    .prologue
    .line 819
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 820
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 822
    const-string v1, "wifi_mac_address"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 823
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 824
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 826
    return-void

    .line 823
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 824
    :cond_1
    const v0, 0x7f0904c8

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 803
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 804
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 806
    if-nez v0, :cond_1

    .line 807
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 808
    const-string v1, "wimax_mac_address"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 809
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    const-string v0, "wimax_mac_address"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 812
    const-string v1, "net.wimax.mac.address"

    const v2, 0x7f0904c8

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 690
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 691
    .local v1, state:I
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 708
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void

    .line 695
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    goto :goto_0

    .line 698
    :pswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 699
    goto :goto_0

    .line 701
    :pswitch_2
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    goto :goto_0

    .line 704
    :pswitch_3
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 693
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 5

    .prologue
    .line 679
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 680
    const-string v2, "gsm.network.type"

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, networkType:Ljava/lang/String;
    const-string v2, "[:]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, split:[Ljava/lang/String;
    const-string v2, "network_type"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    .end local v0           #networkType:Ljava/lang/String;
    .end local v1           #split:[Ljava/lang/String;
    :goto_0
    return-void

    .line 685
    :cond_0
    const-string v2, "network_type"

    const-string v3, "gsm.network.type"

    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 7
    .parameter "serviceState"

    .prologue
    const v6, 0x7f090055

    const v5, 0x7f090054

    .line 712
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 713
    .local v1, state:I
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 729
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_UseChameleon"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 732
    const-string v2, "persist.sys.roaming_menu"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 733
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 734
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_0
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void

    .line 718
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    goto :goto_0

    .line 722
    :pswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    goto :goto_0

    .line 725
    :pswitch_2
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 736
    :cond_1
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 741
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 742
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 744
    :cond_3
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 716
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "icicle"

    .prologue
    .line 374
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 377
    new-instance v14, Lcom/android/OriginalSettings/deviceinfo/Status$MyHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/OriginalSettings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 379
    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 381
    const v14, 0x7f070023

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 382
    const-string v14, "battery_level"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 383
    const-string v14, "battery_status"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 386
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    if-nez v14, :cond_0

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v15, 0x7f09003e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 390
    :cond_0
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    .line 391
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 393
    const-string v14, "signal_strength"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 394
    const-string v14, "up_time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 397
    sget-object v2, Lcom/android/OriginalSettings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_7

    aget-object v6, v2, v5

    .line 398
    .local v6, key:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 397
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 403
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #len$:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "CDMA"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 404
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, devId:Ljava/lang/String;
    const-string v14, "Status"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "KEY_MEID_NUMBER() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    if-eqz v3, :cond_f

    .line 409
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v9, meid:Ljava/lang/StringBuilder;
    const-string v14, "Dec:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\nHex:0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v14, "meid_number"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v14, "Status"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "KEY_MEID_NUMBER() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v3           #devId:Ljava/lang/String;
    .end local v9           #meid:Ljava/lang/StringBuilder;
    :goto_1
    const-string v14, "VZW"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 423
    const-string v14, "meid_number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 426
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v14, :cond_11

    .line 427
    const-string v14, "min_number"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c001c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 432
    const-string v14, "min_number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const v15, 0x7f0904ba

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setTitle(I)V

    .line 434
    :cond_3
    const-string v14, "ro.product.name"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 435
    .local v10, product_name:Ljava/lang/String;
    const-string v14, "SPH-D710"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 437
    const-string v14, "ril.prl_ver_1"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_12

    .line 439
    const-string v14, "prl_version"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :goto_3
    const-string v14, "VZW"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 450
    const-string v14, "imei_sv"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 455
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_17

    .line 457
    const-string v14, "icc_id"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v14, "USC"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "XAR"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "MTR"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 460
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xd

    if-le v14, v15, :cond_15

    .line 461
    const-string v14, "imei"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0xe

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :goto_5
    const-string v14, "SPR"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 477
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->connectToRilService()V

    .line 503
    .end local v10           #product_name:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v11

    .line 504
    .local v11, rawNumber:Ljava/lang/String;
    const/4 v4, 0x0

    .line 505
    .local v4, formattedNumber:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 506
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 507
    const-string v14, "\\+82"

    const-string v15, "0"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 508
    :cond_5
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 511
    :cond_6
    const-string v14, "number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    new-instance v14, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v15, 0xc8

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v15, 0x12c

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 518
    .end local v4           #formattedNumber:Ljava/lang/String;
    .end local v11           #rawNumber:Ljava/lang/String;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setWimaxStatus()V

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setWifiStatus()V

    .line 520
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setBtStatus()V

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setIpAddressStatus()V

    .line 524
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSysScopeStatus()V

    .line 527
    const-string v14, "ril.serialnumber"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 528
    .local v8, mRilSerial:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "00000000000"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    :cond_8
    const-string v12, "ro.serialno"

    .line 529
    .local v12, serial:Ljava/lang/String;
    :goto_7
    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 530
    .local v13, serialNum:Ljava/lang/String;
    const-string v14, "Status"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "serial:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v14, "Status"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "serialNum:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1c

    .line 537
    const-string v14, "serial_number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :goto_8
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "DCM"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 544
    :cond_9
    const-string v14, "signal_strength"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 545
    const-string v14, "imei_sv"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 546
    const-string v14, "wifi_ip_address"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 547
    const-string v14, "serial_number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 549
    const-string v14, "meid_number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 550
    const-string v14, "min_number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 551
    const-string v14, "icc_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 559
    const-string v14, "prl_version"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 562
    :cond_a
    const-string v14, "VZW"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "SPR"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "USC"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "XAR"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "MTR"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 564
    :cond_b
    const-string v14, "serial_number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 566
    :cond_c
    const-string v14, "DCM"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 567
    const-string v14, "signal_strength"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 568
    const-string v14, "imei_sv"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 571
    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 573
    const-string v14, "ril.eri_ver_1"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, ERI_SysProp:Ljava/lang/String;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_1d

    .line 575
    const-string v14, "eri_version"

    const/4 v15, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .end local v1           #ERI_SysProp:Ljava/lang/String;
    :goto_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_UseChameleon"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 584
    const-string v14, "persist.sys.roaming_menu"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_e

    .line 585
    const-string v14, "roaming_state"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 590
    :cond_e
    return-void

    .line 416
    .end local v8           #mRilSerial:Ljava/lang/String;
    .end local v12           #serial:Ljava/lang/String;
    .end local v13           #serialNum:Ljava/lang/String;
    .restart local v3       #devId:Ljava/lang/String;
    :cond_f
    const-string v14, "meid_number"

    const-string v15, "Unknown"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 419
    .end local v3           #devId:Ljava/lang/String;
    :cond_10
    const-string v14, "meid_number"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 429
    :cond_11
    const-string v14, "min_number"

    const-string v15, "Unknown"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 442
    .restart local v10       #product_name:Ljava/lang/String;
    :cond_12
    const-string v14, "prl_version"

    const-string v15, "PRL : <unknown>"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 446
    :cond_13
    const-string v14, "prl_version"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 452
    :cond_14
    const-string v15, "imei_sv"

    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 463
    :cond_15
    const-string v14, "imei"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 466
    :cond_16
    const-string v14, "imei"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 472
    :cond_17
    const-string v14, "imei"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 473
    const-string v14, "icc_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 479
    :cond_18
    const-string v14, "user_name"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 483
    .end local v10           #product_name:Ljava/lang/String;
    :cond_19
    const-string v14, "LGT"

    sget-object v15, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 484
    const-string v14, "imei"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_a
    const-string v15, "imei_sv"

    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v14, "prl_version"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 495
    const-string v14, "meid_number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 496
    const-string v14, "min_number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 497
    const-string v14, "icc_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 498
    const-string v14, "sid_number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 499
    const-string v14, "nid_number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 500
    const-string v14, "user_name"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 487
    :cond_1a
    const-string v14, "imei"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 528
    .restart local v8       #mRilSerial:Ljava/lang/String;
    :cond_1b
    const-string v12, "ril.serialnumber"

    goto/16 :goto_7

    .line 539
    .restart local v12       #serial:Ljava/lang/String;
    .restart local v13       #serialNum:Ljava/lang/String;
    :cond_1c
    const-string v14, "serial_number"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 577
    .restart local v1       #ERI_SysProp:Ljava/lang/String;
    :cond_1d
    const-string v14, "eri_version"

    const-string v15, "ERI : <unknown>"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 580
    .end local v1           #ERI_SysProp:Ljava/lang/String;
    :cond_1e
    const-string v14, "eri_version"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->finish()V

    .line 1212
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 623
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 625
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Status;->setRssiNoti(I)V

    .line 628
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 629
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 637
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 639
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 594
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 596
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setRssiNoti(I)V

    .line 599
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 601
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateSignalStrength()V

    .line 602
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 603
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateDataState()V

    .line 605
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 610
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 618
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 619
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 760
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 762
    iget-boolean v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mImsRegistered:Z

    if-eqz v4, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateSignalStrengthToZeroWhenIMSRegistered()V

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 769
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 771
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_2

    const/4 v4, 0x3

    if-ne v4, v3, :cond_3

    .line 773
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 776
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 778
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_4

    const/4 v2, 0x0

    .line 780
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 782
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_5

    const/4 v1, 0x0

    .line 784
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090060

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090061

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateSignalStrengthToZeroWhenIMSRegistered()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 793
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 794
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 795
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090060

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090061

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 800
    :cond_0
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 893
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 894
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 896
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 897
    const-wide/16 v2, 0x1

    .line 900
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 901
    return-void
.end method
