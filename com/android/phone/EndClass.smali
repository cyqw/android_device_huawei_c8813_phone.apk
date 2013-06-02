.class public Lcom/android/phone/EndClass;
.super Landroid/app/Activity;
.source "EndClass.java"


# instance fields
.field phoneApp:Lcom/android/phone/PhoneApp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndClass;->phoneApp:Lcom/android/phone/PhoneApp;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_18

    .line 48
    iget-object v0, p0, Lcom/android/phone/EndClass;->phoneApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/EndClass;->phoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;I)Z

    .line 61
    :goto_14
    invoke-virtual {p0}, Lcom/android/phone/EndClass;->finish()V

    .line 62
    return-void

    .line 50
    :cond_18
    iget-object v0, p0, Lcom/android/phone/EndClass;->phoneApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_14
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    return-void
.end method
