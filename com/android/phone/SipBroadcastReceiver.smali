.class public Lcom/android/phone/SipBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SipBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/android/phone/SipBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SipBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SipBroadcastReceiver;)Lcom/android/phone/sip/SipSharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/SipBroadcastReceiver;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/phone/SipBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private registerAllProfiles()V
    .registers 4

    .prologue
    .line 107
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    .line 108
    .local v0, context:Landroid/content/Context;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/phone/SipBroadcastReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/SipBroadcastReceiver$1;-><init>(Lcom/android/phone/SipBroadcastReceiver;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 130
    return-void
.end method

.method private removeSipPhone(Ljava/lang/String;)V
    .registers 6
    .parameter "sipUri"

    .prologue
    .line 81
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 82
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    move-object v2, v1

    .line 83
    check-cast v2, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 84
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 89
    :cond_35
    return-void
.end method

.method private takeCall(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 92
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 94
    .local v3, phoneContext:Landroid/content/Context;
    :try_start_4
    invoke-static {v3}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/net/sip/SipManager;->takeAudioCall(Landroid/content/Intent;Landroid/net/sip/SipAudioCall$Listener;)Landroid/net/sip/SipAudioCall;

    move-result-object v4

    .line 96
    .local v4, sipAudioCall:Landroid/net/sip/SipAudioCall;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 97
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_19

    .line 98
    check-cast v2, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone;->canTake(Ljava/lang/Object;)Z
    :try_end_31
    .catch Landroid/net/sip/SipException; {:try_start_4 .. :try_end_31} :catch_35

    move-result v5

    if-eqz v5, :cond_19

    .line 104
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #sipAudioCall:Landroid/net/sip/SipAudioCall;
    :cond_34
    :goto_34
    return-void

    .line 101
    :catch_35
    move-exception v0

    .line 102
    .local v0, e:Landroid/net/sip/SipException;
    sget-object v5, Lcom/android/phone/SipBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v6, "process incoming SIP call"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v3

    if-nez v3, :cond_23

    .line 54
    sget-object v3, Lcom/android/phone/SipBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIP VOIP not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_22
    :goto_22
    return-void

    .line 57
    :cond_23
    new-instance v3, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v3, p1}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/SipBroadcastReceiver;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 59
    const-string v3, "com.android.phone.SIP_INCOMING_CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 60
    invoke-direct {p0, p2}, Lcom/android/phone/SipBroadcastReceiver;->takeCall(Landroid/content/Intent;)V

    goto :goto_22

    .line 61
    :cond_36
    const-string v3, "com.android.phone.SIP_ADD_PHONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 62
    const-string v3, "android:localSipUri"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, localSipUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v2

    .line 66
    .local v2, phone:Lcom/android/internal/telephony/sip/SipPhone;
    if-eqz v2, :cond_22

    .line 67
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_22

    .line 69
    .end local v1           #localSipUri:Ljava/lang/String;
    .end local v2           #phone:Lcom/android/internal/telephony/sip/SipPhone;
    :cond_52
    const-string v3, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 70
    const-string v3, "android:localSipUri"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1       #localSipUri:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/phone/SipBroadcastReceiver;->removeSipPhone(Ljava/lang/String;)V

    goto :goto_22

    .line 72
    .end local v1           #localSipUri:Ljava/lang/String;
    :cond_64
    const-string v3, "android.net.sip.SIP_SERVICE_UP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 73
    invoke-direct {p0}, Lcom/android/phone/SipBroadcastReceiver;->registerAllProfiles()V

    goto :goto_22

    .line 75
    :cond_70
    sget-object v3, Lcom/android/phone/SipBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action not processed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method
