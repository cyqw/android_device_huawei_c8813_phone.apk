.class public Lcom/android/phone/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Settings$MyHandler;
    }
.end annotation


# static fields
.field private static final isEnablePowerSaving:Z


# instance fields
.field private DataSwitchObserver:Landroid/database/ContentObserver;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickOnWhich:Landroid/preference/CheckBoxPreference;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/Settings$MyHandler;

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 91
    const-string v0, "ro.config.hw_power_saving"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/Settings;->isEnablePowerSaving:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 124
    new-instance v0, Lcom/android/phone/Settings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Settings$1;-><init>(Lcom/android/phone/Settings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/Settings;->DataSwitchObserver:Landroid/database/ContentObserver;

    .line 504
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .registers 4
    .parameter "NetworkMode"

    .prologue
    const v1, 0x7f0e03a1

    .line 605
    packed-switch p1, :pswitch_data_92

    .line 668
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 671
    :goto_b
    return-void

    .line 607
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 611
    :pswitch_15
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 615
    :pswitch_1e
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 619
    :pswitch_27
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 623
    :pswitch_30
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_b0

    .line 630
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 625
    :pswitch_42
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 636
    :pswitch_4b
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 640
    :pswitch_54
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00aa

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 644
    :pswitch_5d
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e039e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 648
    :pswitch_66
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e039f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 652
    :pswitch_6f
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e03a0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 656
    :pswitch_78
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 660
    :pswitch_7e
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e039d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 664
    :pswitch_87
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e03a2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 605
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_c
        :pswitch_15
        :pswitch_1e
        :pswitch_27
        :pswitch_30
        :pswitch_4b
        :pswitch_54
        :pswitch_7e
        :pswitch_6f
        :pswitch_66
        :pswitch_78
        :pswitch_5d
        :pswitch_87
    .end packed-switch

    .line 623
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_42
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/Settings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/Settings;->updateDataEnabledCheckbox()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/Settings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 693
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method private updateDataEnabledCheckbox()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 449
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 452
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 453
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 675
    packed-switch p1, :pswitch_data_1e

    .line 690
    :cond_3
    :goto_3
    return-void

    .line 677
    :pswitch_4
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 679
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 681
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_3

    .line 675
    nop

    :pswitch_data_1e
    .packed-switch 0x11
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 136
    sget-boolean v0, Lcom/android/phone/Settings;->isEnablePowerSaving:Z

    if-eqz v0, :cond_3d

    .line 137
    iget-object v0, p0, Lcom/android/phone/Settings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_1d

    .line 138
    if-ne p2, v3, :cond_17

    .line 139
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 140
    iput-boolean v2, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 165
    :cond_16
    :goto_16
    return-void

    .line 143
    :cond_17
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_16

    .line 145
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/Settings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_16

    .line 146
    if-ne p2, v3, :cond_37

    .line 147
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saving_on"

    invoke-static {v0, v1, v2}, Lcom/huawei/android/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    iput-boolean v2, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    goto :goto_16

    .line 152
    :cond_37
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_16

    .line 156
    :cond_3d
    if-ne p2, v3, :cond_47

    .line 157
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 158
    iput-boolean v2, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    goto :goto_16

    .line 161
    :cond_47
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_16
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 294
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 298
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v8

    if-eqz v8, :cond_29

    const-string v8, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 300
    const-string v8, "com.android.phone"

    const-string v9, "com.android.phone.MSimSettings"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v1}, Lcom/android/phone/Settings;->startActivity(Landroid/content/Intent;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/phone/Settings;->finish()V

    .line 386
    :cond_28
    :goto_28
    return-void

    .line 307
    :cond_29
    const v8, 0x7f060020

    invoke-virtual {p0, v8}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 309
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 310
    new-instance v8, Lcom/android/phone/Settings$MyHandler;

    const/4 v11, 0x0

    invoke-direct {v8, p0, v11}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v8, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    .line 313
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 315
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const-string v8, "button_data_enabled_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 317
    const-string v8, "button_network_always_on_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/Settings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    .line 318
    sget-boolean v8, Lcom/android/phone/Settings;->isEnablePowerSaving:Z

    if-nez v8, :cond_61

    .line 319
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 322
    :cond_61
    const-string v8, "button_roaming_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 323
    const-string v8, "preferred_network_mode_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 325
    const-string v8, "button_data_usage_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 326
    const-string v8, "cdma_lte_data_service_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/Settings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 328
    iget-object v8, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v8

    if-ne v8, v9, :cond_fc

    move v2, v9

    .line 329
    .local v2, isLteOnCdma:Z
    :goto_8e
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0a0004

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-ne v8, v9, :cond_fe

    .line 332
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 335
    iget-object v8, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "preferred_network_mode"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 338
    .local v6, settingsNetworkMode:I
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 339
    new-instance v8, Lcom/android/phone/CdmaOptions;

    iget-object v10, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v8, p0, v5, v10}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v8, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 340
    new-instance v8, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v8, p0, v5}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v8, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 369
    .end local v6           #settingsNetworkMode:I
    :cond_c9
    :goto_c9
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "setup_prepaid_data_service_url"

    invoke-static {v8, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 372
    .local v3, missingDataServiceUrl:Z
    if-eqz v2, :cond_db

    if-eqz v3, :cond_16c

    .line 373
    :cond_db
    iget-object v8, p0, Lcom/android/phone/Settings;->mLteDataServicePref:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    :goto_e0
    const-string v8, "throttle"

    invoke-virtual {p0, v8}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ThrottleManager;

    .line 379
    .local v7, tm:Landroid/net/ThrottleManager;
    new-instance v8, Lcom/android/phone/DataUsageListener;

    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v8, p0, v10, v5}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v8, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 381
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 382
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_28

    .line 384
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_28

    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #isLteOnCdma:Z
    .end local v3           #missingDataServiceUrl:Z
    .end local v7           #tm:Landroid/net/ThrottleManager;
    :cond_fc
    move v2, v10

    .line 328
    goto :goto_8e

    .line 342
    .restart local v2       #isLteOnCdma:Z
    :cond_fe
    if-nez v2, :cond_105

    .line 343
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 345
    :cond_105
    iget-object v8, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 346
    .local v4, phoneType:I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_148

    .line 347
    new-instance v8, Lcom/android/phone/CdmaOptions;

    iget-object v11, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v8, p0, v5, v11}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v8, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 348
    if-eqz v2, :cond_c9

    .line 349
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 350
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v11, 0x7f080011

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 352
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v11, 0x7f080012

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 354
    iget-object v8, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "preferred_network_mode"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 358
    .restart local v6       #settingsNetworkMode:I
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_c9

    .line 362
    .end local v6           #settingsNetworkMode:I
    :cond_148
    if-ne v4, v9, :cond_153

    .line 363
    new-instance v8, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v8, p0, v5}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v8, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto/16 :goto_c9

    .line 365
    :cond_153
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 375
    .end local v4           #phoneType:I
    .restart local v3       #missingDataServiceUrl:Z
    :cond_16c
    const-string v8, "NetworkSettings"

    const-string v10, "keep ltePref"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    if-nez v0, :cond_14

    .line 171
    sget-boolean v0, Lcom/android/phone/Settings;->isEnablePowerSaving:Z

    if-eqz v0, :cond_22

    .line 172
    iget-object v0, p0, Lcom/android/phone/Settings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_15

    .line 173
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    :cond_14
    :goto_14
    return-void

    .line 174
    :cond_15
    iget-object v0, p0, Lcom/android/phone/Settings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_14

    .line 175
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_14

    .line 178
    :cond_22
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_14
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 698
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 699
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 711
    invoke-virtual {p0}, Lcom/android/phone/Settings;->finish()V

    .line 712
    const/4 v1, 0x1

    .line 714
    :goto_d
    return v1

    :cond_e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_d
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 437
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 438
    iget-object v0, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 440
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Settings;->DataSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 442
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 464
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_38

    .line 467
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 469
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 470
    .local v0, buttonNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 473
    .local v2, settingsNetworkMode:I
    if-eq v0, v2, :cond_38

    .line 474
    move v1, v0

    .line 476
    .local v1, modemNetworkMode:I
    if-ltz v1, :cond_31

    const/16 v3, 0xc

    if-le v1, v3, :cond_32

    .line 478
    :cond_31
    const/4 v1, 0x0

    .line 484
    :cond_32
    if-nez v1, :cond_39

    const/16 v3, 0xb

    if-ne v2, v3, :cond_39

    .line 501
    .end local v0           #buttonNetworkMode:I
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_38
    :goto_38
    return v6

    .line 489
    .restart local v0       #buttonNetworkMode:I
    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_39
    invoke-direct {p0, v0}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    .line 491
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v4, v6}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_38
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 192
    iget-object v7, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v7, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 194
    const/4 v7, 0x1

    .line 288
    :goto_e
    return v7

    .line 195
    :cond_f
    iget-object v7, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v7, :cond_39

    iget-object v7, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v7, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_39

    .line 197
    const-string v7, "ril.cdma.inecmmode"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 200
    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    .line 203
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v8, 0x11

    invoke-virtual {p0, v7, v8}, Lcom/android/phone/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 207
    :cond_37
    const/4 v7, 0x1

    goto :goto_e

    .line 208
    :cond_39
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v7, :cond_59

    .line 210
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 213
    .local v3, settingsNetworkMode:I
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 214
    const/4 v7, 0x1

    goto :goto_e

    .line 215
    .end local v3           #settingsNetworkMode:I
    :cond_59
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_b1

    .line 217
    sget-boolean v7, Lcom/android/phone/Settings;->isEnablePowerSaving:Z

    if-eqz v7, :cond_65

    .line 218
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/Settings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    .line 223
    :cond_65
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 225
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 226
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00b2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 237
    :goto_a7
    const/4 v7, 0x1

    goto/16 :goto_e

    .line 235
    :cond_aa
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_a7

    .line 238
    :cond_b1
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_c9

    .line 239
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 242
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 243
    const/4 v7, 0x1

    goto/16 :goto_e

    .line 244
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_c9
    iget-object v7, p0, Lcom/android/phone/Settings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v7, :cond_11c

    .line 245
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "setup_prepaid_data_service_url"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, tmpl:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_114

    .line 248
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 250
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, imsi:Ljava/lang/String;
    if-nez v1, :cond_ed

    .line 252
    const-string v1, ""

    .line 254
    :cond_ed
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_105

    const/4 v6, 0x0

    .line 256
    .local v6, url:Ljava/lang/String;
    :goto_f4
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 257
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/phone/Settings;->startActivity(Landroid/content/Intent;)V

    .line 261
    .end local v1           #imsi:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    .end local v6           #url:Ljava/lang/String;
    :goto_102
    const/4 v7, 0x1

    goto/16 :goto_e

    .line 254
    .restart local v1       #imsi:Ljava/lang/String;
    .restart local v4       #tm:Landroid/telephony/TelephonyManager;
    :cond_105
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v5, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_f4

    .line 259
    .end local v1           #imsi:Ljava/lang/String;
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_114
    const-string v7, "NetworkSettings"

    const-string v8, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102

    .line 263
    .end local v5           #tmpl:Ljava/lang/String;
    :cond_11c
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_17a

    .line 264
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/Settings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    .line 265
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_13f

    .line 266
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "power_saving_on"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/huawei/android/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    :goto_13c
    const/4 v7, 0x1

    goto/16 :goto_e

    .line 270
    :cond_13f
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 271
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0286

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_13c

    .line 286
    :cond_17a
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 288
    const/4 v7, 0x0

    goto/16 :goto_e
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 390
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 394
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 395
    iget-object v1, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v1}, Lcom/android/phone/GsmUmtsOptions;->enableScreen()V

    .line 397
    :cond_15
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 399
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 401
    sget-boolean v1, Lcom/android/phone/Settings;->isEnablePowerSaving:Z

    if-eqz v1, :cond_41

    .line 402
    iget-object v1, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_on"

    invoke-static {v1, v2, v3}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_81

    .line 404
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 414
    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 416
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferred_network_mode_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 417
    iget-object v1, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 420
    :cond_63
    iget-object v1, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v1}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 423
    iget-object v1, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v1, :cond_71

    .line 424
    iget-object v1, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v1}, Lcom/android/phone/GsmUmtsOptions;->handlePref2g()V

    .line 429
    :cond_71
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/Settings;->DataSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 433
    return-void

    .line 406
    :cond_81
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_41
.end method
