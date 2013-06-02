.class public Lcom/android/phone/CdmaCallOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallOptions.java"


# instance fields
.field private final DBG:Z

.field private mButtonVoicePrivacy:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallOptions;->DBG:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallOptions;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "subscription"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 61
    .local v2, subscription:I
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 63
    const-string v3, "button_cdma_cf_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 64
    .local v0, lButtonCallForward:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_2b

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    .end local v0           #lButtonCallForward:Landroid/preference/PreferenceScreen;
    :cond_2b
    const-string v3, "CdmaCallOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting CDMACallOptions subscription ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 73
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const-string v3, "button_voice_privacy_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CdmaCallOptions;->mButtonVoicePrivacy:Landroid/preference/CheckBoxPreference;

    .line 75
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_69

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 79
    :cond_69
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 81
    :cond_70
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button_voice_privacy_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
