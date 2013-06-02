.class public Lcom/android/phone/OtaStartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OtaStartupReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOtaspMode:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerRegistered:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    .line 59
    new-instance v0, Lcom/android/phone/OtaStartupReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaStartupReceiver$1;-><init>(Lcom/android/phone/OtaStartupReceiver;)V

    iput-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 67
    new-instance v0, Lcom/android/phone/OtaStartupReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaStartupReceiver$2;-><init>(Lcom/android/phone/OtaStartupReceiver;)V

    iput-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/OtaStartupReceiver;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/OtaStartupReceiver;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private shouldPostpone(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x1

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 166
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_40

    move v2, v5

    .line 168
    .local v2, provisioned:Z
    :goto_20
    const-string v7, "ro.setupwizard.mode"

    const-string v8, "REQUIRED"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, mode:Ljava/lang/String;
    const-string v7, "REQUIRED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    const-string v7, "OPTIONAL"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    :cond_38
    move v4, v5

    .line 170
    .local v4, runningSetupWizard:Z
    :goto_39
    if-eqz v3, :cond_44

    if-nez v2, :cond_44

    if-eqz v4, :cond_44

    :goto_3f
    return v5

    .end local v1           #mode:Ljava/lang/String;
    .end local v2           #provisioned:Z
    .end local v4           #runningSetupWizard:Z
    :cond_40
    move v2, v6

    .line 166
    goto :goto_20

    .restart local v1       #mode:Ljava/lang/String;
    .restart local v2       #provisioned:Z
    :cond_42
    move v4, v6

    .line 169
    goto :goto_39

    .restart local v4       #runningSetupWizard:Z
    :cond_44
    move v5, v6

    .line 170
    goto :goto_3f
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xb

    .line 100
    iput-object p1, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 147
    :cond_f
    :goto_f
    return-void

    .line 107
    :cond_10
    iget-boolean v3, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    if-nez v3, :cond_26

    .line 108
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 110
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x200

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 111
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    .line 116
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/phone/OtaStartupReceiver;->shouldPostpone(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 122
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 125
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x0

    .line 127
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_4a

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_5c

    .line 131
    iget-object v3, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v3, v5, v6}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_f

    .line 135
    :cond_4a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 136
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v3

    if-eqz v3, :cond_5c

    .line 137
    iget-object v3, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v3, v5, v6}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_f

    .line 146
    :cond_5c
    iget-object v3, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-static {v3, v4, v5}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    goto :goto_f
.end method
