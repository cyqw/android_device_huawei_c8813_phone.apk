.class public Lcom/android/phone/CdmaCallWaitingPreference;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallWaitingPreference.java"


# instance fields
.field private mButtonCwOff:Landroid/preference/Preference;

.field private mButtonCwOn:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private dialFc(Ljava/lang/String;)V
    .registers 6
    .parameter "featureCode"

    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 83
    :goto_6
    return-void

    .line 71
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 79
    const-string v1, "subscription"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    :cond_26
    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method private showErrorDialog()V
    .registers 4

    .prologue
    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e02e3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 89
    const v1, 0x7f0e007d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 90
    const v1, 0x7f0e0085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 92
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->addPreferencesFromResource(I)V

    .line 41
    const-string v0, "button_cdma_cw_on_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingPreference;->mButtonCwOn:Landroid/preference/Preference;

    .line 42
    const-string v0, "button_cdma_cw_off_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingPreference;->mButtonCwOff:Landroid/preference/Preference;

    .line 43
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingPreference;->mButtonCwOn:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1d

    .line 48
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cw_activation:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 49
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingPreference;->showErrorDialog()V

    .line 64
    :cond_11
    :goto_11
    return v0

    .line 52
    :cond_12
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cw_activation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->dialFc(Ljava/lang/String;)V

    move v0, v1

    .line 53
    goto :goto_11

    .line 55
    :cond_1d
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingPreference;->mButtonCwOff:Landroid/preference/Preference;

    if-ne p2, v2, :cond_11

    .line 56
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cw_deactivation:Ljava/lang/String;

    if-nez v2, :cond_2d

    .line 57
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingPreference;->showErrorDialog()V

    goto :goto_11

    .line 60
    :cond_2d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cw_deactivation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->dialFc(Ljava/lang/String;)V

    move v0, v1

    .line 61
    goto :goto_11
.end method
