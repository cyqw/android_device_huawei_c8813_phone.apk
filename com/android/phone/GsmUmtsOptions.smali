.class public Lcom/android/phone/GsmUmtsOptions;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"


# instance fields
.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

.field private mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mSubscription:I


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .registers 4
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V
    .registers 6
    .parameter "prefActivity"
    .parameter "prefScreen"
    .parameter "subscription"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsOptions;->mSubscription:I

    .line 69
    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 70
    iput-object p2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 71
    iput p3, p0, Lcom/android/phone/GsmUmtsOptions;->mSubscription:I

    .line 72
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/GsmUmtsOptions;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsOptions;->create()V

    .line 74
    return-void
.end method


# virtual methods
.method protected create()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 77
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v3, 0x7f060011

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 79
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "button_apn_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 80
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "subscription"

    iget v4, p0, Lcom/android/phone/GsmUmtsOptions;->mSubscription:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "button_carrier_sel_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    .line 83
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "subscription"

    iget v4, p0, Lcom/android/phone/GsmUmtsOptions;->mSubscription:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "button_prefer_2g_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->updatePhone(Lcom/android/internal/telephony/Phone;)V

    .line 89
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "remove_useonly2G"

    invoke-static {v1, v3, v2}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_70

    .line 92
    .local v0, removeUseOnly2G:Z
    :goto_5f
    if-eqz v0, :cond_6c

    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6c

    .line 93
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 96
    :cond_6c
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsOptions;->enableScreen()V

    .line 97
    return-void

    .end local v0           #removeUseOnly2G:Z
    :cond_70
    move v0, v2

    .line 89
    goto :goto_5f
.end method

.method public enableScreen()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v5, :cond_f

    .line 101
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 104
    :cond_f
    const/4 v1, 0x1

    .line 106
    .local v1, manualNetSelAllowedFlag:Z
    :try_start_10
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/huawei/internal/telephony/PhoneEx;->isManualNetSelAllowed(Lcom/android/internal/telephony/Phone;)Z
    :try_end_15
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_10 .. :try_end_15} :catch_28

    move-result v1

    .line 111
    :goto_16
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_27

    .line 112
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v5, :cond_30

    .line 113
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 125
    :cond_27
    :goto_27
    return-void

    .line 107
    :catch_28
    move-exception v0

    .line 108
    .local v0, e:Lcom/huawei/android/util/NoExtAPIException;
    const-string v2, "enableScreen->NoExtAPIException!"

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x1

    goto :goto_16

    .line 114
    .end local v0           #e:Lcom/huawei/android/util/NoExtAPIException;
    :cond_30
    if-nez v1, :cond_38

    .line 115
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_27

    .line 116
    :cond_38
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 117
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 118
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_27

    .line 120
    :cond_55
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_27
.end method

.method handlePref2g()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 142
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    check-cast v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->handlePref2g()V

    .line 145
    :cond_b
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 135
    const-string v0, "GsmUmtsOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preference"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button_prefer_2g_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
