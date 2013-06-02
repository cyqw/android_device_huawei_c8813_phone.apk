.class public Lcom/android/phone/EmergencyCallbackModeService;
.super Landroid/app/Service;
.source "EmergencyCallbackModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mEcmReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInEmergencyCall:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubscription:I

.field private mTimeLeft:J

.field private mTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 62
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    .line 64
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 65
    iput-boolean v3, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    .line 66
    iput v3, p0, Lcom/android/phone/EmergencyCallbackModeService;->mSubscription:I

    .line 70
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$1;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$2;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mBinder:Landroid/os/IBinder;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackModeService;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallbackModeService;->resetEcmTimer(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/EmergencyCallbackModeService;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyCallbackModeService;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    return-void
.end method

.method private resetEcmTimer(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 223
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 225
    .local v0, isTimerCanceled:Z
    if-eqz v0, :cond_18

    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    .line 227
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 228
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    .line 233
    :goto_17
    return-void

    .line 230
    :cond_18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    .line 231
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeService;->startTimerNotification()V

    goto :goto_17
.end method

.method private showNotification(J)V
    .registers 16
    .parameter "millisUntilFinished"

    .prologue
    .line 187
    new-instance v3, Landroid/app/Notification;

    const v6, 0x7f02009d

    const v7, 0x7f0e01ce

    invoke-virtual {p0, v7}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 191
    .local v3, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.phone.action.ACTION_SHOW_ECM_EXIT_DIALOG"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "subscription"

    iget v7, p0, Lcom/android/phone/EmergencyCallbackModeService;->mSubscription:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 199
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const/4 v4, 0x0

    .line 200
    .local v4, text:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    if-eqz v6, :cond_4b

    .line 201
    const v6, 0x7f0e01d0

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    :goto_35
    const v6, 0x7f0e01cf

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, p0, v6, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 213
    const/4 v6, 0x2

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 216
    iget-object v6, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    const v7, 0x7f0e01cf

    invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 217
    return-void

    .line 203
    :cond_4b
    const-wide/32 v6, 0xea60

    div-long v6, p1, v6

    long-to-int v2, v6

    .line 204
    .local v2, minutes:I
    const-string v6, "%d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-wide/32 v9, 0xea60

    rem-long v9, p1, v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, time:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0002

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_35
.end method

.method private startTimerNotification()V
    .registers 7

    .prologue
    .line 158
    const-string v0, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    invoke-static {v0, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 162
    .local v2, ecmTimeout:J
    invoke-direct {p0, v2, v3}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    .line 165
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$3;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/EmergencyCallbackModeService$3;-><init>(Lcom/android/phone/EmergencyCallbackModeService;JJ)V

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallbackModeService$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    .line 179
    return-void
.end method


# virtual methods
.method public getEmergencyCallbackModeCallState()Z
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    return v0
.end method

.method public getEmergencyCallbackModeTimeout()J
    .registers 3

    .prologue
    .line 256
    iget-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 82
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackModeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 126
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0e01cf

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 127
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 128
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x1

    .line 87
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 89
    .local v0, app:Lcom/android/phone/PhoneApp;
    if-eqz p1, :cond_75

    .line 90
    const-string v2, "subscription"

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mSubscription:I

    .line 94
    :goto_13
    iget v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mSubscription:I

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4b

    .line 98
    const-string v2, "EmergencyCallbackModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! Emergency Callback Mode not supported for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phones"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->stopSelf()V

    .line 104
    :cond_4b
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/EmergencyCallbackModeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 112
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v5, v4}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 114
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeService;->startTimerNotification()V

    .line 115
    return v5

    .line 92
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_75
    const-string v2, "EmergencyCallbackModeService"

    const-string v3, "onStartCommand: intent null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
