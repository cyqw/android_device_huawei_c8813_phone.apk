.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"

# interfaces
.implements Lcom/android/phone/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneApp$2;,
        Lcom/android/phone/PhoneApp$SetAudioHandler;,
        Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$CallState;,
        Lcom/android/phone/PhoneApp$WakeState;,
        Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field protected static DSDA_SWITCH_NEW_DESIGN:Z

.field protected static GSM_LOCAL_TONE:Z

.field static IsBothSubEnable:Z

.field static SUBSCRIPTION:I

.field static isJustRestoreFactory:Z

.field private static final isProximitySensorAccelerated:Z

.field static isSecondSub:Z

.field static mDockState:I

.field static mSharedPreferences:Landroid/content/SharedPreferences;

.field static mSub1:I

.field static mSub2:I

.field static msApp:Lcom/android/phone/MSimPhoneApp;

.field public static final ro_config_dsda:Z

.field protected static sMe:Lcom/android/phone/PhoneApp;

.field static sVoiceCapable:Z

.field static sub:I


# instance fields
.field callController:Lcom/android/phone/CallController;

.field callerInfoCache:Lcom/android/phone/CallerInfoCache;

.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field cf_all_deactivation:Ljava/lang/String;

.field cfb_activation:Ljava/lang/String;

.field cfb_deactivation:Ljava/lang/String;

.field cfnrc_activation:Ljava/lang/String;

.field cfnrc_deactivation:Ljava/lang/String;

.field cfnry_activation:Ljava/lang/String;

.field cfnry_deactivation:Ljava/lang/String;

.field cfu_activation:Ljava/lang/String;

.field cfu_deactivation:Ljava/lang/String;

.field cw_activation:Ljava/lang/String;

.field cw_deactivation:Ljava/lang/String;

.field ifNotOnlyUse2gAfterRestoreFactory:Ljava/lang/String;

.field inCallUiState:Lcom/android/phone/InCallUiState;

.field protected mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

.field private mBeginningCall:Z

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mCallVoiceAsisstant:Lcom/android/phone/CallVoiceAsisstant;

.field mCallWaitingEnable:I

.field mCallwaitingPreferences:Landroid/content/SharedPreferences;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mIgnoreTouchUserActivity:Z

.field mImei:Ljava/lang/String;

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;

.field protected mIsHardKeyboardOpen:Z

.field protected mIsHeadsetPlugged:Z

.field private mIsSimPinEnabled:Z

.field public mIsSimPukLocked:Z

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field protected mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private mMMIDialogDisplayed:Landroid/app/AlertDialog;

.field protected mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field mMsimtelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private mNetWorkDepersonalizationPanel:Lcom/android/phone/IccPanel;

.field private mNumberLocation:Ljava/lang/String;

.field private mOrientation:I

.field protected mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field protected mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPhoneAppaudioManager:Landroid/media/AudioManager;

.field private final mPokeLockToken:Landroid/os/IBinder;

.field protected mPowerManagerService:Landroid/os/IPowerManager;

.field protected mPreferredTtyMode:I

.field protected mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field mSavedCallManager:Lcom/android/internal/telephony/CallManager;

.field private mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field mSetAudioHandler:Lcom/android/phone/PhoneApp$SetAudioHandler;

.field private volatile mSetAudioServiceLooper:Landroid/os/Looper;

.field protected mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field private mSilentHangupFlag:Z

.field mSimFirstInsert:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mTtyEnabled:Z

.field private mTtySetOnPowerUp:Z

.field protected mUpdateLock:Landroid/os/UpdateLock;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWakeState:Lcom/android/phone/PhoneApp$WakeState;

.field mWakeUpScreen:Z

.field notificationMgr:Lcom/android/phone/NotificationMgr;

.field notifier:Lcom/android/phone/CallNotifier;

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field phone:Lcom/android/internal/telephony/Phone;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field ringer:Lcom/android/phone/Ringer;

.field sharePref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 146
    sput-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    .line 151
    sput-boolean v2, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 195
    const-string v0, "ro.config.hw_proximity"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneApp;->isProximitySensorAccelerated:Z

    .line 200
    const-string v0, "ro.config.hw_dsda"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    move v0, v1

    :goto_21
    sput-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    .line 228
    sput-boolean v2, Lcom/android/phone/PhoneApp;->GSM_LOCAL_TONE:Z

    .line 322
    sput v2, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 323
    sput-boolean v1, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 445
    sput v3, Lcom/android/phone/PhoneApp;->sub:I

    .line 446
    sput v3, Lcom/android/phone/PhoneApp;->mSub1:I

    .line 447
    sput v3, Lcom/android/phone/PhoneApp;->mSub2:I

    .line 448
    sput-boolean v2, Lcom/android/phone/PhoneApp;->IsBothSubEnable:Z

    .line 449
    sput-boolean v2, Lcom/android/phone/PhoneApp;->isSecondSub:Z

    .line 453
    sput v2, Lcom/android/phone/PhoneApp;->SUBSCRIPTION:I

    .line 454
    sput-boolean v2, Lcom/android/phone/PhoneApp;->isJustRestoreFactory:Z

    return-void

    :cond_38
    move v0, v2

    .line 200
    goto :goto_21
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 731
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 177
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mPhoneAppaudioManager:Landroid/media/AudioManager;

    .line 183
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mNumberLocation:Ljava/lang/String;

    .line 315
    iput v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 316
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 317
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 320
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    .line 346
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mNetWorkDepersonalizationPanel:Lcom/android/phone/IccPanel;

    .line 363
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 365
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 374
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 380
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 381
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    .line 389
    iput v1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 394
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 397
    new-instance v0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    iput v1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 426
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    .line 429
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mSilentHangupFlag:Z

    .line 433
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mCallVoiceAsisstant:Lcom/android/phone/CallVoiceAsisstant;

    .line 441
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mImei:Ljava/lang/String;

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mSimFirstInsert:Z

    .line 496
    new-instance v0, Lcom/android/phone/PhoneApp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$1;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    .line 732
    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 734
    iput-object p0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    .line 736
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->setAutoTimeByNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneApp;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneApp;->notifyNetworkChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneApp;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mNumberLocation:Ljava/lang/String;

    return-object p1
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 1153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1154
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    return-object v0
.end method

