.class public Lcom/android/phone/GsmUmtsCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallForwardOptions.java"

# interfaces
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DBG:Z

.field private isCTNationRoaming:Z

.field isChinaTelecom:Z

.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->DBG:Z

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 54
    iput v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 58
    iput v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSubscription:I

    .line 60
    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->isCTNationRoaming:Z

    .line 61
    const-string v1, "ro.config.hw_opta"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "92"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "ro.config.hw_optb"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "156"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v0, 0x1

    :cond_34
    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->isChinaTelecom:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 181
    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    .line 212
    :cond_5
    :goto_5
    return-void

    .line 185
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 187
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    packed-switch p1, :pswitch_data_4e

    goto :goto_5

    .line 194
    :pswitch_22
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_5

    .line 197
    :pswitch_2c
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_5

    .line 201
    :pswitch_36
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    if-eqz v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_5

    .line 207
    :pswitch_44
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_5

    .line 192
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_2c
        :pswitch_36
        :pswitch_44
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const v6, 0x7f0e0077

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 67
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 71
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getCurrentDualModeStatus()I

    move-result v4

    if-ne v3, v4, :cond_19

    move v2, v3

    :cond_19
    iput-boolean v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->isCTNationRoaming:Z

    .line 76
    :goto_1b
    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->isCTNationRoaming:Z

    if-eqz v2, :cond_e7

    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->isChinaTelecom:Z

    if-eqz v2, :cond_e7

    .line 77
    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsCallForwardOptions;->addPreferencesFromResource(I)V

    .line 84
    :goto_29
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSubscription:I

    .line 86
    const-string v2, "GsmUmtsCallForwardOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call Forwarding options, subscription ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSubscription:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 89
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_cfu_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    .line 90
    const-string v2, "button_cfb_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    .line 91
    const-string v2, "button_cfnrc_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    .line 93
    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->isCTNationRoaming:Z

    if-nez v2, :cond_8b

    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->isChinaTelecom:Z

    if-eqz v2, :cond_8b

    .line 94
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/CallForwardEditPreference;->setTitle(I)V

    .line 95
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/CallForwardEditPreference;->setDialogTitle(I)V

    .line 98
    :cond_8b
    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->isCTNationRoaming:Z

    if-eqz v2, :cond_ef

    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->isChinaTelecom:Z

    if-eqz v2, :cond_ef

    .line 99
    const-string v2, "LOG_TAG"

    const-string v4, "merge ButtonCFNRy and ButtonCFNRc "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_9a
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v4, v4, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v4, p0}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 107
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v4, v4, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v4, p0}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 108
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v4, v4, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v4, p0}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 111
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    .line 120
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 123
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_d7

    .line 125
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 127
    :cond_d7
    return-void

    .line 73
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_d8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentDualModeStatus()I

    move-result v4

    if-ne v3, v4, :cond_e3

    move v2, v3

    :cond_e3
    iput-boolean v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->isCTNationRoaming:Z

    goto/16 :goto_1b

    .line 79
    :cond_e7
    const v2, 0x7f060002

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsCallForwardOptions;->addPreferencesFromResource(I)V

    goto/16 :goto_29

    .line 101
    .restart local v1       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_ef
    const-string v2, "button_cfnry_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    .line 102
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v4, v4, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v4}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 103
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9a
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .registers 6
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 171
    iget v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_28

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_28

    .line 172
    iget v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 173
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSubscription:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 176
    :cond_28
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 177
    return-void
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .registers 5
    .parameter "preference"

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_31

    .line 235
    :cond_10
    const-string v0, "GsmUmtsCallForwardOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CFVoiceMailNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/phone/EditPhoneNumberPreference;->getVmNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p1}, Lcom/android/phone/EditPhoneNumberPreference;->getVmNumber()Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 217
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 218
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 219
    const/4 v1, 0x1

    .line 221
    :goto_d
    return v1

    :cond_e
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_d
.end method

.method public onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 131
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 133
    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    if-eqz v4, :cond_20

    .line 134
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v4, :cond_21

    .line 135
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    iget v5, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSubscription:I

    invoke-virtual {v4, p0, v6, v5}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 149
    :cond_1b
    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    .line 150
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 152
    :cond_20
    return-void

    .line 137
    :cond_21
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 139
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallForwardEditPreference;

    .line 140
    .local v3, pref:Lcom/android/phone/CallForwardEditPreference;
    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v3}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 141
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "toggle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 142
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 143
    .local v1, cf:Lcom/android/internal/telephony/CallForwardInfo;
    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 144
    const-string v4, "status"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 145
    invoke-virtual {v3, v1}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 146
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSubscription:I

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_2f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    .line 159
    .local v2, pref:Lcom/android/phone/CallForwardEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    iget-object v3, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_39

    .line 162
    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    :cond_39
    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_9

    .line 167
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/CallForwardEditPreference;
    :cond_41
    return-void
.end method
