.class public Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 2335
    iput-object p1, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 2338
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 2339
    .local v3, event:Landroid/view/KeyEvent;
    if-eqz v3, :cond_84

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x4f

    if-ne v5, v6, :cond_84

    .line 2344
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 2348
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2350
    .local v2, currentActivePhone:Lcom/android/internal/telephony/Phone;
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_37

    .line 2351
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v5

    if-eq v5, v7, :cond_48

    .line 2352
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2370
    :cond_37
    :goto_37
    if-eqz v2, :cond_79

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2375
    .end local v2           #currentActivePhone:Lcom/android/internal/telephony/Phone;
    .local v1, consumed:Z
    :goto_3d
    if-eqz v1, :cond_47

    .line 2379
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 2380
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 2391
    .end local v1           #consumed:Z
    :cond_47
    :goto_47
    return-void

    .line 2353
    .restart local v2       #currentActivePhone:Lcom/android/internal/telephony/Phone;
    :cond_48
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    if-eq v5, v7, :cond_72

    .line 2355
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v0

    .line 2356
    .local v0, altSub:I
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5, v0}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v4

    .line 2357
    .local v4, hasRingingCall:Z
    if-eqz v4, :cond_6b

    .line 2358
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_37

    .line 2360
    :cond_6b
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_37

    .line 2364
    .end local v0           #altSub:I
    .end local v4           #hasRingingCall:Z
    :cond_72
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_37

    .line 2370
    :cond_79
    const/4 v1, 0x0

    goto :goto_3d

    .line 2372
    .end local v2           #currentActivePhone:Lcom/android/internal/telephony/Phone;
    :cond_7b
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5, v3}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    move-result v1

    .restart local v1       #consumed:Z
    goto :goto_3d

    .line 2383
    .end local v1           #consumed:Z
    :cond_84
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_47

    .line 2388
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    goto :goto_47
.end method
