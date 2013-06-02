.class public Lcom/android/phone/MSimSettings;
.super Landroid/preference/PreferenceActivity;
.source "MSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final IS_MULTI_SIM:Z

.field private static final IS_UMTS_GSM:Z

.field private static final isEnablePowerSaving:Z

.field private static mUserToolbox:Z


# instance fields
.field protected final DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

.field isChinaTelecom:Z

.field isChinaUnicom:Z

.field private mButtonCategoryGeneral:Landroid/preference/PreferenceCategory;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/Preference;

.field private mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

.field private mClickOnWhich:Landroid/preference/CheckBoxPreference;

.field private mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

.field private mListPreferredDataNetwork:Landroid/preference/ListPreference;

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 105
    const-string v0, "ro.config.hw_power_saving"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimSettings;->isEnablePowerSaving:Z

    .line 142
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimSettings;->IS_MULTI_SIM:Z

    .line 145
    const-string v0, "ro.config.hw_toolbox"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimSettings;->mUserToolbox:Z

    .line 151
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "umts_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimSettings;->IS_UMTS_GSM:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 109
    const-string v0, "ro.config.hw_opta"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "92"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "ro.config.hw_optb"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "156"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v1

    :goto_26
    iput-boolean v0, p0, Lcom/android/phone/MSimSettings;->isChinaTelecom:Z

    .line 112
    const-string v0, "ro.config.hw_opta"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "17"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "ro.config.hw_optb"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "156"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :goto_48
    iput-boolean v1, p0, Lcom/android/phone/MSimSettings;->isChinaUnicom:Z

    .line 148
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/MSimSettings;->DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

    .line 155
    new-instance v0, Lcom/android/phone/MSimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimSettings$1;-><init>(Lcom/android/phone/MSimSettings;)V

    iput-object v0, p0, Lcom/android/phone/MSimSettings;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 593
    new-instance v0, Lcom/android/phone/MSimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimSettings$2;-><init>(Lcom/android/phone/MSimSettings;)V

    iput-object v0, p0, Lcom/android/phone/MSimSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_5d
    move v0, v2

    .line 109
    goto :goto_26

    :cond_5f
    move v1, v2

    .line 112
    goto :goto_48
.end method

