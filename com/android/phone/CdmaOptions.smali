.class public Lcom/android/phone/CdmaOptions;
.super Ljava/lang/Object;
.source "CdmaOptions.java"


# instance fields
.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

.field private mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "prefActivity"
    .parameter "prefScreen"
    .parameter "phone"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 67
    iput-object p2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 68
    iput-object p3, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/CdmaOptions;->create()V

    .line 70
    return-void
.end method

.method private deviceSupportsNvAndRuim()Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 117
    const-string v9, "ril.subscription.types"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, subscriptionsSupported:Ljava/lang/String;
    const/4 v3, 0x0

    .line 119
    .local v3, nvSupported:Z
    const/4 v4, 0x0

    .line 121
    .local v4, ruimSupported:Z
    iget-object v9, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v9}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "cdma_ssp"

    invoke-static {v9, v10, v7}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_19

    .line 142
    :goto_18
    return v8

    .line 125
    :cond_19
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceSupportsnvAnRum: prop="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 126
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 129
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3d
    if-ge v1, v2, :cond_5a

    aget-object v5, v0, v1

    .line 130
    .local v5, subscriptionType:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 131
    const-string v9, "NV"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 132
    const/4 v3, 0x1

    .line 134
    :cond_4e
    const-string v9, "RUIM"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 135
    const/4 v4, 0x1

    .line 129
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 140
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #subscriptionType:Ljava/lang/String;
    :cond_5a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceSupportsnvAnRum: nvSupported="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ruimSupported="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 142
    if-eqz v3, :cond_80

    if-eqz v4, :cond_80

    :goto_7e
    move v8, v7

    goto :goto_18

    :cond_80
    move v7, v8

    goto :goto_7e
.end method


# virtual methods
.method protected create()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 73
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v4, 0x7f06000a

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 77
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "button_apn_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 81
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "cdma_system_select_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaSystemSelectListPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    .line 84
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "cdma_subscription_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaSubscriptionListPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    .line 87
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEnabled(Z)V

    .line 88
    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->deviceSupportsNvAndRuim()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 89
    const-string v2, "Both NV and Ruim supported, ENABLE subscription type selection"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setEnabled(Z)V

    .line 97
    :goto_43
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1110028

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 99
    .local v1, voiceCapable:Z
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v0, :cond_8d

    .line 100
    .local v0, isLTE:Z
    :goto_58
    if-nez v1, :cond_5c

    if-eqz v0, :cond_69

    .line 103
    :cond_5c
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "cdma_activate_device_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    :cond_69
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_79

    .line 109
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 113
    :cond_79
    return-void

    .line 92
    .end local v0           #isLTE:Z
    .end local v1           #voiceCapable:Z
    :cond_7a
    const-string v2, "Both NV and Ruim NOT supported, REMOVE subscription type selection"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "cdma_subscription_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_43

    .restart local v1       #voiceCapable:Z
    :cond_8d
    move v0, v3

    .line 99
    goto :goto_58
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 167
    const-string v0, "CdmaOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_system_select_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 147
    const-string v1, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 155
    :goto_12
    return v0

    .line 150
    :cond_13
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_subscription_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 151
    const-string v1, "preferenceTreeClick: return CDMA_SUBSCRIPTION_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_12

    .line 155
    :cond_25
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public showDialog(Landroid/preference/Preference;)V
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 160
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 164
    :cond_12
    :goto_12
    return-void

    .line 161
    :cond_13
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_subscription_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 162
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_12
.end method
