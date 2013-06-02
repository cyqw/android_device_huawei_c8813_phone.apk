.class public Lcom/android/phone/MSimNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MSimNetworkSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimNetworkSettings$1;,
        Lcom/android/phone/MSimNetworkSettings$MyHandler;
    }
.end annotation


# instance fields
.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

.field private mHandler:Lcom/android/phone/MSimNetworkSettings$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubscription:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 290
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .registers 4
    .parameter "NetworkMode"

    .prologue
    const v1, 0x7f0e03a1

    .line 382
    packed-switch p1, :pswitch_data_88

    .line 441
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 444
    :goto_b
    return-void

    .line 384
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 388
    :pswitch_15
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 392
    :pswitch_1e
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 396
    :pswitch_27
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 400
    :pswitch_30
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    .line 407
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 402
    :pswitch_42
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 413
    :pswitch_4b
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 417
    :pswitch_54
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e00aa

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 421
    :pswitch_5d
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e039e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 425
    :pswitch_66
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e039f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 429
    :pswitch_6f
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e03a0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 433
    :pswitch_78
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 437
    :pswitch_7e
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0e039d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 382
    nop

    :pswitch_data_88
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
    .end packed-switch

    .line 400
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_42
    .end packed-switch
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/phone/MSimNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MSimNetworkSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferredNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/MSimNetworkSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/phone/MSimNetworkSettings;->setPreferredNetworkMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/MSimNetworkSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/phone/MSimNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MSimNetworkSettings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MSimNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getPreferredNetworkMode()I
    .registers 6

    .prologue
    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    invoke-static {v2, v3, v4}, Lcom/huawei/android/provider/SettingsEx$Secure;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_11} :catch_13

    move-result v0

    .line 278
    .local v0, nwMode:I
    :goto_12
    return v0

    .line 274
    .end local v0           #nwMode:I
    :catch_13
    move-exception v1

    .line 275
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-static {v2}, Lcom/android/phone/MSimNetworkSettings;->log(Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    .restart local v0       #nwMode:I
    goto :goto_12
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 466
    const-string v0, "MSimNetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method private setPreferredNetworkMode(I)V
    .registers 5
    .parameter "nwMode"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    iget v2, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/android/provider/SettingsEx$Secure;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 287
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableScreen()V

    .line 288
    :cond_1a
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 448
    packed-switch p1, :pswitch_data_1e

    .line 463
    :cond_3
    :goto_3
    return-void

    .line 450
    :pswitch_4
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 452
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 454
    iget-object v1, p0, Lcom/android/phone/MSimNetworkSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimCdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_3

    .line 448
    nop

    :pswitch_data_1e
    .packed-switch 0x11
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v6

    if-nez v6, :cond_c

    .line 197
    :cond_b
    :goto_b
    return-void

    .line 128
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 129
    .local v0, app:Lcom/android/phone/PhoneApp;
    const v6, 0x7f06001d

    invoke-virtual {p0, v6}, Lcom/android/phone/MSimNetworkSettings;->addPreferencesFromResource(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/MSimNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v9, "subscription"

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    .line 132
    iget v6, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 133
    new-instance v6, Lcom/android/phone/MSimNetworkSettings$MyHandler;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lcom/android/phone/MSimNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MSimNetworkSettings;Lcom/android/phone/MSimNetworkSettings$1;)V

    iput-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mHandler:Lcom/android/phone/MSimNetworkSettings$MyHandler;

    .line 136
    invoke-virtual {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 138
    .local v4, prefSet:Landroid/preference/PreferenceScreen;
    const-string v6, "preferred_network_mode_key"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 141
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v6

    if-ne v6, v7, :cond_68

    move v2, v7

    .line 142
    .local v2, isLteOnCdma:Z
    :goto_4d
    invoke-virtual {p0}, Lcom/android/phone/MSimNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0004

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-ne v6, v7, :cond_9c

    .line 143
    const-string v6, "ro.monkey"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 144
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_b

    .end local v2           #isLteOnCdma:Z
    :cond_68
    move v2, v8

    .line 141
    goto :goto_4d

    .line 148
    .restart local v2       #isLteOnCdma:Z
    :cond_6a
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 154
    .local v5, settingsNetworkMode:I
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 156
    new-instance v6, Lcom/android/phone/MSimCdmaOptions;

    iget-object v7, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v6, p0, v4, v7}, Lcom/android/phone/MSimCdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    .line 157
    new-instance v6, Lcom/android/phone/MSimGsmUmtsOptions;

    iget v7, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    invoke-direct {v6, p0, v4, v7}, Lcom/android/phone/MSimGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    goto/16 :goto_b

    .line 161
    .end local v5           #settingsNetworkMode:I
    :cond_9c
    if-nez v2, :cond_a3

    .line 162
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    :cond_a3
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 165
    .local v3, phoneType:I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_e7

    .line 167
    new-instance v6, Lcom/android/phone/MSimCdmaOptions;

    iget-object v7, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v6, p0, v4, v7}, Lcom/android/phone/MSimCdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    .line 169
    if-eqz v2, :cond_b

    .line 170
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v7, 0x7f080011

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 173
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v7, 0x7f080012

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 175
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 179
    .restart local v5       #settingsNetworkMode:I
    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 183
    .end local v5           #settingsNetworkMode:I
    :cond_e7
    if-ne v3, v7, :cond_fe

    .line 187
    :try_start_e9
    new-instance v6, Lcom/android/phone/MSimGsmUmtsOptions;

    iget v7, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    invoke-direct {v6, p0, v4, v7}, Lcom/android/phone/MSimGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;
    :try_end_f2
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_e9 .. :try_end_f2} :catch_f4

    goto/16 :goto_b

    .line 188
    :catch_f4
    move-exception v1

    .line 189
    .local v1, e:Lcom/huawei/android/util/NoExtAPIException;
    const-string v6, "MSimNetworkSettings"

    const-string v7, "onCreate->NoExtAPIException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 194
    .end local v1           #e:Lcom/huawei/android/util/NoExtAPIException;
    :cond_fe
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 221
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x1

    .line 232
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_29

    .line 235
    iget-object v4, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 237
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 238
    .local v0, buttonNetworkMode:I
    invoke-direct {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferredNetworkMode()I

    move-result v2

    .line 239
    .local v2, settingsNetworkMode:I
    if-eq v0, v2, :cond_29

    .line 240
    move v1, v0

    .line 242
    .local v1, modemNetworkMode:I
    if-ltz v1, :cond_24

    if-le v1, v6, :cond_25

    .line 244
    :cond_24
    const/4 v1, 0x0

    .line 250
    :cond_25
    if-nez v1, :cond_2a

    if-ne v2, v6, :cond_2a

    .line 264
    .end local v0           #buttonNetworkMode:I
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_29
    :goto_29
    return v5

    .line 255
    .restart local v0       #buttonNetworkMode:I
    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_2a
    invoke-direct {p0, v0}, Lcom/android/phone/MSimNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 256
    invoke-direct {p0, v0}, Lcom/android/phone/MSimNetworkSettings;->setPreferredNetworkMode(I)V

    .line 258
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/MSimNetworkSettings;->mHandler:Lcom/android/phone/MSimNetworkSettings$MyHandler;

    invoke-virtual {v4, v5}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_29
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-virtual {v3, p2}, Lcom/android/phone/MSimGsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v3

    if-ne v3, v1, :cond_f

    .line 116
    :cond_e
    :goto_e
    return v1

    .line 92
    :cond_f
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    invoke-virtual {v3, p2}, Lcom/android/phone/MSimCdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v3

    if-ne v3, v1, :cond_37

    .line 94
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 97
    iput-object p2, p0, Lcom/android/phone/MSimNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 100
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/MSimNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 105
    :cond_37
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_49

    .line 107
    invoke-direct {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferredNetworkMode()I

    move-result v0

    .line 108
    .local v0, settingsNetworkMode:I
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_e

    .line 114
    .end local v0           #settingsNetworkMode:I
    :cond_49
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v1, v2

    .line 116
    goto :goto_e
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 201
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 203
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 216
    :cond_9
    :goto_9
    return-void

    .line 209
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableScreen()V

    .line 212
    :cond_1b
    invoke-virtual {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferred_network_mode_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 213
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimNetworkSettings;->mHandler:Lcom/android/phone/MSimNetworkSettings$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_9
.end method
