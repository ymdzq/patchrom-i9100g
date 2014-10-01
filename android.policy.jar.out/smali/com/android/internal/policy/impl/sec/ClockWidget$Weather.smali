.class Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Weather"
.end annotation


# static fields
.field public static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field public static final KEY_INVALID_LOC:Ljava/lang/String; = "aw_daemon_service_key_invalid_loc"

.field public static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"


# instance fields
.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final LOCK_SCREEN_SERVICE_CODE:I

.field private final MSG_WEATHER_DATA_UPDATED:I

.field private final MSG_WEATHER_SETTING_CHANGED:I

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsWeatherDateAvailable:Z

.field private mNoServiceText:Landroid/widget/TextView;

.field private mTemperatureUnit:Landroid/widget/ImageView;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDataBox:Landroid/widget/LinearLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherLogo:Landroid/widget/ImageView;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 312
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 267
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 268
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 271
    const-string v0, "aw_daemon_service_key_app_service_status"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 272
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CITY_ID:Ljava/lang/String;

    .line 273
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 274
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 275
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 276
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CITY_NAME:Ljava/lang/String;

    .line 287
    iput v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->LOCK_SCREEN_SERVICE_CODE:I

    .line 290
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->MSG_WEATHER_SETTING_CHANGED:I

    .line 291
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->MSG_WEATHER_DATA_UPDATED:I

    .line 294
    iput v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->TEMP_SCALE_FAHRENHEIT:I

    .line 295
    iput v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->TEMP_SCALE_CENTIGRADE:I

    .line 297
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 314
    new-instance v0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    .line 325
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setFocusableInTouchMode(Z)V

    .line 326
    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setMarquee(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method private checkIsDayOrNight()Z
    .locals 5

    .prologue
    .line 902
    const/16 v0, 0x258

    .line 903
    .local v0, mnSunriseTime:I
    const/16 v1, 0x708

    .line 905
    .local v1, mnSunsetTime:I
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v4

    add-int v2, v3, v4

    .line 907
    .local v2, nCurTime:I
    const/16 v3, 0x23a

    if-lt v2, v3, :cond_0

    const/16 v3, 0x726

    if-gt v2, v3, :cond_0

    .line 908
    const/4 v3, 0x0

    .line 912
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private findDrawableId(I)I
    .locals 1
    .parameter "weatherIconNum"

    .prologue
    const/4 v0, 0x0

    .line 539
    packed-switch p1, :pswitch_data_0

    .line 601
    :goto_0
    :pswitch_0
    return v0

    .line 546
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 550
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 552
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 557
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 559
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 563
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 566
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 568
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 571
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 574
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 578
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 582
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 584
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 586
    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    .line 588
    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    .line 590
    :pswitch_10
    const/16 v0, 0x10

    goto :goto_0

    .line 592
    :pswitch_11
    const/16 v0, 0x11

    goto :goto_0

    .line 597
    :pswitch_12
    const/16 v0, 0x12

    goto :goto_0

    .line 599
    :pswitch_13
    const/16 v0, 0x13

    goto :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private findDrawableIdForJapan(I)I
    .locals 4
    .parameter "weatherIconNum"

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 607
    sparse-switch p1, :sswitch_data_0

    .line 778
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 624
    goto :goto_0

    .line 628
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 655
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    move v0, v2

    .line 687
    goto :goto_0

    .line 700
    :sswitch_5
    const/16 v0, 0x8

    goto :goto_0

    .line 726
    :sswitch_6
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_7
    move v0, v3

    .line 744
    goto :goto_0

    .line 757
    :sswitch_8
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_9
    move v0, v3

    .line 759
    goto :goto_0

    .line 761
    :sswitch_a
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_b
    move v0, v1

    .line 766
    goto :goto_0

    :sswitch_c
    move v0, v2

    .line 775
    goto :goto_0

    .line 607
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_8
        0x69 -> :sswitch_8
        0x6a -> :sswitch_4
        0x6b -> :sswitch_4
        0x6c -> :sswitch_4
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_4
        0x71 -> :sswitch_4
        0x72 -> :sswitch_4
        0x73 -> :sswitch_8
        0x74 -> :sswitch_8
        0x75 -> :sswitch_8
        0x76 -> :sswitch_4
        0x77 -> :sswitch_4
        0x78 -> :sswitch_4
        0x79 -> :sswitch_4
        0x7a -> :sswitch_4
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_1
        0x8c -> :sswitch_4
        0xa0 -> :sswitch_8
        0xaa -> :sswitch_8
        0xb5 -> :sswitch_8
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_1
        0xca -> :sswitch_3
        0xcb -> :sswitch_3
        0xcc -> :sswitch_6
        0xcd -> :sswitch_6
        0xce -> :sswitch_3
        0xcf -> :sswitch_3
        0xd0 -> :sswitch_3
        0xd1 -> :sswitch_2
        0xd2 -> :sswitch_1
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_3
        0xd5 -> :sswitch_3
        0xd6 -> :sswitch_3
        0xd7 -> :sswitch_6
        0xd8 -> :sswitch_6
        0xd9 -> :sswitch_6
        0xda -> :sswitch_3
        0xdb -> :sswitch_3
        0xdc -> :sswitch_3
        0xdd -> :sswitch_3
        0xde -> :sswitch_3
        0xdf -> :sswitch_1
        0xe0 -> :sswitch_3
        0xe1 -> :sswitch_3
        0xe2 -> :sswitch_3
        0xe3 -> :sswitch_3
        0xe4 -> :sswitch_6
        0xe5 -> :sswitch_6
        0xe6 -> :sswitch_6
        0xe7 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xfa -> :sswitch_6
        0x104 -> :sswitch_6
        0x10e -> :sswitch_6
        0x119 -> :sswitch_6
        0x12c -> :sswitch_5
        0x12d -> :sswitch_4
        0x12e -> :sswitch_3
        0x12f -> :sswitch_7
        0x130 -> :sswitch_5
        0x132 -> :sswitch_5
        0x134 -> :sswitch_5
        0x135 -> :sswitch_7
        0x137 -> :sswitch_4
        0x139 -> :sswitch_3
        0x13a -> :sswitch_7
        0x13b -> :sswitch_7
        0x13c -> :sswitch_4
        0x13d -> :sswitch_3
        0x140 -> :sswitch_4
        0x141 -> :sswitch_3
        0x142 -> :sswitch_7
        0x143 -> :sswitch_4
        0x144 -> :sswitch_4
        0x145 -> :sswitch_4
        0x146 -> :sswitch_7
        0x147 -> :sswitch_7
        0x148 -> :sswitch_5
        0x149 -> :sswitch_5
        0x154 -> :sswitch_6
        0x15e -> :sswitch_5
        0x169 -> :sswitch_8
        0x173 -> :sswitch_6
        0x190 -> :sswitch_6
        0x191 -> :sswitch_8
        0x192 -> :sswitch_6
        0x193 -> :sswitch_7
        0x195 -> :sswitch_6
        0x196 -> :sswitch_6
        0x197 -> :sswitch_6
        0x199 -> :sswitch_7
        0x19b -> :sswitch_8
        0x19d -> :sswitch_6
        0x19e -> :sswitch_7
        0x1a4 -> :sswitch_8
        0x1a5 -> :sswitch_6
        0x1a6 -> :sswitch_7
        0x1a7 -> :sswitch_7
        0x1a8 -> :sswitch_7
        0x1a9 -> :sswitch_6
        0x1aa -> :sswitch_6
        0x1ab -> :sswitch_6
        0x1ae -> :sswitch_9
        0x1c2 -> :sswitch_6
        0x1f4 -> :sswitch_0
        0x226 -> :sswitch_a
        0x228 -> :sswitch_b
        0x229 -> :sswitch_c
        0x22e -> :sswitch_c
        0x232 -> :sswitch_b
        0x233 -> :sswitch_c
        0x238 -> :sswitch_c
        0x23c -> :sswitch_b
        0x23d -> :sswitch_c
        0x246 -> :sswitch_b
        0x247 -> :sswitch_c
        0x258 -> :sswitch_0
        0x352 -> :sswitch_5
        0x353 -> :sswitch_4
        0x354 -> :sswitch_3
        0x355 -> :sswitch_5
        0x356 -> :sswitch_7
        0x357 -> :sswitch_c
        0x35d -> :sswitch_4
        0x35e -> :sswitch_3
        0x35f -> :sswitch_5
        0x360 -> :sswitch_7
        0x361 -> :sswitch_c
        0x367 -> :sswitch_4
        0x368 -> :sswitch_3
        0x369 -> :sswitch_5
        0x36a -> :sswitch_7
        0x371 -> :sswitch_4
        0x372 -> :sswitch_3
        0x373 -> :sswitch_5
        0x374 -> :sswitch_7
    .end sparse-switch
.end method

.method private findDrawableIdForKweather(I)I
    .locals 2
    .parameter "weatherIconNum"

    .prologue
    const/4 v1, 0x0

    .line 831
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->checkIsDayOrNight()Z

    move-result v0

    .line 832
    .local v0, isNight:Z
    packed-switch p1, :pswitch_data_0

    .line 896
    :cond_0
    :goto_0
    return v1

    .line 834
    :pswitch_0
    if-eqz v0, :cond_0

    .line 835
    const/16 v1, 0x12

    goto :goto_0

    .line 841
    :pswitch_1
    if-eqz v0, :cond_1

    .line 842
    const/16 v1, 0x13

    goto :goto_0

    .line 844
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 847
    :pswitch_2
    if-eqz v0, :cond_2

    .line 848
    const/16 v1, 0x14

    goto :goto_0

    .line 850
    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 852
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 854
    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 857
    :pswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 859
    :pswitch_6
    const/4 v1, 0x6

    goto :goto_0

    .line 868
    :pswitch_7
    const/16 v1, 0x8

    goto :goto_0

    .line 872
    :pswitch_8
    const/16 v1, 0x9

    goto :goto_0

    .line 876
    :pswitch_9
    const/16 v1, 0xa

    goto :goto_0

    .line 882
    :pswitch_a
    const/16 v1, 0xb

    goto :goto_0

    .line 888
    :pswitch_b
    const/16 v1, 0xd

    goto :goto_0

    .line 894
    :pswitch_c
    const/16 v1, 0xe

    goto :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method private findDrawableIdForSina(I)I
    .locals 4
    .parameter "weatherIconNum"

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 783
    packed-switch p1, :pswitch_data_0

    .line 826
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 787
    goto :goto_0

    .line 789
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 791
    goto :goto_0

    .line 796
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 798
    :pswitch_5
    const/16 v0, 0x11

    goto :goto_0

    .line 800
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 802
    goto :goto_0

    .line 804
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 807
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_a
    move v0, v3

    .line 809
    goto :goto_0

    .line 811
    :pswitch_b
    const/16 v0, 0xa

    goto :goto_0

    .line 814
    :pswitch_c
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_d
    move v0, v3

    .line 816
    goto :goto_0

    .line 818
    :pswitch_e
    const/16 v0, 0x12

    goto :goto_0

    .line 820
    :pswitch_f
    const/16 v0, 0x13

    goto :goto_0

    .line 822
    :pswitch_10
    const/16 v0, 0x14

    goto :goto_0

    :pswitch_11
    move v0, v2

    .line 824
    goto :goto_0

    .line 783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private setMarquee(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 941
    if-eqz p1, :cond_0

    .line 942
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 943
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 948
    :goto_0
    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 946
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method private setWeatherIcon(I)V
    .locals 4
    .parameter "iconNum"

    .prologue
    .line 516
    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 524
    .local v1, unlock_weather_drawables:[I
    const/4 v0, 0x0

    .line 525
    .local v0, i:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableIdForSina(I)I

    move-result v0

    .line 534
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 535
    return-void

    .line 527
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableIdForKweather(I)I

    move-result v0

    goto :goto_0

    .line 529
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isJapanFeature()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableIdForJapan(I)I

    move-result v0

    goto :goto_0

    .line 532
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableId(I)I

    move-result v0

    goto :goto_0

    .line 516
    nop

    :array_0
    .array-data 0x4
        0xbft 0x4t 0x8t 0x1t
        0xc0t 0x4t 0x8t 0x1t
        0xc1t 0x4t 0x8t 0x1t
        0xc2t 0x4t 0x8t 0x1t
        0xc3t 0x4t 0x8t 0x1t
        0xc4t 0x4t 0x8t 0x1t
        0xc5t 0x4t 0x8t 0x1t
        0xc6t 0x4t 0x8t 0x1t
        0xc7t 0x4t 0x8t 0x1t
        0xc8t 0x4t 0x8t 0x1t
        0xc9t 0x4t 0x8t 0x1t
        0xcat 0x4t 0x8t 0x1t
        0xcat 0x4t 0x8t 0x1t
        0xcbt 0x4t 0x8t 0x1t
        0xcct 0x4t 0x8t 0x1t
        0xcdt 0x4t 0x8t 0x1t
        0xcet 0x4t 0x8t 0x1t
        0xcft 0x4t 0x8t 0x1t
        0xd0t 0x4t 0x8t 0x1t
        0xd1t 0x4t 0x8t 0x1t
        0xd2t 0x4t 0x8t 0x1t
    .end array-data
.end method


# virtual methods
.method public getTTSMessage()Ljava/lang/String;
    .locals 10

    .prologue
    const v9, 0x104067f

    const/4 v5, 0x1

    .line 918
    const-string v0, ""

    .line 920
    .local v0, TTSMessage:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    if-nez v6, :cond_0

    move-object v1, v0

    .line 937
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 923
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_temp_scale"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 924
    .local v5, isCelsius:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_current_temp"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 925
    .local v4, currentTemp:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_weather_text"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 928
    .local v3, TtsWeather:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 929
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x104067d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 933
    .local v2, TtsDegreeText:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    const-string v6, "ClockWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS Message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 937
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto/16 :goto_0

    .line 923
    .end local v1           #TTSMessage:Ljava/lang/String;
    .end local v2           #TtsDegreeText:Ljava/lang/String;
    .end local v3           #TtsWeather:Ljava/lang/String;
    .end local v4           #currentTemp:F
    .end local v5           #isCelsius:Z
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 931
    .restart local v3       #TtsWeather:Ljava/lang/String;
    .restart local v4       #currentTemp:F
    .restart local v5       #isCelsius:Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x104067e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #TtsDegreeText:Ljava/lang/String;
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 330
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 332
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 334
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 343
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    new-instance v1, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 364
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->updateWeatherInfo()V

    .line 369
    return-void

    .line 336
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isJapanFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const-string v1, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 338
    const-string v1, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.WEATHER_DATE_SYNC"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const v2, 0x10202ed

    .line 384
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 385
    const v0, 0x10202e7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const v1, 0x1040672

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 387
    const v0, 0x10202e8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    .line 388
    const v0, 0x10202ec

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    .line 389
    const v0, 0x10202e9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    .line 390
    const v0, 0x10202eb

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 391
    const v0, 0x10202ea

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    .line 393
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x1080434

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x108042b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 399
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isJapanFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x1080435

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 952
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 954
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 955
    return-void
.end method

.method public updateWeatherInfo()V
    .locals 13

    .prologue
    .line 411
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_app_service_status"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 412
    .local v6, mAppServiceStatus:I
    and-int/lit8 v9, v6, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const/4 v4, 0x1

    .line 414
    .local v4, isServiceEnable:Z
    :goto_0
    const-string v0, ""

    .line 415
    .local v0, cityId:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 416
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_1
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isServiceEnable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1000()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 428
    const-string v9, "ClockWidget"

    const-string v10, "EasyUx mode is on, Set visibility to GONE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 431
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 508
    :goto_2
    return-void

    .line 412
    .end local v0           #cityId:Ljava/lang/String;
    .end local v4           #isServiceEnable:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 418
    .restart local v0       #cityId:Ljava/lang/String;
    .restart local v4       #isServiceEnable:Z
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_loc_code"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 433
    :cond_2
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 435
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, And data is ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 438
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 440
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 466
    const/4 v5, 0x0

    .line 467
    .local v5, lowTemp:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 468
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_high_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v2, v9

    .line 469
    .local v2, currentTemp:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_low_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v5, v9

    .line 474
    :goto_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_temp_scale"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 475
    .local v7, tempScale:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_icon_num"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 476
    .local v3, iconNum:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, cityName:Ljava/lang/String;
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Weather Data : currentTemp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tempScale = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " iconNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 488
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 489
    .local v8, text_currentTemp:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 490
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 497
    :goto_4
    const/4 v9, 0x1

    if-ne v7, v9, :cond_a

    .line 498
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v10, 0x1080424

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    :cond_3
    :goto_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setWeatherIcon(I)V

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->getTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 441
    .end local v1           #cityName:Ljava/lang/String;
    .end local v2           #currentTemp:I
    .end local v3           #iconNum:I
    .end local v5           #lowTemp:I
    .end local v7           #tempScale:I
    .end local v8           #text_currentTemp:Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_7

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 443
    :cond_5
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, But data is not ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isJapanFeature()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_invalid_loc"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 446
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const v10, 0x10406aa

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 449
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 450
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto/16 :goto_2

    .line 456
    :cond_7
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is not running, Set visibility to GONE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 459
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto/16 :goto_2

    .line 472
    .restart local v5       #lowTemp:I
    :cond_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_current_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v2, v9

    .restart local v2       #currentTemp:I
    goto/16 :goto_3

    .line 493
    .restart local v1       #cityName:Ljava/lang/String;
    .restart local v3       #iconNum:I
    .restart local v7       #tempScale:I
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #text_currentTemp:Ljava/lang/String;
    goto/16 :goto_4

    .line 499
    :cond_a
    if-nez v7, :cond_3

    .line 500
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v10, 0x1080429

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5
.end method
