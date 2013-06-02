.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$QueryHandler;,
        Lcom/android/phone/NotificationMgr$StatusBarHelper;
    }
.end annotation


# static fields
.field protected static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field protected static final DBG:Z

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static mHasMessageWaiting:Z

.field private static mIsShowOutOfServiceDailog:Z

.field protected static sInstance:Lcom/android/phone/NotificationMgr;


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field protected mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInCallResId:I

.field protected mNotificationManager:Landroid/app/NotificationManager;

.field private mNumberMissedCalls:I

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

.field private mSelectedUnavailableNotify:Z

.field private mShowingMuteIcon:Z

.field private mShowingSpeakerphoneIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mToast:Landroid/widget/Toast;

.field protected mVMResId:I

.field protected mVmNumberRetriesRemaining:I

.field public statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    sput-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    .line 96
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 168
    sput-boolean v3, Lcom/android/phone/NotificationMgr;->mHasMessageWaiting:Z

    .line 169
    sput-boolean v3, Lcom/android/phone/NotificationMgr;->mIsShowOutOfServiceDailog:Z

    .line 331
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 5
    .parameter "app"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 149
    const v0, 0x108007e

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mVMResId:I

    .line 153
    iput-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 158
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    .line 161
    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 1529
    new-instance v0, Lcom/android/phone/NotificationMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr$1;-><init>(Lcom/android/phone/NotificationMgr;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mHandler:Landroid/os/Handler;

    .line 177
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    .line 178
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 179
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 181
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 183
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPowerManager:Landroid/os/PowerManager;

    .line 185
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 186
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 187
    new-instance v0, Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    .line 188
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    sput-boolean p0, Lcom/android/phone/NotificationMgr;->mIsShowOutOfServiceDailog:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    sput-boolean p0, Lcom/android/phone/NotificationMgr;->mHasMessageWaiting:Z

    return p0
.end method

.method private cancelInCall()V
    .registers 3

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1195
    return-void
.end method

.method private cancelMute()V
    .registers 3

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-eqz v0, :cond_e

    .line 699
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 702
    :cond_e
    return-void
.end method

.method private cancelNetworkSelection()V
    .registers 3

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1492
    return-void
.end method

.method private cancelSpeakerphone()V
    .registers 3

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-eqz v0, :cond_e

    .line 628
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 631
    :cond_e
    return-void
.end method

.method protected static configureLedNotification(Landroid/app/Notification;)V
    .registers 2
    .parameter "note"

    .prologue
    .line 485
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 486
    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 487
    return-void
.end method

.method private createClearMissedCallsIntent()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 600
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/ClearMissedCallsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    const-string v1, "com.android.phone.intent.CLEAR_MISSED_CALLS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;
    .registers 5
    .parameter

    .prologue
    .line 199
    const-class v1, Lcom/android/phone/NotificationMgr;

    monitor-enter v1

    .line 200
    :try_start_3
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_17

    .line 201
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 203
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 207
    :goto_13
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    monitor-exit v1

    return-object v0

    .line 205
    :cond_17
    const-string v0, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 208
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1600
    const-string v0, "NotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    return-void
.end method

.method private notifyMute()V
    .registers 7

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-nez v0, :cond_1b

    .line 691
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    const v2, 0x1080076

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0268

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 695
    :cond_1b
    return-void
.end method

.method private notifySpeakerphone()V
    .registers 7

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-nez v0, :cond_1b

    .line 620
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    const v2, 0x1080087

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0267

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 624
    :cond_1b
    return-void
.end method

.method private showNetworkSelection(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1462
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0184

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1464
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0185

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1467
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1468
    const v3, 0x108008a

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 1469
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 1470
    const/4 v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1471
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1474
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1475
    const/high16 v4, 0x1020

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1478
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.NetworkSetting"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1480
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1482
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1484
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1485
    return-void
.end method

.method private updateInCallNotification(Z)V
    .registers 14
    .parameter

    .prologue
    .line 809
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_e

    .line 810
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "- non-voice-capable device; suppressing notification."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1163
    :cond_d
    :goto_d
    return-void

    .line 816
    :cond_e
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_22

    .line 817
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 818
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 819
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_d

    .line 823
    :cond_22
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v8

    .line 824
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    .line 825
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 831
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    .line 838
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    .line 841
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 843
    if-nez v2, :cond_5a

    .line 844
    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v2

    .line 845
    if-eqz v2, :cond_5a

    .line 846
    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v2

    .line 850
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5a

    .line 851
    const/4 v0, 0x1

    .line 869
    :cond_5a
    :goto_5a
    if-eqz v8, :cond_5d

    const/4 v0, 0x0

    .line 873
    :cond_5d
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->getVoicePrivacyState()Z

    move-result v2

    .line 874
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_7f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateInCallNotification: enhancedVoicePrivacy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 875
    :cond_7f
    if-eqz v2, :cond_82

    const/4 v0, 0x0

    .line 877
    :cond_82
    if-eqz v0, :cond_92

    .line 878
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 881
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 882
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_d

    .line 856
    :cond_8e
    if-nez v2, :cond_5a

    const/4 v0, 0x1

    goto :goto_5a

    .line 889
    :cond_92
    if-eqz v8, :cond_1ae

    .line 891
    const v0, 0x7f0200aa

    .line 913
    :goto_97
    iput v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 916
    iget v2, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 929
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_1f7

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v3

    if-eq v0, v3, :cond_1f7

    .line 930
    if-eqz v8, :cond_1d3

    .line 931
    const/4 v0, -0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v3

    if-eq v0, v3, :cond_1ca

    .line 932
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v6, v0

    .line 957
    :goto_c6
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 959
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 960
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    iput v0, v10, Landroid/app/Notification;->icon:I

    .line 961
    iget v0, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 971
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_236

    .line 974
    const/high16 v0, 0x800

    .line 981
    :goto_df
    :try_start_df
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/android/phone/PhoneApp;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v4, v5, v7, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_f5
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_df .. :try_end_f5} :catch_239

    move-result-object v0

    move-object v7, v0

    .line 994
    :goto_f7
    iput-object v7, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1003
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040026

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1005
    const v4, 0x7f0900d1

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1008
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 1011
    const v2, 0x7f0900d8

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1012
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1013
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/phone/EndClass;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1014
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v5, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1015
    const v4, 0x7f0900d8

    const v5, 0x7f020054

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1016
    const v4, 0x7f0900d8

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1024
    :cond_13d
    if-eqz v3, :cond_26c

    .line 1034
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v2

    .line 1035
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 1039
    if-eqz v8, :cond_252

    .line 1045
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0e017f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1060
    :goto_154
    const v1, 0x7f0900d6

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 1073
    :cond_15b
    :goto_15b
    const-string v1, ""

    .line 1078
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_279

    .line 1080
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0170

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1093
    :goto_16c
    const v2, 0x7f0900d3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1094
    iput-object v0, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1104
    if-nez v8, :cond_178

    if-eqz v9, :cond_1a0

    .line 1108
    :cond_178
    iget v0, v10, Landroid/app/Notification;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 1116
    iput-object v1, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1118
    if-eqz p1, :cond_1a0

    .line 1124
    iput-object v7, v10, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1146
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1147
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1a0

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_1a0

    .line 1151
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1156
    :cond_1a0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1161
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 1162
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    goto/16 :goto_d

    .line 892
    :cond_1ae
    if-nez v9, :cond_1be

    if-eqz v1, :cond_1be

    .line 894
    if-eqz v2, :cond_1b9

    .line 895
    const v0, 0x7f0200b4

    goto/16 :goto_97

    .line 897
    :cond_1b9
    const v0, 0x7f0200b0

    goto/16 :goto_97

    .line 900
    :cond_1be
    if-eqz v2, :cond_1c5

    .line 901
    const v0, 0x7f0200b2

    goto/16 :goto_97

    .line 903
    :cond_1c5
    const v0, 0x7f0200aa

    goto/16 :goto_97

    .line 934
    :cond_1ca
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_c6

    .line 936
    :cond_1d3
    if-eqz v9, :cond_1e6

    .line 937
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_c6

    .line 939
    :cond_1e6
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_c6

    .line 943
    :cond_1f7
    if-eqz v8, :cond_222

    .line 944
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_219

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v3

    if-eq v0, v3, :cond_219

    .line 945
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_c6

    .line 947
    :cond_219
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_c6

    .line 949
    :cond_222
    if-eqz v9, :cond_22d

    .line 950
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_c6

    .line 952
    :cond_22d
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_c6

    .line 976
    :cond_236
    const/4 v0, 0x0

    goto/16 :goto_df

    .line 986
    :catch_239
    move-exception v0

    .line 987
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_243

    const-string v0, "updateInCallNotification->NoExtAPIException!"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 988
    :cond_243
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v0, v4, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_f7

    .line 1046
    :cond_252
    if-eqz v1, :cond_261

    if-nez v9, :cond_261

    .line 1049
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0e017e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_154

    .line 1053
    :cond_261
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0e017d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_154

    .line 1064
    :cond_26c
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_15b

    .line 1065
    const-string v1, "NotificationMgr"

    const-string v2, "updateInCallNotification: null connection, can\'t set exp view line 1."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15b

    .line 1083
    :cond_279
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 1085
    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_16c
.end method


# virtual methods
.method cancelCallInProgressNotifications()V
    .registers 2

    .prologue
    .line 1202
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    if-nez v0, :cond_5

    .line 1209
    :goto_4
    return-void

    .line 1206
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1207
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 1208
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_4
.end method

.method cancelMissedCallNotification()V
    .registers 3

    .prologue
    .line 614
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 615
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 616
    return-void
.end method

.method hideDataDisconnectedRoaming()V
    .registers 3

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1419
    return-void
.end method

.method hidePrePostPay()V
    .registers 3

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1453
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V
    .registers 21
    .parameter "name"
    .parameter "number"
    .parameter "type"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "date"

    .prologue
    .line 512
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v3

    .line 517
    .local v3, callLogIntent:Landroid/content/Intent;
    sget-boolean v8, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v8, :cond_12

    .line 518
    sget-boolean v8, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v8, :cond_11

    const-string v8, "notifyMissedCall: non-voice-capable device, not posting notification"

    invoke-direct {p0, v8}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 596
    .end local p4
    :cond_11
    :goto_11
    return-void

    .line 529
    .restart local p4
    :cond_12
    iget v8, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 533
    if-eqz p1, :cond_fa

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_fa

    .line 534
    move-object v4, p1

    .line 545
    .local v4, callName:Ljava/lang/String;
    :goto_21
    iget v8, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10e

    .line 546
    const v7, 0x7f0e0178

    .line 547
    .local v7, titleResId:I
    move-object v5, v4

    .line 554
    .local v5, expandedText:Ljava/lang/String;
    :goto_2a
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 555
    .local v2, builder:Landroid/app/Notification$Builder;
    const v8, 0x108007f

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0e017b

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    move-wide/from16 v0, p6

    invoke-virtual {v8, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->createClearMissedCallsIntent()Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 568
    iget v8, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_138

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_138

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0005

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_138

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0004

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_138

    .line 572
    sget-boolean v8, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v8, :cond_ba

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add actions with the number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 574
    :cond_ba
    const v8, 0x7f0200aa

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0187

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v10, p2}, Lcom/android/phone/PhoneApp;->getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 578
    const v8, 0x7f020084

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0188

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v10, p2}, Lcom/android/phone/PhoneApp;->getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 582
    if-eqz p5, :cond_128

    .line 583
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 593
    .end local p4
    :cond_eb
    :goto_eb
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 594
    .local v6, notification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 595
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_11

    .line 535
    .end local v2           #builder:Landroid/app/Notification$Builder;
    .end local v4           #callName:Ljava/lang/String;
    .end local v5           #expandedText:Ljava/lang/String;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #titleResId:I
    .restart local p4
    :cond_fa
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_103

    .line 536
    move-object v4, p2

    .restart local v4       #callName:Ljava/lang/String;
    goto/16 :goto_21

    .line 539
    .end local v4           #callName:Ljava/lang/String;
    :cond_103
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0004

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #callName:Ljava/lang/String;
    goto/16 :goto_21

    .line 549
    :cond_10e
    const v7, 0x7f0e0179

    .line 550
    .restart local v7       #titleResId:I
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0e017a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #expandedText:Ljava/lang/String;
    goto/16 :goto_2a

    .line 584
    .restart local v2       #builder:Landroid/app/Notification$Builder;
    :cond_128
    move-object/from16 v0, p4

    instance-of v8, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_eb

    .line 585
    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    .end local p4
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_eb

    .line 588
    .restart local p4
    :cond_138
    sget-boolean v8, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v8, :cond_eb

    .line 589
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suppress actions. number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", missedCalls: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto :goto_eb
.end method

