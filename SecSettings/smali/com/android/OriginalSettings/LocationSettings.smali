.class public Lcom/android/OriginalSettings/LocationSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private LBS_ENABLED:Ljava/lang/String;

.field private LBS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

.field private VZW_PROVIDER:Ljava/lang/String;

.field private am:Landroid/app/ActivityManager;

.field private enabledGps:Z

.field private gpsDialog:Landroid/app/Dialog;

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSp:Landroid/preference/SwitchPreferenceScreen;

.field private mUseLocation:Landroid/preference/CheckBoxPreference;

.field private mVZW:Landroid/preference/CheckBoxPreference;

.field private vzwDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/LocationSettings;->enabledGps:Z

    .line 92
    const-string v0, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    iput-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->LBS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

    .line 93
    const-string v0, "lbsEnabled"

    iput-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->LBS_ENABLED:Ljava/lang/String;

    .line 94
    const-string v0, "vzw_lbs"

    iput-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->VZW_PROVIDER:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 127
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 130
    :cond_0
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/LocationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->am:Landroid/app/ActivityManager;

    .line 135
    const v3, 0x7f070039

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/LocationSettings;->addPreferencesFromResource(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 142
    const-string v3, "location_network"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v3, "location_gps"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 148
    const-string v3, "location_history"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    .line 149
    iget-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/OriginalSettings/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    :cond_1
    const-string v3, "assisted_gps"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, sales_code:Ljava/lang/String;
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CTC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    iget-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/GoogleLocationSettingHelper;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 177
    .local v2, useLocation:Landroid/preference/CheckBoxPreference;
    const-string v3, "location_use_for_services"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 178
    const v3, 0x7f090563

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 179
    const v3, 0x7f090564

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/GoogleLocationSettingHelper;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 184
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 186
    iput-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    .line 190
    .end local v2           #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    iget-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f09055c

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 195
    :cond_4
    return-object v0

    .restart local v2       #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_5
    move v3, v5

    .line 180
    goto :goto_0
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->am:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 492
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/LocationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->am:Landroid/app/ActivityManager;

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDialogShowing(Landroid/app/Dialog;)Z
    .locals 1
    .parameter "dialog"

    .prologue
    .line 498
    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 501
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLocationToggles()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 371
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 373
    .local v4, res:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "enterprise_policy"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 375
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .line 377
    .local v2, lp:Landroid/app/enterprise/LocationPolicy;
    if-eqz v2, :cond_1

    .line 378
    iget-object v6, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    .line 379
    iget-object v9, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v6, "network"

    invoke-virtual {v2, v6}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 381
    :cond_0
    iget-object v9, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const-string v6, "gps"

    invoke-virtual {v2, v6}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 385
    :cond_1
    const/4 v5, 0x0

    .line 392
    .local v5, vzwEnabled:Z
    const-string v6, "gps"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 394
    .local v1, gpsEnabled:Z
    iget-object v6, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v9, "network"

    invoke-static {v4, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 396
    const/4 v3, 0x0

    .line 400
    .local v3, networkEnabled:Z
    iget-object v6, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 401
    iget-object v6, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_2

    .line 402
    iget-object v6, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v9, "assisted_gps_enabled"

    const/4 v10, 0x2

    invoke-static {v4, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_5

    :goto_2
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 404
    iget-object v6, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 447
    :cond_2
    return-void

    .end local v1           #gpsEnabled:Z
    .end local v3           #networkEnabled:Z
    .end local v5           #vzwEnabled:Z
    :cond_3
    move v6, v8

    .line 379
    goto :goto_0

    :cond_4
    move v6, v8

    .line 381
    goto :goto_1

    .restart local v1       #gpsEnabled:Z
    .restart local v3       #networkEnabled:Z
    .restart local v5       #vzwEnabled:Z
    :cond_5
    move v7, v8

    .line 402
    goto :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 463
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 464
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 465
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 469
    if-nez p2, :cond_0

    move v0, v1

    .line 470
    .end local p2
    .local v0, newValue:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/OriginalSettings/GoogleLocationSettingHelper;->setUseLocationForServices(Landroid/content/Context;Z)V

    .line 487
    .end local v0           #newValue:Z
    :goto_1
    return v1

    .line 469
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 478
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v1, :cond_2

    .line 487
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 253
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "network"

    iget-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 364
    :cond_0
    :goto_0
    return v1

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 257
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 324
    const-string v2, "USC"

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 325
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/OriginalSettings/LocationAlert;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/LocationSettings;->startActivity(Landroid/content/Intent;)V

    .line 332
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_1

    .line 335
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 337
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 338
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 340
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090560

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09055f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x108009b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/LocationSettings$10;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/LocationSettings$10;-><init>(Lcom/android/OriginalSettings/LocationSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 353
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 356
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 361
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 204
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->vzwDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/LocationSettings;->isDialogShowing(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->gpsDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/LocationSettings;->isDialogShowing(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->updateLocationToggles()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Lcom/android/OriginalSettings/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/LocationSettings$1;-><init>(Lcom/android/OriginalSettings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 218
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStart()V

    .line 100
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 104
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 105
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 110
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->vzwDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/LocationSettings;->isDialogShowing(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mVZW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->vzwDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 123
    :cond_1
    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->gpsDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/LocationSettings;->isDialogShowing(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->gpsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
