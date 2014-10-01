.class public final Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
    }
.end annotation


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Landroid/preference/EditTextPreference;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mIsDismissed:Z

.field private mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

.field private mNameEditedButtonEnabled:Z

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDeviceNamePref:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 82
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    return p1
.end method

.method private addPreferencesForProfiles()V
    .locals 5

    .prologue
    .line 274
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 276
    .local v2, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PAN"

    if-ne v3, v4, :cond_0

    .line 277
    const-string v3, "DeviceProfilesSettings"

    const-string v4, "addPreferencesForProfiles::PAN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/Preference;

    move-result-object v1

    .line 279
    .local v1, pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 281
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->createProfileCheckBoxPreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 282
    .restart local v1       #pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 285
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 286
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 9
    .parameter "context"
    .parameter "profile"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 414
    .local v0, device:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 416
    const v6, 0x7f0900ae

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 419
    :cond_0
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, profileName:Ljava/lang/String;
    const v6, 0x7f0900a3

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f0900a4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, message:Ljava/lang/String;
    new-instance v1, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$2;-><init>(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V

    .line 439
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/OriginalSettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 441
    return-void
.end method

.method private createProfileCheckBoxPreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 308
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 309
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 311
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 312
    invoke-interface {p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 313
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 315
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 316
    .local v0, iconResource:I
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 325
    invoke-direct {p0, v1, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfileCheckBoxPreference(Landroid/preference/CheckBoxPreference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 327
    return-object v1
.end method

.method private createProfilePreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/Preference;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 335
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 336
    .local v1, pref:Landroid/preference/Preference;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 337
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 338
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 339
    invoke-interface {p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 340
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 342
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 343
    .local v0, iconResource:I
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 350
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 352
    invoke-direct {p0, v1, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/Preference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 354
    return-object v1
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    .line 510
    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PAN"

    if-eq v3, v4, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-object v2

    .line 513
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 517
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, ignored:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .parameter "profIndex"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private onProfileClicked(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 6
    .parameter "profile"

    .prologue
    const/4 v3, 0x1

    .line 395
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 397
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p1, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 398
    .local v2, status:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v1, v3

    .line 401
    .local v1, isConnected:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 408
    :goto_1
    return-void

    .line 398
    .end local v1           #isConnected:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 404
    .restart local v1       #isConnected:Z
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PAN"

    if-eq v4, v5, :cond_2

    .line 405
    invoke-interface {p1, v0, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 406
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, deviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 453
    return-void
.end method

.method private refreshProfileCheckBoxPreference(Landroid/preference/CheckBoxPreference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 494
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 495
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 496
    invoke-interface {p2, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 497
    return-void

    .line 494
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshProfilePreference(Landroid/preference/Preference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 505
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 506
    invoke-interface {p2, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 507
    return-void

    .line 505
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    .line 456
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 458
    .local v1, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PAN"

    if-ne v3, v4, :cond_1

    .line 459
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 460
    .local v2, profilePref:Landroid/preference/Preference;
    if-nez v2, :cond_0

    .line 461
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/Preference;

    move-result-object v2

    .line 462
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 464
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/Preference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 467
    .end local v2           #profilePref:Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 468
    .local v2, profilePref:Landroid/preference/CheckBoxPreference;
    if-nez v2, :cond_2

    .line 469
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->createProfileCheckBoxPreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    .line 470
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 472
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfileCheckBoxPreference(Landroid/preference/CheckBoxPreference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 476
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/CheckBoxPreference;
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 477
    .restart local v1       #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 478
    .local v2, profilePref:Landroid/preference/Preference;
    if-eqz v2, :cond_4

    .line 479
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 483
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/Preference;
    :cond_5
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 484
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 290
    .local v0, numProfiles:I
    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 292
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 529
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const-string v4, "device"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 141
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "remote_device_rename_edited"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    .line 147
    :goto_0
    const v4, 0x7f070015

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 149
    const-string v4, "profile_container"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 150
    const-string v4, "rename_device"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    .line 151
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 153
    if-nez v1, :cond_1

    .line 154
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Activity started without a remote Bluetooth device"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 186
    :goto_1
    return-void

    .line 143
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "device"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 158
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1
    new-instance v4, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    .line 159
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    .line 160
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 162
    .local v2, deviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    .line 163
    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 165
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    .line 169
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 170
    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 173
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_3

    .line 174
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Device not found, cannot connect to it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_1

    .line 179
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, deviceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 182
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    .line 196
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 445
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 263
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mIsDismissed:Z

    if-nez v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 266
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 270
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 271
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_1

    .line 382
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 391
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 383
    .restart local p2
    :cond_1
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 384
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 385
    .local v0, prof:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 359
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, key:Ljava/lang/String;
    const-string v4, "unpair"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    .line 362
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 363
    const/4 v4, 0x1

    .line 377
    :goto_0
    return v4

    .line 364
    :cond_0
    const-string v4, "rename_device"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 366
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    .line 367
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 368
    .local v1, d:Landroid/app/Dialog;
    instance-of v4, v1, Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 369
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 370
    .local v0, b:Landroid/widget/Button;
    iget-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 377
    .end local v0           #b:Landroid/widget/Button;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    .line 372
    :cond_2
    const-string v4, "PAN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    move-result-object v3

    .line 374
    .local v3, prof:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 13

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 213
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 214
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 216
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mIsDismissed:Z

    .line 257
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 221
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v10, p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 222
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v10}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_1

    .line 223
    const-string v10, "DeviceProfilesSettings"

    const-string v11, "onResume() bond state is BOND_NONE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 231
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    .line 233
    .local v5, et:Landroid/widget/EditText;
    if-eqz v5, :cond_4

    .line 234
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 236
    .local v2, d:Landroid/app/Dialog;
    instance-of v10, v2, Landroid/app/AlertDialog;

    if-eqz v10, :cond_4

    .line 237
    const/4 v9, 0x0

    .line 238
    .local v9, spaceNum:I
    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v8

    .line 239
    .local v8, length:I
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, deviceName:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v8, :cond_3

    .line 242
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_2

    .line 243
    add-int/lit8 v9, v9, 0x1

    .line 241
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 226
    .end local v2           #d:Landroid/app/Dialog;
    .end local v3           #deviceName:Ljava/lang/String;
    .end local v5           #et:Landroid/widget/EditText;
    .end local v7           #i:I
    .end local v8           #length:I
    .end local v9           #spaceNum:I
    :catch_0
    move-exception v4

    .line 227
    .local v4, e:Ljava/lang/IllegalStateException;
    const-string v10, "DeviceProfilesSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onResume() catch IllegalStateException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    .end local v4           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #d:Landroid/app/Dialog;
    .restart local v3       #deviceName:Ljava/lang/String;
    .restart local v5       #et:Landroid/widget/EditText;
    .restart local v7       #i:I
    .restart local v8       #length:I
    .restart local v9       #spaceNum:I
    :cond_3
    check-cast v2, Landroid/app/AlertDialog;

    .end local v2           #d:Landroid/app/Dialog;
    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 249
    .local v1, b:Landroid/widget/Button;
    iget-boolean v10, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 253
    .end local v1           #b:Landroid/widget/Button;
    .end local v3           #deviceName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #length:I
    .end local v9           #spaceNum:I
    :cond_4
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v10, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 201
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 202
    :cond_0
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "mCachedDevice is null during saving"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v0, "device"

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 205
    const-string v0, "remote_device_rename_edited"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
