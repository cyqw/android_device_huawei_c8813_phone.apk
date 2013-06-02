.class public Lcom/android/phone/SelectSubscription;
.super Landroid/preference/PreferenceActivity;
.source "SelectSubscription.java"


# instance fields
.field private subscriptionPref0:Landroid/preference/PreferenceScreen;

.field private subscriptionPref1:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v5

    if-nez v5, :cond_a

    .line 97
    :goto_9
    return-void

    .line 74
    :cond_a
    const v5, 0x7f06001f

    invoke-virtual {p0, v5}, Lcom/android/phone/SelectSubscription;->addPreferencesFromResource(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/SelectSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 79
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "button_sub_id_00"

    invoke-virtual {p0, v5}, Lcom/android/phone/SelectSubscription;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    .line 80
    const-string v5, "button_sub_id_01"

    invoke-virtual {p0, v5}, Lcom/android/phone/SelectSubscription;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "PACKAGE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, pkg:Ljava/lang/String;
    const-string v5, "TARGET_CLASS"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, targetClass:Ljava/lang/String;
    :try_start_38
    iget-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4a} :catch_63

    .line 95
    :goto_4a
    iget-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    .line 90
    :catch_63
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SelectSubscription"

    const-string v6, "pkg is null."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 60
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 102
    return-void
.end method