.method static synthetic access$000(Lcom/android/phone/MSimSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MSimSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/phone/MSimSettings;->enableOrDisableNetworkSettings()V

    return-void
.end method

.method private enableOrDisableNetworkSettings()V
    .registers 13

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 607
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getSlotIdFromSubId(I)I

    move-result v4

    .line 608
    .local v4, slotId1:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v2

    .line 610
    .local v2, simState1:I
    const/4 v0, 0x0

    .line 612
    .local v0, enableCard1:Z
    if-eq v2, v8, :cond_a9

    if-eqz v2, :cond_a9

    if-eq v2, v9, :cond_a9

    if-eq v2, v10, :cond_a9

    if-eq v2, v11, :cond_a9

    .line 618
    const/4 v0, 0x1

    .line 624
    :goto_22
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getSlotIdFromSubId(I)I

    move-result v5

    .line 625
    .local v5, slotId2:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v3

    .line 627
    .local v3, simState2:I
    const/4 v1, 0x0

    .line 629
    .local v1, enableCard2:Z
    if-eq v3, v8, :cond_ac

    if-eqz v3, :cond_ac

    if-eq v3, v9, :cond_ac

    if-eq v3, v10, :cond_ac

    if-eq v3, v11, :cond_ac

    .line 635
    const/4 v1, 0x1

    .line 643
    :goto_3e
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    if-eqz v6, :cond_47

    .line 644
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    invoke-virtual {v6, v0}, Lcom/android/phone/MSimCdmaOptions;->setEnabled(Z)V

    .line 646
    :cond_47
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v6, v6, v7

    if-eqz v6, :cond_54

    .line 647
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Lcom/android/phone/MSimGsmUmtsOptions;->setEnabled(Z)V

    .line 649
    :cond_54
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v6, v6, v8

    if-eqz v6, :cond_61

    .line 650
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v6, v6, v8

    invoke-virtual {v6, v1}, Lcom/android/phone/MSimGsmUmtsOptions;->setEnabled(Z)V

    .line 652
    :cond_61
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonCategoryGeneral:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_6f

    .line 653
    iget-object v9, p0, Lcom/android/phone/MSimSettings;->mButtonCategoryGeneral:Landroid/preference/PreferenceCategory;

    if-nez v0, :cond_ae

    if-nez v1, :cond_ae

    move v6, v7

    :goto_6c
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 657
    :cond_6f
    sget-boolean v6, Lcom/android/phone/MSimSettings;->IS_MULTI_SIM:Z

    if-eqz v6, :cond_9b

    sget-boolean v6, Lcom/android/phone/MSimSettings;->IS_UMTS_GSM:Z

    if-nez v6, :cond_9b

    const-string v6, "persist.service.gsmdataservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 663
    if-nez v0, :cond_b0

    if-nez v1, :cond_b0

    .line 665
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_92

    .line 666
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 668
    :cond_92
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_9b

    .line 669
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 682
    :cond_9b
    :goto_9b
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    if-eqz v6, :cond_a8

    .line 683
    if-eqz v1, :cond_c3

    if-eqz v0, :cond_c3

    .line 684
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 701
    :cond_a8
    :goto_a8
    return-void

    .line 620
    .end local v1           #enableCard2:Z
    .end local v3           #simState2:I
    .end local v5           #slotId2:I
    :cond_a9
    const/4 v0, 0x0

    goto/16 :goto_22

    .line 637
    .restart local v1       #enableCard2:Z
    .restart local v3       #simState2:I
    .restart local v5       #slotId2:I
    :cond_ac
    const/4 v1, 0x0

    goto :goto_3e

    :cond_ae
    move v6, v8

    .line 653
    goto :goto_6c

    .line 672
    :cond_b0
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_b9

    .line 673
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 675
    :cond_b9
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_9b

    .line 676
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_9b

    .line 686
    :cond_c3
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 689
    if-eqz v1, :cond_cc

    if-eqz v0, :cond_d0

    :cond_cc
    if-nez v1, :cond_a8

    if-eqz v0, :cond_a8

    .line 691
    :cond_d0
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 693
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a8
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 183
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_1f

    sget-boolean v0, Lcom/android/phone/MSimSettings;->isEnablePowerSaving:Z

    if-eqz v0, :cond_1f

    .line 184
    const/4 v0, -0x1

    if-ne p2, v0, :cond_20

    .line 185
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saving_on"

    invoke-static {v0, v1, v2}, Lcom/huawei/android/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    iput-boolean v2, p0, Lcom/android/phone/MSimSettings;->mOkClicked:Z

    .line 194
    :cond_1f
    :goto_1f
    return-void

    .line 190
    :cond_20
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter "icicle"

    .prologue
    .line 320
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 322
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v12

    if-nez v12, :cond_a

    .line 496
    :cond_9
    :goto_9
    return-void

    .line 326
    :cond_a
    const v12, 0x7f06001b

    invoke-virtual {p0, v12}, Lcom/android/phone/MSimSettings;->addPreferencesFromResource(I)V

    .line 329
    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    iput-object v12, p0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 333
    invoke-virtual {p0}, Lcom/android/phone/MSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 335
    .local v10, prefSet:Landroid/preference/PreferenceScreen;
    const-string v12, "button_data_enabled_key"

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 337
    const-string v12, "default_data_network"

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    iput-object v12, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    .line 339
    iget-object v13, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    sget-boolean v12, Lcom/android/phone/MSimSettings;->IS_UMTS_GSM:Z

    if-eqz v12, :cond_d6

    const v12, 0x7f08002b

    :goto_3b
    invoke-virtual {v13, v12}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 341
    iget-object v13, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    sget-boolean v12, Lcom/android/phone/MSimSettings;->IS_UMTS_GSM:Z

    if-eqz v12, :cond_db

    const v12, 0x7f08002c

    :goto_47
    invoke-virtual {v13, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 344
    iget-object v12, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v12, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 345
    iget-object v12, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 347
    iget-object v12, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    const-string v12, "cdma_lte_data_service_key"

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/phone/MSimSettings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 354
    const-string v12, "button_data_usage_key"

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/phone/MSimSettings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 356
    const-string v12, "button_network_always_on_key"

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    .line 357
    const-string v12, "category_general"

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    iput-object v12, p0, Lcom/android/phone/MSimSettings;->mButtonCategoryGeneral:Landroid/preference/PreferenceCategory;

    .line 366
    const-string v12, "category_general"

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 368
    .local v6, mSimcategory:Landroid/preference/PreferenceCategory;
    iget-object v12, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    sget-boolean v12, Lcom/android/phone/MSimSettings;->isEnablePowerSaving:Z

    if-nez v12, :cond_9d

    .line 370
    iget-object v12, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    :cond_9d
    iget-object v12, p0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e0

    const/4 v2, 0x1

    .line 380
    .local v2, isLteOnCdma:Z
    :goto_a7
    const/4 v12, 0x2

    new-array v12, v12, [Lcom/android/phone/MSimGsmUmtsOptions;

    iput-object v12, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    .line 384
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v12

    if-eqz v12, :cond_120

    .line 388
    const/4 v4, 0x0

    .local v4, lSubscription:I
    :goto_b3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v12

    if-ge v4, v12, :cond_13b

    .line 390
    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 392
    .local v3, lPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 398
    .local v9, phoneType:I
    const/4 v12, 0x2

    if-ne v9, v12, :cond_e2

    .line 400
    new-instance v12, Lcom/android/phone/MSimCdmaOptions;

    invoke-direct {v12, p0, v10, v3}, Lcom/android/phone/MSimCdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v12, p0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    .line 389
    :cond_d3
    :goto_d3
    add-int/lit8 v4, v4, 0x1

    goto :goto_b3

    .line 339
    .end local v2           #isLteOnCdma:Z
    .end local v3           #lPhone:Lcom/android/internal/telephony/Phone;
    .end local v4           #lSubscription:I
    .end local v6           #mSimcategory:Landroid/preference/PreferenceCategory;
    .end local v9           #phoneType:I
    :cond_d6
    const v12, 0x7f080027

    goto/16 :goto_3b

    .line 341
    :cond_db
    const v12, 0x7f080028

    goto/16 :goto_47

    .line 377
    .restart local v6       #mSimcategory:Landroid/preference/PreferenceCategory;
    :cond_e0
    const/4 v2, 0x0

    goto :goto_a7

    .line 402
    .restart local v2       #isLteOnCdma:Z
    .restart local v3       #lPhone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #lSubscription:I
    .restart local v9       #phoneType:I
    :cond_e2
    const/4 v12, 0x1

    if-ne v9, v12, :cond_107

    .line 404
    iget-object v12, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    new-instance v13, Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-direct {v13, p0, v10, v4}, Lcom/android/phone/MSimGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    aput-object v13, v12, v4

    .line 408
    const-string v12, "button_prefer_2g_key"

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 412
    .local v5, lUseOnly2GNetworksPreference:Landroid/preference/CheckBoxPreference;
    if-eqz v4, :cond_101

    const-string v12, "ro.config.remove_useonly2G"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_d3

    :cond_101
    if-eqz v5, :cond_d3

    .line 417
    invoke-virtual {v10, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_d3

    .line 420
    .end local v5           #lUseOnly2GNetworksPreference:Landroid/preference/CheckBoxPreference;
    :cond_107
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected phone type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 425
    .end local v3           #lPhone:Lcom/android/internal/telephony/Phone;
    .end local v4           #lSubscription:I
    .end local v9           #phoneType:I
    :cond_120
    if-nez v2, :cond_127

    .line 426
    iget-object v12, p0, Lcom/android/phone/MSimSettings;->mButtonPreferredNetworkMode:Landroid/preference/Preference;

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 429
    :cond_127
    iget-object v12, p0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 431
    .restart local v9       #phoneType:I
    const/4 v12, 0x2

    if-ne v9, v12, :cond_18d

    .line 433
    new-instance v12, Lcom/android/phone/MSimCdmaOptions;

    iget-object v13, p0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v12, p0, v10, v13}, Lcom/android/phone/MSimCdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v12, p0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    .line 436
    if-eqz v2, :cond_13b

    .line 458
    .end local v9           #phoneType:I
    :cond_13b
    :goto_13b
    invoke-direct {p0}, Lcom/android/phone/MSimSettings;->enableOrDisableNetworkSettings()V

    .line 460
    const-string v12, "button_settings_manage_sub"

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 461
    .local v7, manageSub:Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_15a

    .line 462
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 463
    .local v0, intent:Landroid/content/Intent;
    const-string v12, "PACKAGE"

    const-string v13, "com.android.phone"

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v12, "TARGET_CLASS"

    const-string v13, "com.android.phone.MSimNetworkSettings"

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    .end local v0           #intent:Landroid/content/Intent;
    :cond_15a
    invoke-virtual {p0}, Lcom/android/phone/MSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "setup_prepaid_data_service_url"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 470
    .local v8, missingDataServiceUrl:Z
    if-eqz v2, :cond_16c

    if-eqz v8, :cond_1b4

    .line 478
    :cond_16c
    :goto_16c
    const-string v12, "throttle"

    invoke-virtual {p0, v12}, Lcom/android/phone/MSimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ThrottleManager;

    .line 490
    .local v11, tm:Landroid/net/ThrottleManager;
    sget-boolean v12, Lcom/android/phone/MSimSettings;->IS_MULTI_SIM:Z

    if-eqz v12, :cond_9

    sget-boolean v12, Lcom/android/phone/MSimSettings;->mUserToolbox:Z

    if-eqz v12, :cond_9

    .line 491
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 492
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v12, "com.android.huawei.DATASERVICE_SETTING_CHANGED"

    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    iget-object v12, p0, Lcom/android/phone/MSimSettings;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v12, v1}, Lcom/android/phone/MSimSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 448
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    .end local v7           #manageSub:Landroid/preference/PreferenceScreen;
    .end local v8           #missingDataServiceUrl:Z
    .end local v11           #tm:Landroid/net/ThrottleManager;
    .restart local v9       #phoneType:I
    :cond_18d
    const/4 v12, 0x1

    if-ne v9, v12, :cond_19b

    .line 450
    iget-object v12, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    const/4 v13, 0x1

    new-instance v14, Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-direct {v14, p0, v10}, Lcom/android/phone/MSimGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    aput-object v14, v12, v13

    goto :goto_13b

    .line 453
    :cond_19b
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected phone type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 475
    .end local v9           #phoneType:I
    .restart local v7       #manageSub:Landroid/preference/PreferenceScreen;
    .restart local v8       #missingDataServiceUrl:Z
    :cond_1b4
    const-string v12, "MSimSettings"

    const-string v13, "keep ltePref"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 305
    const/16 v1, 0x64

    if-ne p1, v1, :cond_20

    .line 306
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/MSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e040e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 309
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 310
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 314
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 540
    sget-boolean v0, Lcom/android/phone/MSimSettings;->IS_MULTI_SIM:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/phone/MSimSettings;->mUserToolbox:Z

    if-eqz v0, :cond_d

    .line 541
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    :cond_d
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 545
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/phone/MSimSettings;->mOkClicked:Z

    if-nez v0, :cond_10

    .line 205
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_10

    .line 206
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 210
    :cond_10
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 549
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 554
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 556
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 566
    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    invoke-virtual {v3, p1, p2}, Lcom/android/phone/MSimCdmaOptions;->preferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v3

    if-ne v1, v3, :cond_f

    .line 590
    :cond_e
    :goto_e
    return v1

    .line 571
    :cond_f
    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lcom/android/phone/MSimGsmUmtsOptions;->preferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_e

    .line 575
    :cond_1f
    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lcom/android/phone/MSimGsmUmtsOptions;->preferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_e

    .line 579
    :cond_2f
    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_57

    .line 580
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, option:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    .line 584
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 586
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_e

    .end local v0           #option:Ljava/lang/String;
    :cond_57
    move v1, v2

    .line 590
    goto :goto_e
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 241
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_18

    .line 242
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/phone/MSimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 245
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 298
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_17
    :goto_17
    return v6

    .line 247
    :cond_18
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_67

    .line 248
    invoke-virtual {p0}, Lcom/android/phone/MSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "setup_prepaid_data_service_url"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, tmpl:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 251
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/phone/MSimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 253
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, imsi:Ljava/lang/String;
    if-nez v1, :cond_3c

    .line 255
    const-string v1, ""

    .line 257
    :cond_3c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_52

    const/4 v5, 0x0

    .line 259
    .local v5, url:Ljava/lang/String;
    :goto_43
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 260
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_17

    .line 257
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #url:Ljava/lang/String;
    :cond_52
    new-array v8, v6, [Ljava/lang/CharSequence;

    aput-object v1, v8, v7

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    .line 262
    .end local v1           #imsi:Ljava/lang/String;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_5f
    const-string v7, "MSimSettings"

    const-string v8, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 267
    .end local v4           #tmpl:Ljava/lang/String;
    :cond_67
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    if-eq p2, v8, :cond_17

    .line 269
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_c6

    .line 270
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/MSimSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    .line 271
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 272
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_on"

    invoke-static {v8, v9, v7}, Lcom/huawei/android/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    .line 276
    :cond_8b
    iput-boolean v7, p0, Lcom/android/phone/MSimSettings;->mOkClicked:Z

    .line 277
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MSimSettings;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_17

    :cond_c6
    move v6, v7

    .line 298
    goto/16 :goto_17
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 500
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 504
    invoke-virtual {p0}, Lcom/android/phone/MSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 506
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/MSimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 509
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 517
    sget-boolean v2, Lcom/android/phone/MSimSettings;->isEnablePowerSaving:Z

    if-eqz v2, :cond_38

    .line 518
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_on"

    invoke-static {v2, v3, v5}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_45

    .line 520
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 526
    :cond_38
    :goto_38
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 527
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/MSimSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 529
    return-void

    .line 522
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_45
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_38
.end method