.method static createInCallIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 1165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1166
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1169
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 1179
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1180
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1181
    return-object v0
.end method

.method private dismissIccPanel()V
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mNetWorkDepersonalizationPanel:Lcom/android/phone/IccPanel;

    if-eqz v0, :cond_c

    .line 490
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mNetWorkDepersonalizationPanel:Lcom/android/phone/IccPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccPanel;->dismiss()V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mNetWorkDepersonalizationPanel:Lcom/android/phone/IccPanel;

    .line 494
    :cond_c
    return-void
.end method

.method static getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1198
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static getCallScreenClassName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1212
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_b

    .line 1213
    const-class v0, Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1215
    :goto_a
    return-object v0

    :cond_b
    const-class v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getInstance()Lcom/android/phone/PhoneApp;
    .registers 1

    .prologue
    .line 1114
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    if-nez v0, :cond_9

    .line 1115
    new-instance v0, Lcom/android/phone/PhoneApp;

    invoke-direct {v0}, Lcom/android/phone/PhoneApp;-><init>()V

    .line 1118
    :cond_9
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .prologue
    .line 1126
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1206
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2584
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2585
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_15

    .line 2586
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "PhoneApp"

    const-string v1, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    :cond_14
    :goto_14
    return-void

    .line 2588
    :cond_15
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_20

    const-string v2, "PhoneApp"

    const-string v3, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    :cond_20
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget v2, v0, v1

    .line 2592
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_44

    const-string v0, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    :cond_44
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2595
    const-string v4, "ttyEnabled"

    if-eqz v2, :cond_7d

    const/4 v0, 0x1

    :goto_50
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2597
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2601
    packed-switch v2, :pswitch_data_8c

    .line 2613
    const-string v0, "tty_off"

    move-object v1, v0

    .line 2616
    :goto_5e
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_14

    :cond_7d
    move v0, v1

    .line 2595
    goto :goto_50

    .line 2603
    :pswitch_7f
    const-string v0, "tty_full"

    move-object v1, v0

    .line 2604
    goto :goto_5e

    .line 2606
    :pswitch_83
    const-string v0, "tty_vco"

    move-object v1, v0

    .line 2607
    goto :goto_5e

    .line 2609
    :pswitch_87
    const-string v0, "tty_hco"

    move-object v1, v0

    .line 2610
    goto :goto_5e

    .line 2601
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_87
        :pswitch_83
    .end packed-switch
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2464
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 2466
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_86

    .line 2467
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 2468
    .local v1, state:I
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(ILcom/android/internal/telephony/Phone;)V

    .line 2470
    if-nez v1, :cond_5f

    .line 2471
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2472
    .local v2, subscriptionPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v8, :cond_5f

    .line 2474
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->mImei:Ljava/lang/String;

    .line 2475
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mImei:Ljava/lang/String;

    if-eqz v3, :cond_5f

    .line 2476
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mCallwaitingPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mImei:Ljava/lang/String;

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/PhoneApp;->mSimFirstInsert:Z

    .line 2478
    iget-boolean v3, p0, Lcom/android/phone/PhoneApp;->mSimFirstInsert:Z

    if-eqz v3, :cond_5f

    iget v3, p0, Lcom/android/phone/PhoneApp;->mCallWaitingEnable:I

    if-ne v3, v8, :cond_5f

    .line 2480
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 2483
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mCallwaitingPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mImei:Ljava/lang/String;

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2489
    .end local v2           #subscriptionPhone:Lcom/android/internal/telephony/Phone;
    :cond_5f
    if-eqz v1, :cond_64

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7f

    :cond_64
    iget-boolean v3, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v3, :cond_7f

    iget-boolean v3, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    if-nez v3, :cond_7f

    .line 2498
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2499
    iput-boolean v8, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    .line 2501
    :cond_7f
    const/4 v3, 0x3

    if-eq v1, v3, :cond_84

    if-ne v1, v8, :cond_86

    .line 2507
    :cond_84
    iput-boolean v7, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    .line 2510
    .end local v1           #state:I
    :cond_86
    return-void
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 2622
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2624
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_26

    .line 2625
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_26

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_26
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2630
    return-void
.end method

