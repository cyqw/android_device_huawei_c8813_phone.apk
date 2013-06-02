.class public Lcom/android/phone/sip/SipSharedPreferences;
.super Ljava/lang/Object;
.source "SipSharedPreferences.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "SIP_PREFERENCES"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/sip/SipSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 43
    iput-object p1, p0, Lcom/android/phone/sip/SipSharedPreferences;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public getPrimaryAccount()Ljava/lang/String;
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/sip/SipSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "primary"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfilesCount()I
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/sip/SipSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "profiles"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSipCallOption()Ljava/lang/String;
    .registers 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/phone/sip/SipSharedPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sip_call_options"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, option:Ljava/lang/String;
    if-eqz v0, :cond_f

    .end local v0           #option:Ljava/lang/String;
    :goto_e
    return-object v0

    .restart local v0       #option:Ljava/lang/String;
    :cond_f
    iget-object v1, p0, Lcom/android/phone/sip/SipSharedPreferences;->mContext:Landroid/content/Context;

    const v2, 0x7f0e023f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public hasPrimaryAccount()Z
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/sip/SipSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "primary"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isPrimaryAccount(Ljava/lang/String;)Z
    .registers 5
    .parameter "accountUri"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/sip/SipSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "primary"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReceivingCallsEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 100
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/sip/SipSharedPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sip_receive_calls"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_11

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    .line 104
    :cond_10
    :goto_10
    return v1

    .line 102
    :catch_11
    move-exception v0

    .line 103
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "SIP"

    const-string v3, "ReceiveCall option is not set; use default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public setPrimaryAccount(Ljava/lang/String;)V
    .registers 4
    .parameter "accountUri"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/phone/sip/SipSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "primary"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    return-void
.end method

.method public setProfilesCount(I)V
    .registers 4
    .parameter "number"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/phone/sip/SipSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "profiles"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    return-void
.end method

.method public setReceivingCallsEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/sip/SipSharedPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sip_receive_calls"

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    return-void

    .line 94
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setSipCallOption(Ljava/lang/String;)V
    .registers 4
    .parameter "option"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/sip/SipSharedPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sip_call_options"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    return-void
.end method

.method public unsetPrimaryAccount()V
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setPrimaryAccount(Ljava/lang/String;)V

    .line 54
    return-void
.end method
