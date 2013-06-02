.class public Lcom/android/phone/RespondViaSmsManager$Settings;
.super Landroid/preference/PreferenceActivity;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 448
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager$Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "respond_via_sms_prefs"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 467
    const v2, 0x7f060021

    invoke-virtual {p0, v2}, Lcom/android/phone/RespondViaSmsManager$Settings;->addPreferencesFromResource(I)V

    .line 470
    const-string v2, "canned_response_pref_1"

    invoke-virtual {p0, v2}, Lcom/android/phone/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    .line 471
    .local v1, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 474
    const-string v2, "canned_response_pref_2"

    invoke-virtual {p0, v2}, Lcom/android/phone/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #pref:Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 475
    .restart local v1       #pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 476
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 478
    const-string v2, "canned_response_pref_3"

    invoke-virtual {p0, v2}, Lcom/android/phone/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #pref:Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 479
    .restart local v1       #pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 482
    const-string v2, "canned_response_pref_4"

    invoke-virtual {p0, v2}, Lcom/android/phone/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #pref:Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 483
    .restart local v1       #pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 486
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager$Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 487
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_64

    .line 489
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 491
    :cond_64
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 510
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 511
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 512
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 513
    const/4 v1, 0x1

    .line 515
    :goto_d
    return v1

    :cond_e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_d
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 497
    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 503
    .local v0, pref:Landroid/preference/EditTextPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 505
    const/4 v1, 0x1

    return v1
.end method