.method private initForNewRadioTechnology()V
    .registers 3

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 2014
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 2015
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 2017
    :cond_15
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2019
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v0, :cond_28

    .line 2020
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 2022
    :cond_28
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v0, :cond_33

    .line 2023
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 2025
    :cond_33
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v0, :cond_3e

    .line 2026
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 2028
    :cond_3e
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v0, :cond_49

    .line 2029
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 2036
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 2037
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 2038
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_5e

    .line 2039
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 2043
    :cond_5e
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_6a

    .line 2044
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->updateAfterRadioTechnologyChange()V

    .line 2051
    :cond_65
    :goto_65
    return-void

    .line 2033
    :cond_66
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    goto :goto_49

    .line 2046
    :cond_6a
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_65

    .line 2047
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    goto :goto_65
.end method

.method private notifyNetworkChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .parameter "intent"
    .parameter "phone"

    .prologue
    .line 2513
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 2514
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_13

    .line 2515
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 2516
    .local v1, state:I
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v1, p2}, Lcom/android/phone/NotificationMgr;->notifyNetworkChanged(ILcom/android/internal/telephony/Phone;)V

    .line 2518
    .end local v1           #state:I
    :cond_13
    return-void
.end method

.method private setAutoTimeByNetworkType()V
    .registers 4

    .prologue
    .line 2396
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 2398
    const/4 v1, 0x4

    if-eq v1, v0, :cond_14

    const/4 v1, 0x5

    if-eq v1, v0, :cond_14

    const/4 v1, 0x6

    if-eq v1, v0, :cond_14

    const/4 v1, 0x7

    if-ne v1, v0, :cond_1e

    .line 2403
    :cond_14
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2406
    :cond_1e
    return-void
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .registers 8
    .parameter "bluetoothState"
    .parameter "bluetoothAudioState"
    .parameter "cm"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2137
    sget-object v2, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_20

    move v0, v1

    .line 2155
    :cond_13
    :goto_13
    return v0

    .line 2143
    :pswitch_14
    if-ne p0, v4, :cond_1a

    const/16 v2, 0xc

    if-eq p1, v2, :cond_13

    :cond_1a
    move v0, v1

    goto :goto_13

    .line 2152
    :pswitch_1c
    if-eq p0, v4, :cond_13

    move v0, v1

    goto :goto_13

    .line 2137
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1c
    .end packed-switch
.end method

.method private updatePokeLock()V
    .registers 5

    .prologue
    .line 1502
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1503
    const-string v0, "PhoneApp"

    const-string v1, "PokeLock should not be used when proximity sensor is available on the device."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :goto_d
    return-void

    .line 1518
    :cond_e
    const/4 v0, 0x0

    .line 1519
    sget-object v1, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4a

    .line 1545
    :goto_1c
    iget-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    if-eqz v1, :cond_22

    .line 1546
    or-int/lit8 v0, v0, 0x1

    .line 1551
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    const-string v3, "PhoneApp"

    invoke-interface {v1, v0, v2, v3}, Landroid/os/IPowerManager;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_d

    .line 1552
    :catch_2c
    move-exception v0

    .line 1553
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.setPokeLock() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1525
    :pswitch_46
    const/4 v0, 0x2

    .line 1526
    goto :goto_1c

    .line 1533
    :pswitch_48
    const/4 v0, 0x4

    .line 1534
    goto :goto_1c

    .line 1519
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_46
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public clearInCallScreenMode()V
    .registers 2

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_9

    .line 2556
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 2558
    :cond_9
    return-void
.end method

.method public clearOtaState()V
    .registers 3

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_e

    .line 2541
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 2543
    :cond_e
    return-void
.end method

.method public clearSilentHangupFlag()V
    .registers 2

    .prologue
    .line 2775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mSilentHangupFlag:Z

    .line 2776
    return-void
.end method

