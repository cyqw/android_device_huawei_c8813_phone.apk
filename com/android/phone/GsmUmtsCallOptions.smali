.class public Lcom/android/phone/GsmUmtsCallOptions;
.super Landroid/preference/PreferenceActivity;
.source "GsmUmtsCallOptions.java"


# instance fields
.field private final DBG:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubscription:I

.field private subscriptionPrefCFE:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->DBG:Z

    .line 45
    iput v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSubscription:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallOptions;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSubscription:I

    .line 58
    const-string v1, "button_cf_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->subscriptionPrefCFE:Landroid/preference/PreferenceScreen;

    .line 59
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->subscriptionPrefCFE:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    iget v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSubscription:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "button_more_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 63
    .local v0, subscriptionPrefAdditionSettings:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    iget v3, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSubscription:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSubscription:I

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 66
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_64

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 70
    :cond_64
    return-void
.end method
