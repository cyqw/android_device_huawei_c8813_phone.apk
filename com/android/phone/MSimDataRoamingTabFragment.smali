.class public Lcom/android/phone/MSimDataRoamingTabFragment;
.super Landroid/preference/PreferenceFragment;
.source "MSimDataRoamingTabFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field datachecked:Z

.field private mClickOnWhich:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/app/Activity;

.field private mDataRoaming:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiveMms:Landroid/preference/CheckBoxPreference;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscription:I

.field mmschecked:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 193
    new-instance v0, Lcom/android/phone/MSimDataRoamingTabFragment$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimDataRoamingTabFragment$1;-><init>(Lcom/android/phone/MSimDataRoamingTabFragment;)V

    iput-object v0, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "subscription"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 193
    new-instance v0, Lcom/android/phone/MSimDataRoamingTabFragment$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimDataRoamingTabFragment$1;-><init>(Lcom/android/phone/MSimDataRoamingTabFragment;)V

    iput-object v0, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput p1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mSubscription:I

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimDataRoamingTabFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/MSimDataRoamingTabFragment;->enableOrDisableDataRoamingSettings()V

    return-void
.end method

.method private enableOrDisableDataRoamingSettings()V
    .registers 6

    .prologue
    .line 206
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mSubscription:I

    invoke-virtual {v3, v4}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getSlotIdFromSubId(I)I

    move-result v2

    .line 207
    .local v2, slotId:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v1

    .line 210
    .local v1, simState:I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_35

    if-eqz v1, :cond_35

    const/4 v3, 0x2

    if-eq v1, v3, :cond_35

    const/4 v3, 0x7

    if-eq v1, v3, :cond_35

    const/16 v3, 0x8

    if-eq v1, v3, :cond_35

    .line 215
    const/4 v0, 0x1

    .line 220
    .local v0, enableCard:Z
    :goto_22
    iget-object v3, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mDataRoaming:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2b

    .line 221
    iget-object v3, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mDataRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 223
    :cond_2b
    iget-object v3, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mReceiveMms:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_34

    .line 224
    iget-object v3, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mReceiveMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 227
    :cond_34
    return-void

    .line 217
    .end local v0           #enableCard:Z
    :cond_35
    const/4 v0, 0x0

    .restart local v0       #enableCard:Z
    goto :goto_22
.end method

.method private showRoamingAttentionDialog()V
    .registers 4

    .prologue
    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MSimDataRoamingTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 173
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    iput-object p1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mContext:Landroid/app/Activity;

    .line 81
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 178
    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 179
    iget-object v0, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 180
    iput-boolean v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mOkClicked:Z

    .line 185
    :cond_b
    :goto_b
    return-void

    .line 181
    :cond_c
    const/4 v0, -0x2

    if-ne p2, v0, :cond_b

    .line 183
    iget-object v0, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimDataRoamingTabFragment;->addPreferencesFromResource(I)V

    .line 87
    iget v0, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mSubscription:I

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 89
    const-string v0, "key_data_roaming"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimDataRoamingTabFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mDataRoaming:Landroid/preference/CheckBoxPreference;

    .line 90
    const-string v0, "key_receive_mms"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimDataRoamingTabFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mReceiveMms:Landroid/preference/CheckBoxPreference;

    .line 92
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 119
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mOkClicked:Z

    if-nez v0, :cond_a

    .line 189
    iget-object v0, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    :cond_a
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 126
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    iget-object v2, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mDataRoaming:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1e

    .line 132
    iget-object v2, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mDataRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 133
    iput-boolean v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mOkClicked:Z

    .line 134
    iget-object v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mDataRoaming:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    .line 135
    invoke-direct {p0}, Lcom/android/phone/MSimDataRoamingTabFragment;->showRoamingAttentionDialog()V

    .line 161
    :goto_17
    return v0

    .line 137
    :cond_18
    iget-object v2, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_17

    .line 140
    :cond_1e
    iget-object v2, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mReceiveMms:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_62

    .line 141
    iget-object v2, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mReceiveMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 142
    iget v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mSubscription:I

    if-nez v1, :cond_3a

    .line 143
    iget-object v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_download_mms_card1_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    .line 146
    :cond_3a
    iget-object v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_download_mms_card2_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    .line 150
    :cond_46
    iget v2, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mSubscription:I

    if-nez v2, :cond_56

    .line 151
    iget-object v2, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_download_mms_card1_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    .line 154
    :cond_56
    iget-object v2, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_download_mms_card2_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_62
    move v0, v1

    .line 161
    goto :goto_17
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    iget-object v3, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->datachecked:Z

    .line 104
    iget-object v3, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mDataRoaming:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->datachecked:Z

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iget v3, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mSubscription:I

    if-nez v3, :cond_40

    .line 106
    iget-object v3, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_download_mms_card1_roaming"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3e

    :goto_34
    iput-boolean v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mmschecked:Z

    .line 112
    :goto_36
    iget-object v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mReceiveMms:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mmschecked:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    return-void

    :cond_3e
    move v1, v2

    .line 106
    goto :goto_34

    .line 109
    :cond_40
    iget-object v3, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_download_mms_card2_roaming"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_51

    :goto_4e
    iput-boolean v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment;->mmschecked:Z

    goto :goto_36

    :cond_51
    move v1, v2

    goto :goto_4e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 75
    return-void
.end method