.method notifyNetworkChanged(ILcom/android/internal/telephony/Phone;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1549
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1550
    const-string v0, "GSM phone supportsNetworkSelection"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1554
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1556
    const-string v1, "network_selection_name_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1558
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1559
    if-ne p1, v4, :cond_37

    .line 1560
    const-string v0, "if the phone is out of service more than 200s,show notification to user."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1561
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->mHasMessageWaiting:Z

    if-nez v0, :cond_36

    .line 1562
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x30d40

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1563
    sput-boolean v4, Lcom/android/phone/NotificationMgr;->mHasMessageWaiting:Z

    .line 1578
    :cond_36
    :goto_36
    return-void

    .line 1566
    :cond_37
    const-string v0, "the GSM phone is in service,cancel show notification."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1568
    sput-boolean v3, Lcom/android/phone/NotificationMgr;->mHasMessageWaiting:Z

    .line 1569
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->mIsShowOutOfServiceDailog:Z

    if-eqz v0, :cond_36

    .line 1570
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1571
    const-string v1, "finishNOOSN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1572
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1573
    sput-boolean v3, Lcom/android/phone/NotificationMgr;->mIsShowOutOfServiceDailog:Z

    goto :goto_36
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1172
    if-ne p2, p0, :cond_6

    .line 1181
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1186
    :goto_5
    return-void

    .line 1183
    :cond_6
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: caller-id query from unknown source! cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method postTransientNotification(ILjava/lang/CharSequence;)V
    .registers 5
    .parameter "notifyId"
    .parameter "msg"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 1592
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1595
    :cond_9
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 1596
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1597
    return-void
.end method

.method public showDailog()V
    .registers 5

    .prologue
    .line 1580
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1581
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1584
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.NetworkOutOfServiceNotification"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1586
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1587
    return-void
.end method

.method showDataDisconnectedRoaming()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1392
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    const-class v0, Lcom/android/phone/MSimSettings;

    :goto_d
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1399
    new-instance v0, Landroid/app/Notification;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1403
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0e00ae

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e00b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1409
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1412
    return-void

    .line 1392
    :cond_41
    const-class v0, Lcom/android/phone/Settings;

    goto :goto_d
.end method

.method showPrePostPay()V
    .registers 8

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0393

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1428
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0394

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1431
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1432
    const v3, 0x7f0200a0

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 1433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 1434
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1437
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1438
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1440
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.ApnSettings"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1442
    const-string v4, "prePostPayState"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1443
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1445
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1447
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1448
    return-void
.end method

.method updateCfi(Z)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 1335
    if-eqz p1, :cond_4b

    .line 1350
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1351
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1352
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0200ac

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1360
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0064

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0067

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1373
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1375
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1381
    :goto_4a
    return-void

    .line 1379
    :cond_4b
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4a
.end method

.method public updateInCallNotification()V
    .registers 2

    .prologue
    .line 749
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 750
    return-void
.end method

.method updateMuteNotification()V
    .registers 4

    .prologue
    .line 716
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 717
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 736
    :goto_b
    return-void

    .line 723
    :cond_c
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_2c

    .line 724
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getMute(I)Z

    move-result v0

    .line 729
    .local v0, mute:Z
    :goto_1c
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_31

    if-eqz v0, :cond_31

    .line 730
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    goto :goto_b

    .line 726
    .end local v0           #mute:Z
    :cond_2c
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .restart local v0       #mute:Z
    goto :goto_1c

    .line 732
    :cond_31
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_b
.end method

.method updateMwi(Z)V
    .registers 26
    .parameter "visible"

    .prologue
    .line 1218
    if-eqz p1, :cond_1b3

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0e0180

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1230
    .local v8, notificationTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v19

    .line 1247
    .local v19, vmNumber:Ljava/lang/String;
    if-nez v19, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v20

    if-nez v20, :cond_50

    .line 1260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    move/from16 v20, v0

    add-int/lit8 v21, v20, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v20, :cond_49

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x2710

    invoke-virtual/range {v20 .. v22}, Lcom/android/phone/CallNotifier;->sendMwiChangedDelayed(J)V

    .line 1327
    .end local v8           #notificationTitle:Ljava/lang/String;
    .end local v19           #vmNumber:Ljava/lang/String;
    :goto_48
    return-void

    .line 1264
    .restart local v8       #notificationTitle:Ljava/lang/String;
    .restart local v19       #vmNumber:Ljava/lang/String;
    :cond_49
    const-string v20, "NotificationMgr"

    const-string v21, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v20

    if-eqz v20, :cond_89

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v18

    .line 1273
    .local v18, vmCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0e0181

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1274
    .local v13, titleFormat:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1278
    .end local v13           #titleFormat:Ljava/lang/String;
    .end local v18           #vmCount:I
    :cond_89
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_18a

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0e0183

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1287
    .local v7, notificationText:Ljava/lang/String;
    :goto_9c
    new-instance v5, Landroid/content/Intent;

    const-string v20, "android.intent.action.CALL"

    const-string v21, "voicemail"

    const-string v22, ""

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1289
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1291
    .local v10, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1293
    .local v11, prefs:Landroid/content/SharedPreferences;
    const-string v20, "button_voicemail_notification_ringtone_key"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1295
    .local v14, uriString:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1ad

    .line 1296
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1301
    .local v12, ringtoneUri:Landroid/net/Uri;
    :goto_e5
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1302
    .local v4, builder:Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mVMResId:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1308
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 1310
    .local v6, notification:Landroid/app/Notification;
    const-string v20, "button_voicemail_notification_vibrate_when_key"

    const-string v21, "never"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1312
    .local v17, vibrateWhen:Ljava/lang/String;
    const-string v20, "always"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 1313
    .local v15, vibrateAlways:Z
    const-string v20, "silent"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 1314
    .local v16, vibrateSilent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "audio"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1316
    .local v3, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b1

    const/4 v9, 0x1

    .line 1317
    .local v9, nowSilent:Z
    :goto_15c
    if-nez v15, :cond_162

    if-eqz v16, :cond_16c

    if-eqz v9, :cond_16c

    .line 1318
    :cond_162
    iget v0, v6, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    iput v0, v6, Landroid/app/Notification;->defaults:I

    .line 1321
    :cond_16c
    iget v0, v6, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x20

    move/from16 v0, v20

    iput v0, v6, Landroid/app/Notification;->flags:I

    .line 1322
    invoke-static {v6}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_48

    .line 1282
    .end local v3           #audioManager:Landroid/media/AudioManager;
    .end local v4           #builder:Landroid/app/Notification$Builder;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #notificationText:Ljava/lang/String;
    .end local v9           #nowSilent:Z
    .end local v10           #pendingIntent:Landroid/app/PendingIntent;
    .end local v11           #prefs:Landroid/content/SharedPreferences;
    .end local v12           #ringtoneUri:Landroid/net/Uri;
    .end local v14           #uriString:Ljava/lang/String;
    .end local v15           #vibrateAlways:Z
    .end local v16           #vibrateSilent:Z
    .end local v17           #vibrateWhen:Ljava/lang/String;
    :cond_18a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0e0182

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #notificationText:Ljava/lang/String;
    goto/16 :goto_9c

    .line 1298
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v10       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v11       #prefs:Landroid/content/SharedPreferences;
    .restart local v14       #uriString:Ljava/lang/String;
    :cond_1ad
    sget-object v12, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .restart local v12       #ringtoneUri:Landroid/net/Uri;
    goto/16 :goto_e5

    .line 1316
    .restart local v3       #audioManager:Landroid/media/AudioManager;
    .restart local v4       #builder:Landroid/app/Notification$Builder;
    .restart local v6       #notification:Landroid/app/Notification;
    .restart local v15       #vibrateAlways:Z
    .restart local v16       #vibrateSilent:Z
    .restart local v17       #vibrateWhen:Ljava/lang/String;
    :cond_1b1
    const/4 v9, 0x0

    goto :goto_15c

    .line 1325
    .end local v3           #audioManager:Landroid/media/AudioManager;
    .end local v4           #builder:Landroid/app/Notification$Builder;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #notificationText:Ljava/lang/String;
    .end local v8           #notificationTitle:Ljava/lang/String;
    .end local v10           #pendingIntent:Landroid/app/PendingIntent;
    .end local v11           #prefs:Landroid/content/SharedPreferences;
    .end local v12           #ringtoneUri:Landroid/net/Uri;
    .end local v14           #uriString:Ljava/lang/String;
    .end local v15           #vibrateAlways:Z
    .end local v16           #vibrateSilent:Z
    .end local v17           #vibrateWhen:Ljava/lang/String;
    .end local v19           #vmNumber:Ljava/lang/String;
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_48
.end method

.method updateNetworkSelection(ILcom/android/internal/telephony/Phone;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1500
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1504
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1506
    const-string v0, "network_selection_name_key"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1509
    const-string v0, "network_selection_key"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1514
    :cond_23
    if-ne p1, v3, :cond_35

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 1516
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-nez v1, :cond_34

    .line 1517
    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;)V

    .line 1518
    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 1527
    :cond_34
    :goto_34
    return-void

    .line 1521
    :cond_35
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v0, :cond_34

    .line 1522
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 1523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_34
.end method

.method public updateNotificationAndLaunchIncomingCallUi()V
    .registers 2

    .prologue
    .line 786
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 787
    return-void
.end method

.method protected updateNotificationsAtStartup()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 311
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 314
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .local v8, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string v0, " AND new=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 328
    return-void
.end method

.method public updateSpeakerNotification()V
    .registers 5

    .prologue
    .line 645
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 647
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_2a

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v1, 0x1

    .line 651
    .local v1, showNotification:Z
    :goto_1b
    sget-boolean v2, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v2, :cond_26

    if-eqz v1, :cond_2c

    const-string v2, "updateSpeakerNotification: speaker ON"

    :goto_23
    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 655
    :cond_26
    invoke-virtual {p0, v1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification(Z)V

    .line 656
    return-void

    .line 647
    .end local v1           #showNotification:Z
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1b

    .line 651
    .restart local v1       #showNotification:Z
    :cond_2c
    const-string v2, "updateSpeakerNotification: speaker OFF (or not offhook)"

    goto :goto_23
.end method

.method public updateSpeakerNotification(Z)V
    .registers 3
    .parameter "showNotification"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 678
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 687
    :goto_b
    return-void

    .line 682
    :cond_c
    if-eqz p1, :cond_12

    .line 683
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    goto :goto_b

    .line 685
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_b
.end method
