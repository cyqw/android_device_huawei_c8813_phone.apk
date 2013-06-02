.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$MyHandler;
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

.field private mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 83
    const-string v0, "ro.config.hw_power_saving"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MobileNetworkSettings;->isEnablePowerSaving:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 116
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$1;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->DataSwitchObserver:Landroid/database/ContentObserver;

    .line 522
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .registers 4
    .parameter "NetworkMode"

    .prologue
    const v1, 0x7f0e03a1

    .line 624
    packed-switch p1, :pswitch_data_92

    .line 687
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 690
    :goto_b
    return-void

    .line 626
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 630
    :pswitch_15
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 634
    :pswitch_1e
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 638
    :pswitch_27
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 642
    :pswitch_30
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_b0

    .line 649
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 644
    :pswitch_42
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 655
    :pswitch_4b
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 659
    :pswitch_54
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00aa

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 663
    :pswitch_5d
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e039e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 667
    :pswitch_66
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e039f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 671
    :pswitch_6f
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e03a0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 675
    :pswitch_78
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 679
    :pswitch_7e
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e039d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 683
    :pswitch_87
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e03a2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 624
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

    .line 642
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_42
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/MobileNetworkSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateDataEnabledCheckbox()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MobileNetworkSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 712
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void
.end method

.method private updateDataEnabledCheckbox()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 439
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

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

    .line 443
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 446
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 447
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 694
    packed-switch p1, :pswitch_data_1e

    .line 709
    :cond_3
    :goto_3
    return-void

    .line 696
    :pswitch_4
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 698
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 700
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_3

    .line 694
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

    .line 128
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->isEnablePowerSaving:Z

    if-eqz v0, :cond_3d

    .line 129
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_1d

    .line 130
    if-ne p2, v3, :cond_17

    .line 131
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 132
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 157
    :cond_16
    :goto_16
    return-void

    .line 135
    :cond_17
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_16

    .line 137
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_16

    .line 138
    if-ne p2, v3, :cond_37

    .line 139
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saving_on"

    invoke-static {v0, v1, v2}, Landroid/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    goto :goto_16

    .line 144
    :cond_37
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_16

    .line 148
    :cond_3d
    if-ne p2, v3, :cond_47

    .line 149
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 150
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    goto :goto_16

    .line 153
    :cond_47
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_16
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 286
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 289
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 290
    const-string v8, "com.android.phone"

    const-string v9, "com.android.phone.MSimSettings"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    .line 376
    :cond_1c
    :goto_1c
    return-void

    .line 297
    :cond_1d
    const v8, 0x7f060020

    invoke-virtual {p0, v8}, Lcom/android/phone/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 299
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 300
    new-instance v8, Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v11, 0x0

    invoke-direct {v8, p0, v11}, Lcom/android/phone/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    .line 303
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 305
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const-string v8, "button_data_enabled_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 307
    const-string v8, "button_network_always_on_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    .line 308
    sget-boolean v8, Lcom/android/phone/MobileNetworkSettings;->isEnablePowerSaving:Z

    if-nez v8, :cond_52

    .line 309
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 312
    :cond_52
    const-string v8, "button_roaming_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 313
    const-string v8, "preferred_network_mode_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 315
    const-string v8, "button_data_usage_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 316
    const-string v8, "cdma_lte_data_service_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 318
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v8

    if-ne v8, v9, :cond_ed

    move v2, v9

    .line 319
    .local v2, isLteOnCdma:Z
    :goto_7f
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0a0004

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-ne v8, v9, :cond_ef

    .line 322
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 325
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "preferred_network_mode"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 328
    .local v6, settingsNetworkMode:I
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 329
    new-instance v8, Lcom/android/phone/CdmaOptions;

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v8, p0, v5, v10}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 330
    new-instance v8, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v8, p0, v5}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 359
    .end local v6           #settingsNetworkMode:I
    :cond_ba
    :goto_ba
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "setup_prepaid_data_service_url"

    invoke-static {v8, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 362
    .local v3, missingDataServiceUrl:Z
    if-eqz v2, :cond_cc

    if-eqz v3, :cond_15d

    .line 363
    :cond_cc
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    :goto_d1
    const-string v8, "throttle"

    invoke-virtual {p0, v8}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ThrottleManager;

    .line 369
    .local v7, tm:Landroid/net/ThrottleManager;
    new-instance v8, Lcom/android/phone/DataUsageListener;

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v8, p0, v10, v5}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 371
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 372
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1c

    .line 374
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_1c

    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #isLteOnCdma:Z
    .end local v3           #missingDataServiceUrl:Z
    .end local v7           #tm:Landroid/net/ThrottleManager;
    :cond_ed
    move v2, v10

    .line 318
    goto :goto_7f

    .line 332
    .restart local v2       #isLteOnCdma:Z
    :cond_ef
    if-nez v2, :cond_f6

    .line 333
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    :cond_f6
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 336
    .local v4, phoneType:I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_139

    .line 337
    new-instance v8, Lcom/android/phone/CdmaOptions;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v8, p0, v5, v11}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 338
    if-eqz v2, :cond_ba

    .line 339
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 340
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v11, 0x7f080011

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 342
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v11, 0x7f080012

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 344
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "preferred_network_mode"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 348
    .restart local v6       #settingsNetworkMode:I
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_ba

    .line 352
    .end local v6           #settingsNetworkMode:I
    :cond_139
    if-ne v4, v9, :cond_144

    .line 353
    new-instance v8, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v8, p0, v5}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto/16 :goto_ba

    .line 355
    :cond_144
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

    .line 365
    .end local v4           #phoneType:I
    .restart local v3       #missingDataServiceUrl:Z
    :cond_15d
    const-string v8, "NetworkSettings"

    const-string v10, "keep ltePref"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    if-nez v0, :cond_14

    .line 163
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->isEnablePowerSaving:Z

    if-eqz v0, :cond_22

    .line 164
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_15

    .line 165
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    :cond_14
    :goto_14
    return-void

    .line 166
    :cond_15
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_14

    .line 167
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_14

    .line 170
    :cond_22
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_14
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 717
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 718
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 730
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    .line 731
    const/4 v1, 0x1

    .line 733
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
    .line 431
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 432
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 434
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->DataSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 436
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 458
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_50

    .line 461
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 463
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 464
    .local v0, buttonNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 467
    .local v2, settingsNetworkMode:I
    if-eq v0, v2, :cond_50

    .line 469
    packed-switch v0, :pswitch_data_80

    .line 495
    const/4 v1, 0x0

    .line 501
    .local v1, modemNetworkMode:I
    :goto_2e
    if-ltz v1, :cond_34

    const/16 v3, 0xc

    if-le v1, v3, :cond_61

    .line 503
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network Mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Chosen. Ignore mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 519
    .end local v0           #buttonNetworkMode:I
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_50
    :goto_50
    return v6

    .line 471
    .restart local v0       #buttonNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :pswitch_51
    const/4 v1, 0x7

    .line 472
    .restart local v1       #modemNetworkMode:I
    goto :goto_2e

    .line 474
    .end local v1           #modemNetworkMode:I
    :pswitch_53
    const/4 v1, 0x6

    .line 475
    .restart local v1       #modemNetworkMode:I
    goto :goto_2e

    .line 477
    .end local v1           #modemNetworkMode:I
    :pswitch_55
    const/4 v1, 0x5

    .line 478
    .restart local v1       #modemNetworkMode:I
    goto :goto_2e

    .line 480
    .end local v1           #modemNetworkMode:I
    :pswitch_57
    const/4 v1, 0x4

    .line 481
    .restart local v1       #modemNetworkMode:I
    goto :goto_2e

    .line 483
    .end local v1           #modemNetworkMode:I
    :pswitch_59
    const/4 v1, 0x3

    .line 484
    .restart local v1       #modemNetworkMode:I
    goto :goto_2e

    .line 486
    .end local v1           #modemNetworkMode:I
    :pswitch_5b
    const/4 v1, 0x2

    .line 487
    .restart local v1       #modemNetworkMode:I
    goto :goto_2e

    .line 489
    .end local v1           #modemNetworkMode:I
    :pswitch_5d
    const/4 v1, 0x1

    .line 490
    .restart local v1       #modemNetworkMode:I
    goto :goto_2e

    .line 492
    .end local v1           #modemNetworkMode:I
    :pswitch_5f
    const/4 v1, 0x0

    .line 493
    .restart local v1       #modemNetworkMode:I
    goto :goto_2e

    .line 507
    :cond_61
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 509
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 513
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v4, v6}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_50

    .line 469
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5d
        :pswitch_5b
        :pswitch_59
        :pswitch_57
        :pswitch_55
        :pswitch_53
        :pswitch_51
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 184
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v7, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 186
    const/4 v7, 0x1

    .line 280
    :goto_e
    return v7

    .line 187
    :cond_f
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v7, :cond_39

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v7, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_39

    .line 189
    const-string v7, "ril.cdma.inecmmode"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 192
    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 195
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v8, 0x11

    invoke-virtual {p0, v7, v8}, Lcom/android/phone/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    :cond_37
    const/4 v7, 0x1

    goto :goto_e

    .line 200
    :cond_39
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v7, :cond_59

    .line 202
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 205
    .local v3, settingsNetworkMode:I
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 206
    const/4 v7, 0x1

    goto :goto_e

    .line 207
    .end local v3           #settingsNetworkMode:I
    :cond_59
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_b1

    .line 209
    sget-boolean v7, Lcom/android/phone/MobileNetworkSettings;->isEnablePowerSaving:Z

    if-eqz v7, :cond_65

    .line 210
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    .line 215
    :cond_65
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 217
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 218
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00b2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1010355

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

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

    .line 229
    :goto_a7
    const/4 v7, 0x1

    goto/16 :goto_e

    .line 227
    :cond_aa
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_a7

    .line 230
    :cond_b1
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_c9

    .line 231
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 234
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 235
    const/4 v7, 0x1

    goto/16 :goto_e

    .line 236
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_c9
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v7, :cond_11c

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "setup_prepaid_data_service_url"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, tmpl:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_114

    .line 240
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 242
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, imsi:Ljava/lang/String;
    if-nez v1, :cond_ed

    .line 244
    const-string v1, ""

    .line 246
    :cond_ed
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_105

    const/4 v6, 0x0

    .line 248
    .local v6, url:Ljava/lang/String;
    :goto_f4
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    .line 253
    .end local v1           #imsi:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    .end local v6           #url:Ljava/lang/String;
    :goto_102
    const/4 v7, 0x1

    goto/16 :goto_e

    .line 246
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

    .line 251
    .end local v1           #imsi:Ljava/lang/String;
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_114
    const-string v7, "NetworkSettings"

    const-string v8, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102

    .line 255
    .end local v5           #tmpl:Ljava/lang/String;
    :cond_11c
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_17a

    .line 256
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    .line 257
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_13f

    .line 258
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "power_saving_on"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    :goto_13c
    const/4 v7, 0x1

    goto/16 :goto_e

    .line 262
    :cond_13f
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 263
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

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

    .line 278
    :cond_17a
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 280
    const/4 v7, 0x0

    goto/16 :goto_e
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 380
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 382
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 427
    :goto_b
    return-void

    .line 388
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 389
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v1}, Lcom/android/phone/GsmUmtsOptions;->enableScreen()V

    .line 391
    :cond_1c
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 393
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 395
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->isEnablePowerSaving:Z

    if-eqz v1, :cond_48

    .line 396
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_on"

    invoke-static {v1, v2, v3}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_88

    .line 398
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 408
    :cond_48
    :goto_48
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 410
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferred_network_mode_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 411
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 414
    :cond_6a
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v1}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 417
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v1, :cond_78

    .line 418
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v1}, Lcom/android/phone/GsmUmtsOptions;->handlePref2g()V

    .line 423
    :cond_78
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->DataSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_b

    .line 400
    :cond_88
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_48
.end method