.method clearUserActivityTimeout()V
    .registers 6

    .prologue
    .line 2634
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->clearUserActivityTimeout(JJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2639
    :goto_b
    return-void

    .line 2636
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method createInCallIntent(I)Landroid/content/Intent;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 2762
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2712
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2713
    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2716
    :goto_1a
    return-object v0

    :cond_1b
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1a
.end method

.method dismissCallScreen()V
    .registers 3

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isSilentHangup()Z

    move-result v0

    if-nez v0, :cond_44

    .line 1352
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_3a

    .line 1361
    :cond_2e
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1364
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 1366
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 1384
    :goto_39
    return-void

    .line 1372
    :cond_3a
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-eqz v0, :cond_48

    .line 1373
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1374
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearUserActivityTimeout()V

    .line 1382
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearSilentHangupFlag()V

    goto :goto_39

    .line 1376
    :cond_48
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_44
.end method

.method dismissCallScreen(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 2745
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 2746
    return-void
.end method

.method dismissCallScreen_DSDA(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter

    .prologue
    .line 2892
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dismissOtaDialogs()V
    .registers 2

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_d

    .line 2549
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 2551
    :cond_d
    return-void
.end method

.method displayCallScreen()V
    .registers 5

    .prologue
    .line 1228
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_13

    .line 1229
    const-string v0, "PhoneApp"

    const-string v1, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1244
    :goto_12
    return-void

    .line 1236
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_1a} :catch_1e

    .line 1243
    :goto_1a
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_12

    .line 1237
    :catch_1e
    move-exception v0

    .line 1241
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method displayCallScreen(I)V
    .registers 5
    .parameter

    .prologue
    .line 1250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;
    .registers 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method public getDataSubscription()I
    .registers 2

    .prologue
    .line 2736
    const/4 v0, 0x0

    return v0
.end method

.method getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getDefaultSubscription()I
    .registers 2

    .prologue
    .line 2726
    const/4 v0, 0x0

    return v0
.end method

.method getInCallScreen()Lcom/android/phone/InCallScreen;
    .registers 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method getInCallScreen_DSDA()Lcom/android/phone/InCallScreen_DSDA;
    .registers 4

    .prologue
    .line 1286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 2

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getMMIDialog()Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mMMIDialogDisplayed:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getNumberLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mNumberLocation:Ljava/lang/String;

    return-object v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .registers 4

    .prologue
    .line 2859
    const/4 v1, 0x0

    .line 2861
    .local v1, phoneInCall:Lcom/android/internal/telephony/Phone;
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CallManagerEx;->getPhoneInCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;
    :try_end_6
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v1

    .line 2866
    :goto_7
    return-object v1

    .line 2862
    :catch_8
    move-exception v0

    .line 2864
    .local v0, e:Lcom/huawei/android/util/NoExtAPIException;
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_7
.end method

.method getPhoneState()Lcom/android/internal/telephony/Phone$State;
    .registers 2

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method getPhoneState(I)Lcom/android/internal/telephony/Phone$State;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 2721
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method getRestoreMuteOnInCallResume()Z
    .registers 2

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .registers 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method getUpdateLock()Landroid/os/UpdateLock;
    .registers 2

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    return-object v0
.end method

.method public getVoiceSubscription()I
    .registers 2

    .prologue
    .line 2731
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceSubscriptionInService()I
    .registers 2

    .prologue
    .line 2758
    const/4 v0, 0x0

    return v0
.end method

.method public getmActiveSubscription()I
    .registers 4

    .prologue
    .line 2828
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getmRingingSubscription()I
    .registers 4

    .prologue
    .line 2846
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleOtaspDisconnect()V
    .registers 3

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_c

    .line 1414
    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect: otaUtils is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :goto_b
    return-void

    .line 1418
    :cond_c
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaspDisconnect()V

    goto :goto_b
.end method

.method handleOtaspEvent(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_1d

    .line 1397
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaEvents: got an event but otaUtils is null! message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :goto_1c
    return-void

    .line 1402
    :cond_1d
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto :goto_1c
.end method

.method initIccDepersonalizationPanel(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "ar"

    .prologue
    .line 717
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 720
    .local v0, subtype:I
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->dismissIccPanel()V

    .line 722
    new-instance v1, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mNetWorkDepersonalizationPanel:Lcom/android/phone/IccPanel;

    .line 724
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mNetWorkDepersonalizationPanel:Lcom/android/phone/IccPanel;

    invoke-virtual {v1}, Lcom/android/phone/IccPanel;->show()V

    .line 727
    return-void
.end method

.method public isCDMACallReallyConnected()Z
    .registers 4

    .prologue
    .line 2872
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isDialerOpened()Z
    .registers 2

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isGsmCallRemoteAnswered()Z
    .registers 4

    .prologue
    .line 2882
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isHeadsetPlugged()Z
    .registers 2

    .prologue
    .line 2068
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isInvalidateInCallControls()Z
    .registers 4

    .prologue
    .line 2925
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOtaCallInActiveState()Z
    .registers 3

    .prologue
    .line 2522
    const/4 v0, 0x0

    .line 2523
    .local v0, otaCallActive:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_b

    .line 2524
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    .line 2526
    :cond_b
    return v0
.end method

.method isShowingCallScreen()Z
    .registers 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1307
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_5
.end method

.method isShowingCallScreenForProximity()Z
    .registers 2

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1336
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivityForProximity()Z

    move-result v0

    goto :goto_5
.end method

.method public isSilentHangup()Z
    .registers 2

    .prologue
    .line 2779
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mSilentHangupFlag:Z

    return v0
.end method

.method isSimPinEnabled()Z
    .registers 2

    .prologue
    .line 1256
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsSimPinEnabled:Z

    return v0
.end method

.method isSimPukLocked(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 2754
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsSimPukLocked:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 1092
    sget-object v0, Lcom/android/phone/PhoneApp;->msApp:Lcom/android/phone/MSimPhoneApp;

    if-eqz v0, :cond_e

    .line 1093
    sget-object v0, Lcom/android/phone/PhoneApp;->msApp:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimPhoneApp;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1104
    :goto_a
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1105
    return-void

    .line 1095
    :cond_e
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1e

    .line 1096
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    .line 1102
    :goto_14
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    goto :goto_a

    .line 1098
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_14
.end method

.method public onCreate()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 741
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IntentService[test]"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 743
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mSetAudioServiceLooper:Landroid/os/Looper;

    .line 744
    new-instance v0, Lcom/android/phone/PhoneApp$SetAudioHandler;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mSetAudioServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/PhoneApp$SetAudioHandler;-><init>(Lcom/android/phone/PhoneApp;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mSetAudioHandler:Lcom/android/phone/PhoneApp$SetAudioHandler;

    .line 746
    iput-object p0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    .line 749
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hw_dsda_new_design"

    invoke-static {v0, v3, v2}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_dd

    move v0, v1

    :goto_2f
    sput-boolean v0, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    .line 751
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 753
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPhoneAppaudioManager:Landroid/media/AudioManager;

    .line 754
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 757
    const-string v0, "call_waiting_prefs"

    invoke-virtual {p0, v0, v9}, Lcom/android/phone/PhoneApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mCallwaitingPreferences:Landroid/content/SharedPreferences;

    .line 758
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 759
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "hw_call_waiting_enable"

    invoke-static {v0, v4, v1}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneApp;->mCallWaitingEnable:I

    .line 762
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "hw_notOnlyUse2g_restoreFactory"

    invoke-static {v0, v4}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->ifNotOnlyUse2gAfterRestoreFactory:Ljava/lang/String;

    .line 763
    const-string v0, "com.android.phone_preferences"

    invoke-virtual {p0, v0, v9}, Lcom/android/phone/PhoneApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->sharePref:Landroid/content/SharedPreferences;

    .line 768
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1110028

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 775
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 778
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "phone_msim"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMsimtelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 780
    new-instance v0, Lcom/android/phone/MSimPhoneApp;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimPhoneApp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/PhoneApp;->msApp:Lcom/android/phone/MSimPhoneApp;

    .line 781
    sget-object v0, Lcom/android/phone/PhoneApp;->msApp:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneApp;->onCreate()V

    .line 1033
    :cond_a2
    :goto_a2
    :try_start_a2
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 1036
    :cond_ad
    :goto_ad
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-eq v3, v1, :cond_cc

    .line 1037
    if-ne v3, v9, :cond_ad

    .line 1038
    const-string v3, "cfu_activation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34f

    .line 1040
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->cfu_activation:Ljava/lang/String;
    :try_end_ca
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a2 .. :try_end_ca} :catch_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_ca} :catch_366
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_ca} :catch_383

    goto :goto_ad

    .line 1074
    :catch_cb
    move-exception v0

    .line 1085
    :cond_cc
    :goto_cc
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hw_generic_local_dtmf"

    invoke-static {v0, v3, v2}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_441

    :goto_da
    sput-boolean v1, Lcom/android/phone/PhoneApp;->GSM_LOCAL_TONE:Z

    .line 1087
    return-void

    :cond_dd
    move v0, v2

    .line 749
    goto/16 :goto_2f

    .line 786
    :cond_e0
    const-string v0, "hw_call_wakeup"

    invoke-static {v3, v0, v1}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_ea

    .line 787
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    .line 791
    :cond_ea
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_2b1

    .line 792
    const-string v0, "PhoneApp"

    const-string v4, "non dsds PhoneApp:"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 797
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 800
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/TelephonyDebugService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 801
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 803
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 804
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 808
    invoke-static {p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 810
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 812
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 814
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 816
    if-ne v0, v9, :cond_13e

    .line 818
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 819
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 822
    :cond_13e
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_32a

    .line 825
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 826
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 832
    :goto_156
    invoke-static {p0}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 834
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 835
    new-instance v0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 839
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 840
    const v4, 0x1000001a

    const-string v5, "PhoneApp"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 844
    const v4, 0x20000001

    const-string v5, "PhoneApp"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 847
    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_19a

    .line 849
    const/16 v4, 0x20

    const-string v5, "PhoneApp"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 854
    :cond_19a
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 855
    new-instance v0, Lcom/android/phone/AccelerometerListener;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 858
    :cond_1a7
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 862
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 867
    new-instance v0, Landroid/os/UpdateLock;

    const-string v4, "phone"

    invoke-direct {v0, v4}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    .line 873
    invoke-static {p0}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    .line 876
    invoke-static {p0}, Lcom/android/phone/InCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 882
    invoke-static {p0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    .line 888
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    new-instance v6, Lcom/android/phone/CallLogAsync;

    invoke-direct {v6}, Lcom/android/phone/CallLogAsync;-><init>()V

    invoke-static {p0, v0, v4, v5, v6}, Lcom/android/phone/CallNotifier;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 891
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 892
    if-eqz v0, :cond_1f8

    .line 895
    :try_start_1f1
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6}, Lcom/huawei/internal/telephony/IccCardEx;->registerForPersoLocked(Lcom/android/internal/telephony/IccCard;Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_1f8
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_1f1 .. :try_end_1f8} :catch_444

    .line 904
    :cond_1f8
    :goto_1f8
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x34

    invoke-virtual {v0, v4, v5, v7}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 907
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 913
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "tty_enabled"

    invoke-static {v0, v4, v8}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 915
    if-eq v0, v8, :cond_331

    if-ne v0, v1, :cond_32e

    move v0, v1

    :goto_215
    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    .line 921
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 923
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 924
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 925
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 926
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 927
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 928
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 929
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 930
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 931
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 932
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 933
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 937
    const-string v4, "android.intent.action.ACTION_PRE_POST_PAY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 940
    const-string v4, "com.huawei.android.ProfileSwitcher.speaker"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 944
    const-string v4, "com.huawei.numberlocation"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 948
    iget-boolean v4, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v4, :cond_26d

    .line 949
    const-string v4, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 951
    :cond_26d
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 952
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 957
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 966
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 969
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 970
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 974
    const v0, 0x7f060020

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 976
    const v0, 0x7f060001

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 981
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 984
    :cond_2b1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_2d5

    .line 985
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 986
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 987
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 988
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 992
    :cond_2d5
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 995
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 1004
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v0, :cond_2f6

    .line 1005
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_tty_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 1014
    :cond_2f6
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hac_enabled"

    invoke-static {v0, v3, v8}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1016
    if-eq v0, v8, :cond_340

    if-ne v0, v1, :cond_33e

    move v0, v1

    .line 1019
    :goto_305
    if-eqz v0, :cond_a2

    .line 1021
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hearing_aid"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1024
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1025
    const-string v4, "HACSetting"

    if-eqz v3, :cond_34c

    const-string v3, "ON"

    :goto_325
    invoke-virtual {v0, v4, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 829
    :cond_32a
    iput-object v7, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    goto/16 :goto_156

    :cond_32e
    move v0, v2

    .line 915
    goto/16 :goto_215

    :cond_331
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0006

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto/16 :goto_215

    :cond_33e
    move v0, v2

    .line 1016
    goto :goto_305

    :cond_340
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_305

    .line 1025
    :cond_34c
    const-string v3, "OFF"

    goto :goto_325

    .line 1041
    :cond_34f
    :try_start_34f
    const-string v3, "cfu_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36c

    .line 1043
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->cfu_deactivation:Ljava/lang/String;
    :try_end_364
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34f .. :try_end_364} :catch_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34f .. :try_end_364} :catch_366
    .catch Ljava/io/IOException; {:try_start_34f .. :try_end_364} :catch_383

    goto/16 :goto_ad

    .line 1077
    :catch_366
    move-exception v0

    .line 1078
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_cc

    .line 1044
    :cond_36c
    :try_start_36c
    const-string v3, "cfb_activation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_389

    .line 1046
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->cfb_activation:Ljava/lang/String;
    :try_end_381
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36c .. :try_end_381} :catch_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36c .. :try_end_381} :catch_366
    .catch Ljava/io/IOException; {:try_start_36c .. :try_end_381} :catch_383

    goto/16 :goto_ad

    .line 1079
    :catch_383
    move-exception v0

    .line 1080
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_cc

    .line 1047
    :cond_389
    :try_start_389
    const-string v3, "cfb_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a0

    .line 1049
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->cfb_deactivation:Ljava/lang/String;

    goto/16 :goto_ad

    .line 1050
    :cond_3a0
    const-string v3, "cfnry_activation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b7

    .line 1052
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->cfnry_activation:Ljava/lang/String;

    goto/16 :goto_ad

    .line 1053
    :cond_3b7
    const-string v3, "cfnry_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ce

    .line 1055
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->cfnry_deactivation:Ljava/lang/String;

    goto/16 :goto_ad

    .line 1056
    :cond_3ce
    const-string v3, "cfnrc_activation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e5

    .line 1058
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->cfnrc_activation:Ljava/lang/String;

    goto/16 :goto_ad

    .line 1059
    :cond_3e5
    const-string v3, "cfnrc_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3fc

    .line 1061
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->cfnrc_deactivation:Ljava/lang/String;

    goto/16 :goto_ad

    .line 1062
    :cond_3fc
    const-string v3, "cf_all_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    .line 1064
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->cf_all_deactivation:Ljava/lang/String;

    goto/16 :goto_ad

    .line 1065
    :cond_413
    const-string v3, "cw_activation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42a

    .line 1067
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->cw_activation:Ljava/lang/String;

    goto/16 :goto_ad

    .line 1068
    :cond_42a
    const-string v3, "cw_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 1070
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->cw_deactivation:Ljava/lang/String;
    :try_end_43f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_389 .. :try_end_43f} :catch_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_389 .. :try_end_43f} :catch_366
    .catch Ljava/io/IOException; {:try_start_389 .. :try_end_43f} :catch_383

    goto/16 :goto_ad

    :cond_441
    move v1, v2

    .line 1085
    goto/16 :goto_da

    .line 896
    :catch_444
    move-exception v0

    goto/16 :goto_1f8
.end method

.method protected onMMIComplete(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 2006
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 2007
    .local v0, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 2008
    return-void
.end method

.method public orientationChanged(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 1925
    iput p1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1926
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1927
    return-void
.end method

.method pokeUserActivity()V
    .registers 5

    .prologue
    .line 1754
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1758
    :goto_a
    return-void

    .line 1755
    :catch_b
    move-exception v0

    .line 1756
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.userActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method preventScreenOn(Z)V
    .registers 6
    .parameter

    .prologue
    .line 1714
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->preventScreenOn(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1718
    :goto_5
    return-void

    .line 1715
    :catch_6
    move-exception v0

    .line 1716
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.preventScreenOn() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method proximitySensorModeEnabled()Z
    .registers 2

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public removeSubscriptionListenr(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V
    .registers 5
    .parameter

    .prologue
    .line 2902
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected requestUpdateBluetoothIndication()V
    .registers 2

    .prologue
    .line 2916
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateBluetoothIndication()V

    .line 2917
    :cond_b
    return-void
.end method

.method requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V
    .registers 4
    .parameter "ws"

    .prologue
    .line 1567
    monitor-enter p0

    .line 1568
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    if-eq v0, p1, :cond_2c

    .line 1569
    sget-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    .line 1589
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1590
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1592
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1593
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1597
    :cond_2a
    :goto_2a
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 1599
    :cond_2c
    monitor-exit p0

    .line 1600
    return-void

    .line 1573
    :pswitch_2e
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1574
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1575
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2a

    .line 1599
    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_41

    throw v0

    .line 1581
    :pswitch_44
    :try_start_44
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1582
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1583
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_41

    goto :goto_2a

    .line 1569
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_44
    .end packed-switch
.end method

.method resetInCallFragmentInstance(I)V
    .registers 5
    .parameter

    .prologue
    .line 2823
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetLatestActiveCallOrigin()V
    .registers 9

    .prologue
    .line 2682
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v0, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2683
    .local v0, callOriginTimestamp:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2688
    .local v2, currentTimestamp:J
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v4, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1f

    sub-long v4, v2, v0

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gez v4, :cond_1f

    .line 2695
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-wide v2, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2700
    :goto_1e
    return-void

    .line 2698
    :cond_1f
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public resetmActiveSubscription()V
    .registers 4

    .prologue
    .line 2836
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetmRingingSubscription()V
    .registers 4

    .prologue
    .line 2850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setBeginningCall(Z)V
    .registers 3
    .parameter "beginning"

    .prologue
    .line 1768
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1770
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1771
    return-void
.end method

.method public setCDMACallReallyConnected(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2876
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCallVoiceAsisstantInstance(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 2
    .parameter "cVa"

    .prologue
    .line 2785
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mCallVoiceAsisstant:Lcom/android/phone/CallVoiceAsisstant;

    .line 2786
    return-void
.end method

.method public setGsmCallRemoteAnswered(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2886
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setIgnoreTouchUserActivity(Z)V
    .registers 3
    .parameter "ignore"

    .prologue
    .line 1737
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1743
    :goto_6
    return-void

    .line 1741
    :cond_7
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 1742
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    goto :goto_6
.end method

.method setInCallFragmentInstance(ILcom/android/phone/InCallFragment;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2819
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 1269
    return-void
.end method

.method setInCallScreenInstance_DSDA(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 5
    .parameter

    .prologue
    .line 1274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInvalidateInCallControls(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2921
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .registers 5
    .parameter "callOrigin"

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    .line 2661
    if-eqz p1, :cond_f

    .line 2662
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2666
    :goto_e
    return-void

    .line 2664
    :cond_f
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    goto :goto_e
.end method

.method public setNumberLocation(Ljava/lang/String;)V
    .registers 2
    .parameter "numberLocation"

    .prologue
    .line 2937
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mNumberLocation:Ljava/lang/String;

    .line 2938
    return-void
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 1435
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 1452
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 466
    return-void
.end method

.method setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V
    .registers 3
    .parameter "duration"

    .prologue
    .line 1481
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1493
    :cond_6
    :goto_6
    return-void

    .line 1488
    :cond_7
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    if-eq p1, v0, :cond_6

    .line 1491
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 1492
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    goto :goto_6
.end method

.method public setSilentHangupFlag()V
    .registers 2

    .prologue
    .line 2771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mSilentHangupFlag:Z

    .line 2772
    return-void
.end method

.method public setSubscriptionListener(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V
    .registers 5
    .parameter

    .prologue
    .line 2898
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setUSSDDialog(Landroid/app/AlertDialog;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mMMIDialogDisplayed:Landroid/app/AlertDialog;

    .line 1456
    return-void
.end method

.method public setmActiveSubscription(I)V
    .registers 5
    .parameter

    .prologue
    .line 2832
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setmRingingSubscription(I)V
    .registers 5
    .parameter

    .prologue
    .line 2842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method showBluetoothIndication()Z
    .registers 2

    .prologue
    .line 2083
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    return v0
.end method

.method silenceVoiceAssistant()V
    .registers 2

    .prologue
    .line 2793
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCallVoiceAsisstant:Lcom/android/phone/CallVoiceAsisstant;

    if-eqz v0, :cond_9

    .line 2794
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCallVoiceAsisstant:Lcom/android/phone/CallVoiceAsisstant;

    invoke-virtual {v0}, Lcom/android/phone/CallVoiceAsisstant;->silenceRinger()V

    .line 2796
    :cond_9
    return-void
.end method

.method protected updateAfterRadioTechnologyChange()V
    .registers 2

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_9

    .line 2056
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    .line 2058
    :cond_9
    return-void
.end method

.method updateBluetoothIndication(Z)V
    .registers 5
    .parameter "forceUiUpdate"

    .prologue
    .line 2097
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneApp;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 2100
    if-eqz p1, :cond_18

    .line 2105
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->requestUpdateBluetoothIndication()V

    .line 2108
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2112
    :cond_18
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2113
    return-void
.end method

.method updateInCallScreen()V
    .registers 2

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_9

    .line 2579
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 2581
    :cond_9
    return-void
.end method

.method protected updateKeyguardPolicy(Lcom/android/internal/telephony/Phone$State;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 2912
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 2913
    :cond_e
    return-void

    .line 2912
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 1936
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_30

    .line 1937
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 1938
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1944
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_31

    .line 1949
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1950
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->acquire()V

    .line 1962
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    if-eqz v0, :cond_2b

    .line 1964
    iput v1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1965
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_45

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {v2, v0}, Lcom/android/phone/AccelerometerListener;->enable(Z)V

    .line 1968
    :cond_2b
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1976
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateKeyguardPolicy(Lcom/android/internal/telephony/Phone$State;)V

    .line 1980
    :cond_30
    return-void

    .line 1953
    :cond_31
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1954
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1955
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    goto :goto_1b

    :cond_45
    move v0, v1

    .line 1965
    goto :goto_28
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1806
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1808
    const-string v3, "ProximitySensor"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1809
    if-nez v0, :cond_23

    .line 1810
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1811
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1921
    :cond_22
    :goto_22
    return-void

    .line 1817
    :cond_23
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1818
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5

    .line 1822
    :try_start_2c
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_4a

    :cond_46
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    if-eqz v0, :cond_aa

    :cond_4a
    move v4, v1

    .line 1841
    :goto_4b
    sget-boolean v0, Lcom/android/phone/PhoneApp;->isProximitySensorAccelerated:Z

    if-nez v0, :cond_196

    .line 1842
    iget v0, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    if-ne v0, v8, :cond_ac

    move v0, v1

    :goto_54
    move v3, v0

    .line 1846
    :goto_55
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreenForProximity()Z

    move-result v0

    if-nez v0, :cond_ae

    move v0, v1

    :goto_5c
    or-int/2addr v4, v0

    .line 1854
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_193

    .line 1855
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v0, :cond_b0

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_b0

    move v0, v1

    .line 1860
    :goto_7c
    if-eqz v0, :cond_b2

    if-eqz v3, :cond_b2

    move v0, v1

    :goto_81
    or-int/2addr v0, v4

    .line 1862
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v3, :cond_8a

    iget-boolean v3, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    if-eqz v3, :cond_b4

    :cond_8a
    if-nez v0, :cond_b4

    .line 1865
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 1866
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_9f

    const-string v0, "PhoneApp"

    const-string v1, "updateProximitySensorMode: acquiring..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_9f
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1919
    :cond_a4
    :goto_a4
    monitor-exit v5

    goto/16 :goto_22

    :catchall_a7
    move-exception v0

    monitor-exit v5
    :try_end_a9
    .catchall {:try_start_2c .. :try_end_a9} :catchall_a7

    throw v0

    :cond_aa
    move v4, v2

    .line 1822
    goto :goto_4b

    :cond_ac
    move v0, v2

    .line 1842
    goto :goto_54

    :cond_ae
    move v0, v2

    .line 1846
    goto :goto_5c

    :cond_b0
    move v0, v2

    .line 1855
    goto :goto_7c

    :cond_b2
    move v0, v2

    .line 1860
    goto :goto_81

    .line 1874
    :cond_b4
    :try_start_b4
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1881
    const/4 v4, 0x0

    .line 1887
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_no_change_2nd_call_ring"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_fe

    move v3, v1

    .line 1889
    :goto_cd
    if-ne v1, v3, :cond_155

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_155

    .line 1890
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    .line 1892
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_dd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 1893
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v8, :cond_100

    .line 1894
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1895
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_fc
    move v2, v0

    .line 1900
    goto :goto_dd

    :cond_fe
    move v3, v2

    .line 1887
    goto :goto_cd

    .line 1896
    :cond_100
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v1, :cond_190

    .line 1897
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 1898
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1899
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v7

    add-int/2addr v0, v2

    goto :goto_fc

    .line 1903
    :cond_121
    if-lt v2, v1, :cond_155

    .line 1904
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenNoChange2ndCallRing----->"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "    state----->"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "    conCount------>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ": the second call is ringing,do nothing!"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_155
    if-nez v2, :cond_a4

    .line 1909
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 1910
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenNoChange2ndCallRing----->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "    state----->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "    conCount------>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",release ProximityWakeLock!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18e
    .catchall {:try_start_b4 .. :try_end_18e} :catchall_a7

    goto/16 :goto_a4

    :cond_190
    move v0, v2

    goto/16 :goto_fc

    :cond_193
    move v0, v2

    goto/16 :goto_7c

    :cond_196
    move v3, v2

    goto/16 :goto_55
.end method

.method updateWakeState()V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1631
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 1636
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    .line 1643
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isDialerOpened()Z

    move-result v5

    .line 1654
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v0, :cond_c6

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c6

    move v0, v1

    .line 1662
    :goto_1d
    sget-boolean v6, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v6, :cond_53

    const-string v6, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateWakeState: callscreen "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dialer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", speaker "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_53
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1693
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v0, :cond_c9

    move v0, v1

    .line 1694
    :goto_5d
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v5, :cond_cb

    move v3, v1

    .line 1695
    :goto_6c
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_cd

    if-eqz v4, :cond_cd

    move v4, v1

    .line 1697
    :goto_77
    if-nez v0, :cond_7d

    if-nez v3, :cond_7d

    if-eqz v4, :cond_7e

    :cond_7d
    move v2, v1

    .line 1698
    :cond_7e
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_be

    const-string v1, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWakeState: keepScreenOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (isRinging "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", isDialing "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", showingDisc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_be
    if-eqz v2, :cond_cf

    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    :goto_c2
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1704
    return-void

    :cond_c6
    move v0, v2

    .line 1654
    goto/16 :goto_1d

    :cond_c9
    move v0, v2

    .line 1693
    goto :goto_5d

    :cond_cb
    move v3, v2

    .line 1694
    goto :goto_6c

    :cond_cd
    move v4, v2

    .line 1695
    goto :goto_77

    .line 1703
    :cond_cf
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    goto :goto_c2
.end method

.method wakeUpScreen()V
    .registers 6

    .prologue
    .line 1607
    monitor-enter p0

    .line 1608
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v0, v1, :cond_1d

    .line 1609
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1f

    .line 1611
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_22

    .line 1616
    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit p0

    .line 1617
    return-void

    .line 1616
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    throw v0

    .line 1612
    :catch_22
    move-exception v0

    goto :goto_1d
.end method
