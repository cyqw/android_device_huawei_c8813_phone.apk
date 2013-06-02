.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final isHideCallForward:Z

.field private static final mIsChinaTelecom:Z

.field private static mIsFirstUsedSetted:Z

.field public static mSettingUri:Landroid/net/Uri;

.field protected static sInstance:Lcom/android/phone/CallNotifier;

.field private static suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;


# instance fields
.field protected mApplication:Lcom/android/phone/PhoneApp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

.field private mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCurrentEmergencyToneState:I

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mIsCdmaRedialCall:Z

.field private mIsEmergencyToneOn:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSilentRingerRequested:Z

.field private mVoiceAssistantListener:Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;

.field private mVoicePrivacyState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 100
    sput-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    .line 104
    const-string v1, "ro.config.hw_hidecallforward"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/CallNotifier;->isHideCallForward:Z

    .line 123
    sput-boolean v0, Lcom/android/phone/CallNotifier;->mIsFirstUsedSetted:Z

    .line 124
    const-string v1, "ro.config.hw_opta"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "92"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "ro.config.hw_optb"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "156"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    sput-boolean v0, Lcom/android/phone/CallNotifier;->mIsChinaTelecom:Z

    .line 251
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallNotifier;->mSettingUri:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .registers 15
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 155
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 165
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 214
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 226
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 227
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 238
    iput v4, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 647
    new-instance v3, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2948
    iput-object v6, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    .line 3025
    new-instance v3, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mVoiceAssistantListener:Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;

    .line 272
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    .line 273
    iget-object v3, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 274
    iput-object p5, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 276
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 280
    :try_start_3f
    invoke-static {}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNVWarrantyDate()J

    move-result-wide v1

    .line 282
    .local v1, lastCallTime:J
    const-wide/16 v3, 0x258

    cmp-long v3, v1, v3

    if-lez v3, :cond_77

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastCallTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 284
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/phone/CallNotifier;->mIsFirstUsedSetted:Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_62} :catch_86

    .line 297
    .end local v1           #lastCallTime:J
    :goto_62
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 304
    :try_start_65
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x0

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_6f} :catch_a6

    .line 312
    :goto_6f
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 313
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 314
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->listen()V

    .line 315
    return-void

    .line 285
    .restart local v1       #lastCallTime:J
    :cond_77
    cmp-long v3, v1, v7

    if-gez v3, :cond_8f

    .line 286
    :try_start_7b
    const-string v3, "init nv value!"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 287
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNVWarrantyDate(J)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_85} :catch_86

    goto :goto_62

    .line 291
    .end local v1           #lastCallTime:J
    :catch_86
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/Exception;
    sput-boolean v5, Lcom/android/phone/CallNotifier;->mIsFirstUsedSetted:Z

    .line 293
    const-string v3, "WarrantyDate NV Exception,can`t total the call time!"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_62

    .line 289
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #lastCallTime:J
    :cond_8f
    :try_start_8f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastCallTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a5} :catch_86

    goto :goto_62

    .line 306
    .end local v1           #lastCallTime:J
    :catch_a6
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput-object v6, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_6f
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/CallNotifier;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/CallNotifier;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->cancelVAssistant()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600()Z
    .registers 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallNotifier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method private cancelVAssistant()V
    .registers 1

    .prologue
    .line 3018
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->restartRinger()V

    .line 3019
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->stopVAssistant()V

    .line 3020
    return-void
.end method

.method public static clearSuppSvcNotification()V
    .registers 1

    .prologue
    .line 644
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallNotifier;->suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 645
    return-void
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .registers 5
    .parameter "conn"

    .prologue
    .line 2874
    const/4 v0, 0x0

    .line 2875
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 2877
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_b

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_f

    :cond_b
    move-object v0, v1

    .line 2878
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 2882
    .end local v1           #o:Ljava/lang/Object;
    :goto_e
    return-object v0

    .line 2880
    .restart local v1       #o:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #o:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_e
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .registers 7
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 2828
    const/4 v0, 0x0

    .line 2830
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2831
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2851
    :goto_b
    if-nez v0, :cond_41

    .line 2852
    const/4 v2, 0x0

    .line 2863
    :goto_e
    return-object v2

    .line 2838
    :cond_f
    if-eqz p2, :cond_25

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2840
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    .line 2842
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 2844
    :cond_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 2847
    :cond_3e
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_b

    .line 2854
    :cond_41
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 2857
    .local v1, presentation:I
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2859
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 2860
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_57
    move-object v2, v0

    .line 2863
    goto :goto_e
.end method

.method private getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2896
    if-nez p2, :cond_7

    .line 2897
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 2903
    :cond_6
    :goto_6
    return v0

    .line 2899
    :cond_7
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2900
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static getSuppSvcNotification()Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    .registers 1

    .prologue
    .line 641
    sget-object v0, Lcom/android/phone/CallNotifier;->suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    return-object v0
.end method

.method private getSuppSvcNotificationText(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;
    .registers 6
    .parameter "suppSvcNotification"

    .prologue
    const v2, 0x7f0e043c

    .line 487
    const-string v0, ""

    .line 489
    .local v0, callForwardTxt:Ljava/lang/String;
    if-eqz p1, :cond_2a

    sget-boolean v1, Lcom/android/phone/CallNotifier;->isHideCallForward:Z

    if-nez v1, :cond_2a

    .line 491
    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    packed-switch v1, :pswitch_data_15e

    .line 633
    const-string v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received invalid Notification Type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_2a
    :goto_2a
    return-object v0

    .line 494
    :pswitch_2b
    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_166

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unsupported MO SS Notification :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_2a

    .line 498
    :pswitch_49
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    goto :goto_2a

    .line 505
    :pswitch_55
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    goto :goto_2a

    .line 511
    :pswitch_61
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    goto :goto_2a

    .line 518
    :pswitch_6d
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e046a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    goto :goto_2a

    .line 525
    :pswitch_79
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    goto :goto_2a

    .line 530
    :pswitch_82
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e046b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    goto :goto_2a

    .line 536
    :pswitch_8e
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e046c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    goto :goto_2a

    .line 542
    :pswitch_9a
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e043d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    goto :goto_2a

    .line 548
    :pswitch_a6
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e046d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 550
    goto/16 :goto_2a

    .line 559
    :pswitch_b3
    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_17c

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unsupported MT SS Notification :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 562
    :pswitch_d2
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 564
    goto/16 :goto_2a

    .line 569
    :pswitch_df
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    goto/16 :goto_2a

    .line 575
    :pswitch_e9
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e03a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    goto/16 :goto_2a

    .line 581
    :pswitch_f6
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e03a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    goto/16 :goto_2a

    .line 587
    :pswitch_103
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    goto/16 :goto_2a

    .line 593
    :pswitch_110
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    goto/16 :goto_2a

    .line 598
    :pswitch_11d
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    goto/16 :goto_2a

    .line 604
    :pswitch_12a
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e043e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    goto/16 :goto_2a

    .line 610
    :pswitch_137
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e043f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 612
    goto/16 :goto_2a

    .line 616
    :pswitch_144
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    goto/16 :goto_2a

    .line 622
    :pswitch_151
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 624
    goto/16 :goto_2a

    .line 491
    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_b3
    .end packed-switch

    .line 494
    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_49
        :pswitch_55
        :pswitch_61
        :pswitch_6d
        :pswitch_79
        :pswitch_82
        :pswitch_8e
        :pswitch_9a
        :pswitch_a6
    .end packed-switch

    .line 559
    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_df
        :pswitch_e9
        :pswitch_f6
        :pswitch_103
        :pswitch_110
        :pswitch_11d
        :pswitch_12a
        :pswitch_137
        :pswitch_144
        :pswitch_151
    .end packed-switch
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .registers 10
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 847
    sget-boolean v6, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v6, :cond_e

    .line 851
    const-string v5, "CallNotifier"

    const-string v6, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :goto_d
    return v4

    .line 858
    :cond_e
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 859
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_1d

    const-string v4, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_1d
    move v4, v5

    .line 860
    goto :goto_d

    .line 864
    :cond_1f
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3a

    move v2, v4

    .line 866
    .local v2, provisioned:Z
    :goto_30
    if-nez v2, :cond_3c

    .line 867
    const-string v5, "CallNotifier"

    const-string v6, "Ignoring incoming call: not provisioned"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .end local v2           #provisioned:Z
    :cond_3a
    move v2, v5

    .line 864
    goto :goto_30

    .line 872
    .restart local v2       #provisioned:Z
    :cond_3c
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 873
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_68

    move v0, v4

    .line 875
    .local v0, activateState:Z
    :goto_4d
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_6a

    move v1, v4

    .line 877
    .local v1, dialogState:Z
    :goto_58
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v3, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 879
    .local v3, spcState:Z
    if-eqz v3, :cond_6c

    .line 880
    const-string v5, "CallNotifier"

    const-string v6, "Ignoring incoming call: OTA call is active"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .end local v0           #activateState:Z
    .end local v1           #dialogState:Z
    .end local v3           #spcState:Z
    :cond_68
    move v0, v5

    .line 873
    goto :goto_4d

    .restart local v0       #activateState:Z
    :cond_6a
    move v1, v5

    .line 875
    goto :goto_58

    .line 882
    .restart local v1       #dialogState:Z
    .restart local v3       #spcState:Z
    :cond_6c
    if-nez v0, :cond_70

    if-eqz v1, :cond_83

    .line 887
    :cond_70
    if-eqz v1, :cond_77

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 888
    :cond_77
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 889
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    move v4, v5

    .line 890
    goto :goto_d

    .end local v0           #activateState:Z
    .end local v1           #dialogState:Z
    .end local v3           #spcState:Z
    :cond_83
    move v4, v5

    .line 895
    goto :goto_d
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    const-class v6, Lcom/android/phone/CallNotifier;

    monitor-enter v6

    .line 260
    :try_start_3
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_17

    .line 261
    new-instance v0, Lcom/android/phone/CallNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 265
    :goto_13
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v6

    return-object v0

    .line 263
    :cond_17
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 266
    :catchall_32
    move-exception v0

    monitor-exit v6
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private initCallAssistant()V
    .registers 2

    .prologue
    .line 2955
    new-instance v0, Lcom/android/phone/CallVoiceAsisstant;

    invoke-direct {v0}, Lcom/android/phone/CallVoiceAsisstant;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    .line 2957
    return-void
.end method

.method private isVAssistantOpened()Z
    .registers 4

    .prologue
    .line 2968
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    invoke-virtual {v0}, Lcom/android/phone/CallVoiceAsisstant;->isVoiceAssistantOpen()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 2975
    :goto_6
    return v0

    .line 2970
    :catch_7
    move-exception v0

    .line 2971
    const-string v1, "CallNotifier"

    const-string v2, "isVAssistantOpened() Exception ...... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2975
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 2932
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x17

    const/4 v2, 0x0

    .line 2480
    invoke-virtual {p0, v3}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2481
    invoke-virtual {p0, v4}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2485
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 2490
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2491
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_25

    const-string v0, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2492
    :cond_25
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 2496
    :cond_28
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2497
    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2501
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 2504
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2508
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2509
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 2511
    const/4 v2, 0x1

    if-ne v1, v2, :cond_84

    .line 2512
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 2513
    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 2514
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 2515
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_78

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uAlertPitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2518
    :cond_78
    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v0

    .line 2522
    new-instance v1, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2524
    :cond_84
    return-void
.end method

.method private onCdmaCallWaitingReject()V
    .registers 16

    .prologue
    const/4 v11, 0x3

    const/4 v14, 0x0

    .line 2548
    .line 2550
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_94

    .line 2552
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v14}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v1, v0

    .line 2559
    :goto_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_93

    .line 2561
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    .line 2563
    if-eqz v12, :cond_91

    .line 2564
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 2565
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 2566
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    .line 2567
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v8

    .line 2568
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v0, :cond_9d

    move v5, v11

    .line 2572
    :goto_30
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 2574
    if-eqz v0, :cond_3a

    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_9f

    .line 2575
    :cond_3a
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    .line 2582
    :goto_3d
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2584
    if-eqz v2, :cond_a4

    iget v0, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2585
    :goto_49
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_6d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- onCdmaCallWaitingReject(): logNumber set to: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", newPresentation value is: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2591
    :cond_6d
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 2593
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v10

    .line 2610
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallArgs;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .line 2619
    :goto_84
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 2621
    if-ne v5, v11, :cond_b0

    .line 2623
    invoke-direct {p0, v12, v6, v7}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 2630
    :goto_8e
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 2634
    :cond_91
    iput-boolean v14, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2636
    :cond_93
    return-void

    .line 2554
    :cond_94
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_d

    .line 2568
    :cond_9d
    const/4 v5, 0x1

    goto :goto_30

    .line 2577
    :cond_9f
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_3d

    :cond_a4
    move v0, v4

    .line 2584
    goto :goto_49

    .line 2614
    :cond_a6
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallArgs;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v9}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    goto :goto_84

    .line 2626
    :cond_b0
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto :goto_8e
.end method

.method private onCustomRingQueryComplete()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1023
    const/4 v1, 0x0

    .line 1024
    .local v1, isQueryExecutionTimeExpired:Z
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1025
    :try_start_5
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_e

    .line 1026
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1027
    const/4 v1, 0x1

    .line 1029
    :cond_e
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_32

    .line 1030
    if-eqz v1, :cond_20

    .line 1033
    const-string v2, "CallNotifier"

    const-string v3, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const v2, 0x112a0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1049
    :cond_20
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_35

    .line 1050
    const-string v2, "CallNotifier"

    const-string v3, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :goto_31
    return-void

    .line 1029
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2

    .line 1061
    :cond_35
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1062
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1068
    :cond_46
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1071
    const/4 v0, 0x0

    .line 1072
    .local v0, isAssistantStarted:Z
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->initCallAssistant()V

    .line 1073
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->isVAssistantOpened()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1074
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->startVAssistant()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1075
    const/4 v0, 0x1

    .line 1079
    :cond_59
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_79

    .line 1080
    if-nez v0, :cond_6c

    .line 1081
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/Ringer;->ring(I)V

    .line 1097
    :cond_6c
    :goto_6c
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_75

    const-string v2, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1098
    :cond_75
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_31

    .line 1084
    :cond_79
    if-nez v0, :cond_6c

    .line 1085
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_6c
.end method

.method private onCustomRingtoneQueryTimeout(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1531
    const-string v0, "CallNotifier"

    const-string v1, "CallerInfo query took too long; look up local fallback cache."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallerInfoCache;->getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;

    move-result-object v0

    .line 1538
    if-eqz v0, :cond_4f

    .line 1539
    iget-boolean v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->sendToVoicemail:Z

    if-eqz v1, :cond_24

    .line 1540
    const-string v0, "send to voicemail flag detected (in fallback cache). hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1541
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1559
    :goto_23
    return-void

    .line 1545
    :cond_24
    iget-object v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 1546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom ringtone found (in fallback cache), setting up ringer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1548
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1558
    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_23

    .line 1555
    :cond_4f
    const-string v0, "Failed to find fallback cache. Use default ringer tone."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_4b
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .registers 21
    .parameter

    .prologue
    .line 1564
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 1565
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Lcom/android/internal/telephony/Connection;

    .line 1566
    if-eqz v12, :cond_311

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: cause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", incoming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1575
    :goto_46
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1577
    const/4 v1, 0x0

    .line 1578
    if-eqz v12, :cond_49c

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_49c

    .line 1579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_auto_retry"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    move v13, v1

    .line 1584
    :goto_6f
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1586
    if-eqz v12, :cond_b2

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b2

    .line 1588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v2, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v3, :cond_31a

    const/4 v1, 0x1

    :goto_a1
    invoke-virtual {v2, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 1594
    const/16 v1, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1595
    const/16 v1, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1616
    :cond_b2
    const/4 v1, -0x1

    .line 1617
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_c3

    .line 1618
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    .line 1621
    :cond_c3
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_31d

    const/4 v2, -0x1

    if-eq v2, v1, :cond_31d

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1627
    :goto_d2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_35a

    .line 1628
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v2

    if-eqz v2, :cond_327

    .line 1631
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_f2

    const-string v1, "cancelCallInProgressNotifications()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1632
    :cond_f2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1654
    :goto_fb
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_10d

    .line 1655
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1656
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1660
    :cond_10d
    if-eqz v12, :cond_141

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 1661
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1662
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 1663
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_13a

    const-string v1, "onDisconnect: this was an OTASP call!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1664
    :cond_13a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->handleOtaspDisconnect()V

    .line 1670
    :cond_141
    const/4 v1, 0x0

    .line 1673
    if-eqz v12, :cond_158

    .line 1674
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 1675
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_38d

    .line 1676
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_157

    const-string v1, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1677
    :cond_157
    const/4 v1, 0x2

    .line 1714
    :cond_158
    :goto_158
    if-nez v1, :cond_17a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_17a

    if-eqz v12, :cond_17a

    .line 1717
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 1718
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v3, :cond_174

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_17a

    .line 1721
    :cond_174
    const/4 v1, 0x5

    .line 1722
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    :cond_17a
    move v14, v1

    .line 1727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1b2

    .line 1730
    if-nez v14, :cond_18c

    .line 1731
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1734
    :cond_18c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1741
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_441

    .line 1745
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_430

    .line 1746
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->dismissCallScreen_DSDA(Lcom/android/internal/telephony/Phone;)V

    .line 1758
    :cond_1b2
    :goto_1b2
    if-eqz v12, :cond_310

    .line 1759
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 1760
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    .line 1761
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v9

    .line 1762
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v16

    .line 1763
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    .line 1764
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v15, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v18

    .line 1768
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_459

    .line 1771
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hw_calllog_type"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_44d

    .line 1773
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_1fc

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    if-ne v0, v1, :cond_44a

    :cond_1fc
    const/4 v1, 0x3

    :goto_1fd
    move v6, v1

    .line 1786
    :goto_1fe
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 1789
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1795
    const/4 v2, 0x2

    if-ne v2, v6, :cond_499

    sget-boolean v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-eqz v2, :cond_499

    .line 1797
    invoke-static {v12}, Lcom/android/phone/ipcallsetting/IPCallUtils;->getLogNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v4

    .line 1798
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_499

    .line 1802
    invoke-static {v12}, Lcom/android/phone/ipcallsetting/IPCallUtils;->removeConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1811
    :goto_21e
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v5

    .line 1813
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_240

    .line 1814
    if-eqz v18, :cond_240

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v1, :cond_240

    .line 1816
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v1, :cond_240

    .line 1817
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v1}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$100(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1826
    :cond_240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1831
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_45d

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45d

    const/4 v1, 0x1

    .line 1836
    :goto_260
    if-eqz v18, :cond_264

    if-eqz v2, :cond_460

    :cond_264
    if-nez v1, :cond_460

    const/4 v1, 0x1

    .line 1840
    :goto_267
    if-eqz v1, :cond_28a

    .line 1844
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_463

    .line 1846
    invoke-static/range {v17 .. v17}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v11

    .line 1862
    new-instance v1, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-direct/range {v1 .. v11}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .line 1871
    :goto_27e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v2, v1}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 1873
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/phone/CallNotifier;->updateFirstUsedDate(J)V

    .line 1878
    :cond_28a
    const/4 v1, 0x3

    if-ne v6, v1, :cond_292

    .line 1882
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7, v8}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1889
    :cond_292
    if-eqz v14, :cond_29e

    .line 1891
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v14}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1903
    :cond_29e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_470

    .line 1908
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_2c6

    .line 1910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v2, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1927
    :cond_2c6
    :goto_2c6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2d6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_30d

    :cond_2d6
    if-nez v18, :cond_30d

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_30d

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_30d

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_30d

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_30d

    .line 1934
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v1, :cond_492

    .line 1935
    const/4 v1, 0x1

    if-ne v13, v1, :cond_48b

    .line 1938
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, v17

    move-object v3, v15

    invoke-static/range {v1 .. v6}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 1940
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1949
    :cond_30d
    :goto_30d
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopVAssistant()V

    .line 1951
    :cond_310
    return-void

    .line 1571
    :cond_311
    const-string v1, "CallNotifier"

    const-string v2, "onDisconnect: null connection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    .line 1590
    :cond_31a
    const/4 v1, 0x0

    goto/16 :goto_a1

    .line 1624
    :cond_31d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    goto/16 :goto_d2

    .line 1634
    :cond_327
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_332

    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1635
    :cond_332
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_351

    .line 1636
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/android/phone/CallNotifier;->stopAndStartRing(Landroid/content/Context;I)V

    goto/16 :goto_fb

    .line 1639
    :cond_351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_fb

    .line 1643
    :cond_35a
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_365

    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1644
    :cond_365
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_384

    .line 1645
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/android/phone/CallNotifier;->stopAndStartRing(Landroid/content/Context;I)V

    goto/16 :goto_fb

    .line 1648
    :cond_384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_fb

    .line 1678
    :cond_38d
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_39f

    .line 1679
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_39c

    const-string v1, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1680
    :cond_39c
    const/4 v1, 0x3

    goto/16 :goto_158

    .line 1681
    :cond_39f
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v3, :cond_3a7

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_3c0

    :cond_3a7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v3

    if-eqz v3, :cond_3c0

    .line 1684
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_3bc

    const-string v1, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1685
    :cond_3bc
    const/16 v1, 0xc

    goto/16 :goto_158

    .line 1686
    :cond_3c0
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_3d2

    .line 1687
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_3cf

    const-string v1, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1688
    :cond_3cf
    const/4 v1, 0x7

    goto/16 :goto_158

    .line 1689
    :cond_3d2
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_3e5

    .line 1690
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_3e1

    const-string v1, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1691
    :cond_3e1
    const/16 v1, 0x8

    goto/16 :goto_158

    .line 1692
    :cond_3e5
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_3f8

    .line 1693
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_3f4

    const-string v1, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1694
    :cond_3f4
    const/16 v1, 0x9

    goto/16 :goto_158

    .line 1695
    :cond_3f8
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_40b

    .line 1696
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_407

    const-string v1, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1697
    :cond_407
    const/16 v1, 0xa

    goto/16 :goto_158

    .line 1698
    :cond_40b
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_41e

    .line 1699
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_41a

    const-string v1, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1700
    :cond_41a
    const/16 v1, 0xe

    goto/16 :goto_158

    .line 1701
    :cond_41e
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_158

    .line 1702
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_42d

    const-string v1, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1703
    :cond_42d
    const/4 v1, 0x5

    goto/16 :goto_158

    .line 1748
    :cond_430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->dismissCallScreen(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_1b2

    .line 1754
    :cond_441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->clearUserActivityTimeout()V

    goto/16 :goto_1b2

    .line 1773
    :cond_44a
    const/4 v1, 0x1

    goto/16 :goto_1fd

    .line 1777
    :cond_44d
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    if-ne v0, v1, :cond_457

    const/4 v1, 0x3

    :goto_454
    move v6, v1

    goto/16 :goto_1fe

    :cond_457
    const/4 v1, 0x1

    goto :goto_454

    .line 1782
    :cond_459
    const/4 v1, 0x2

    move v6, v1

    goto/16 :goto_1fe

    .line 1831
    :cond_45d
    const/4 v1, 0x0

    goto/16 :goto_260

    .line 1836
    :cond_460
    const/4 v1, 0x0

    goto/16 :goto_267

    .line 1866
    :cond_463
    new-instance v1, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-direct/range {v1 .. v10}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    goto/16 :goto_27e

    .line 1920
    :cond_470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-boolean v1, v1, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-eqz v1, :cond_2c6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_2c6

    .line 1921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    goto/16 :goto_2c6

    .line 1942
    :cond_48b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_30d

    .line 1945
    :cond_492
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_30d

    :cond_499
    move-object v4, v1

    goto/16 :goto_21e

    :cond_49c
    move v13, v1

    goto/16 :goto_6f
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter

    .prologue
    .line 2367
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 2369
    if-eqz v0, :cond_32

    .line 2370
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 2371
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfo: displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2372
    :cond_24
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 2375
    const/16 v0, 0x19

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2378
    :cond_32
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .registers 16
    .parameter "r"

    .prologue
    const/16 v13, 0xd

    const/4 v9, 0x1

    const/4 v12, -0x1

    .line 673
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 674
    .local v0, c:Lcom/android/internal/telephony/Connection;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onNewRingingConnection(): state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", conn = { "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " }"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 676
    .local v6, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 679
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_46

    .line 684
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 827
    :cond_45
    :goto_45
    return-void

    .line 688
    :cond_46
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v10

    if-nez v10, :cond_54

    .line 689
    const-string v9, "CallNotifier"

    const-string v10, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 704
    :cond_54
    const/4 v7, -0x1

    .line 705
    .local v7, ringingSubscription:I
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v10, :cond_5d

    .line 706
    invoke-static {v5}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v7

    .line 710
    :cond_5d
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v10, :cond_68

    .line 711
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/phone/PhoneApp;->setmRingingSubscription(I)V

    .line 717
    :cond_68
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v10

    if-nez v10, :cond_81

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v10

    if-nez v10, :cond_81

    .line 724
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v10, :cond_e8

    .line 725
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10, v7}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;I)V

    .line 735
    :cond_81
    :goto_81
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 737
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 769
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v11, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 773
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v10, :cond_f0

    .line 775
    invoke-static {v8, v7}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;I)Z

    move-result v2

    .line 776
    .local v2, isRealIncomingCall:Z
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 779
    .local v1, hasCallOnAlternateSub:Z
    if-eqz v2, :cond_ee

    if-nez v1, :cond_ee

    move v2, v9

    .line 786
    .end local v1           #hasCallOnAlternateSub:Z
    :goto_a6
    if-eqz v2, :cond_f5

    .line 789
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_answer"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 793
    .local v3, mAutoAnswer:I
    invoke-virtual {p0, v13}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 795
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 799
    if-eq v3, v12, :cond_45

    .line 800
    const-string v9, "CallNotifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Will auto-answer in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    div-int/lit16 v11, v3, 0x3e8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " seconds"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-static {p0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 802
    .local v4, message:Landroid/os/Message;
    int-to-long v9, v3

    invoke-virtual {p0, v4, v9, v10}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_45

    .line 727
    .end local v2           #isRealIncomingCall:Z
    .end local v3           #mAutoAnswer:I
    .end local v4           #message:Landroid/os/Message;
    .end local v8           #state:Lcom/android/internal/telephony/Call$State;
    :cond_e8
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_81

    .line 779
    .restart local v1       #hasCallOnAlternateSub:Z
    .restart local v2       #isRealIncomingCall:Z
    .restart local v8       #state:Lcom/android/internal/telephony/Call$State;
    :cond_ee
    const/4 v2, 0x0

    goto :goto_a6

    .line 781
    .end local v1           #hasCallOnAlternateSub:Z
    .end local v2           #isRealIncomingCall:Z
    :cond_f0
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v2

    .restart local v2       #isRealIncomingCall:Z
    goto :goto_a6

    .line 806
    :cond_f5
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v10, :cond_105

    .line 807
    new-instance v10, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v10, p0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 808
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 812
    :cond_105
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_10e

    const-string v9, "- showing incoming call (this is a WAITING call)..."

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 813
    :cond_10e
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto/16 :goto_45
.end method

.method private onPhoneAutoAnswer()V
    .registers 4

    .prologue
    .line 660
    const-string v1, "CallNotifier"

    const-string v2, "Autoanswering ringing call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 662
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_13

    .line 663
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 667
    :goto_12
    return-void

    .line 665
    :cond_13
    const-string v1, "CallNotifier"

    const-string v2, "No ringing call to answer!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x1c

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1206
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 1210
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 1215
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v5, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v1, :cond_194

    move v1, v2

    :goto_1b
    invoke-virtual {v5, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 1221
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_1ab

    .line 1222
    const/4 v1, -0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    if-ne v1, v5, :cond_197

    .line 1224
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1234
    :goto_33
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v7, :cond_6c

    .line 1235
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_62

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_51

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_62

    .line 1238
    :cond_51
    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v5, :cond_5f

    .line 1239
    const/16 v5, 0xb

    .line 1240
    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v6, p0, v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1243
    :cond_5f
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1245
    :cond_62
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 1248
    :cond_6c
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_9f

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v2, :cond_9f

    .line 1249
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_95

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_8e

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_95

    .line 1252
    :cond_8e
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/phone/PhoneApp;->setGsmCallRemoteAnswered(Z)V

    .line 1254
    :cond_95
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    .line 1263
    :cond_9f
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v3}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 1267
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V

    .line 1269
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_115

    .line 1271
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v4, :cond_b8

    .line 1272
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1273
    iput-object v9, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1279
    :cond_b8
    sget-boolean v4, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v4, :cond_1b3

    .line 1286
    invoke-static {v0}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v4

    if-ne v0, v4, :cond_d7

    .line 1288
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;I)V

    .line 1297
    :cond_d7
    :goto_d7
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_ed

    .line 1298
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v4, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1299
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v4, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1308
    :cond_ed
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_f6

    const-string v0, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1314
    :cond_f6
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1332
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_104

    const-string v0, "- posting UPDATE_IN_CALL_NOTIFICATION request..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1334
    :cond_104
    invoke-virtual {p0, v8}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1336
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v8, v4, v5}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1340
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    if-eqz v0, :cond_115

    .line 1341
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    invoke-virtual {v0}, Lcom/android/phone/CallVoiceAsisstant;->informCallAnswered()V

    .line 1347
    :cond_115
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v7, :cond_16f

    .line 1348
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1349
    if-eqz v0, :cond_16f

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 1352
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1353
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v4, :cond_146

    .line 1354
    new-instance v4, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v4, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v4, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 1357
    :cond_146
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v4, :cond_14e

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v4, :cond_1ba

    .line 1358
    :cond_14e
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emergency_tone"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 1361
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v0, :cond_16f

    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v0, :cond_16f

    .line 1363
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v0, :cond_16f

    .line 1364
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$000(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1377
    :cond_16f
    :goto_16f
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v2, :cond_17c

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_193

    .line 1379
    :cond_17c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1380
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_193

    .line 1383
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_193

    .line 1384
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1385
    iput-object v9, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1389
    :cond_193
    return-void

    :cond_194
    move v1, v3

    .line 1215
    goto/16 :goto_1b

    .line 1226
    :cond_197
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    goto/16 :goto_33

    .line 1231
    :cond_1ab
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    goto/16 :goto_33

    .line 1291
    :cond_1b3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_d7

    .line 1367
    :cond_1ba
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_16f

    .line 1368
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v0, :cond_16f

    .line 1369
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v0, :cond_16f

    .line 1370
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$100(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto :goto_16f
.end method

.method private onResendMute()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2799
    sget-boolean v4, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v4, :cond_1d

    .line 2800
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v1

    .line 2801
    .local v1, sub:I
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getMute(I)Z

    move-result v0

    .line 2802
    .local v0, muteState:Z
    if-nez v0, :cond_1b

    :goto_14
    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 2803
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 2811
    .end local v1           #sub:I
    :goto_1a
    return-void

    .restart local v1       #sub:I
    :cond_1b
    move v2, v3

    .line 2802
    goto :goto_14

    .line 2805
    .end local v0           #muteState:Z
    .end local v1           #sub:I
    :cond_1d
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 2806
    .restart local v0       #muteState:Z
    if-nez v0, :cond_2a

    :goto_23
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2807
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_1a

    :cond_2a
    move v2, v3

    .line 2806
    goto :goto_23
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 2772
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2774
    .local v0, playTone:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 2779
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v1, :cond_2b

    .line 2781
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2782
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2790
    :cond_2b
    :goto_2b
    return-void

    .line 2785
    :cond_2c
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_2b

    .line 2786
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2787
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_2b
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter

    .prologue
    .line 2414
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_c

    .line 2415
    const-string v0, "CallNotifier"

    const-string v1, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    :cond_b
    :goto_b
    return-void

    .line 2423
    :cond_c
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_37

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v1

    if-eq v0, v1, :cond_37

    .line 2424
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2429
    :goto_29
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2434
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    goto :goto_b

    .line 2426
    :cond_37
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_29

    .line 2437
    :cond_3e
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 2439
    if-eqz v0, :cond_b

    .line 2440
    iget-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 2442
    if-eqz v1, :cond_b

    .line 2443
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 2444
    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 2445
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 2448
    const/4 v3, 0x2

    if-ne v3, v1, :cond_5b

    .line 2449
    const-string v0, "CallNotifier"

    const-string v1, "uSignalType == 2 may not playTone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2454
    :cond_5b
    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v0

    .line 2458
    new-instance v1, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_b
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 1102
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1104
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_2c

    .line 1109
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_1d

    .line 1110
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    .line 1111
    .local v1, sub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 1115
    .end local v1           #sub:I
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 1116
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_29

    const-string v2, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1117
    :cond_29
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 1119
    :cond_2c
    return-void
.end method

.method private registerForNotifications()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1432
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1433
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1434
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1435
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1436
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1437
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x1a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1438
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1439
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1440
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1441
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1442
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1443
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1444
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1447
    :try_start_55
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/huawei/internal/telephony/CallManagerEx;->registerForSuppServiceNotification(Lcom/android/internal/telephony/CallManager;Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_5d
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_55 .. :try_end_5d} :catch_5e

    .line 1452
    :goto_5d
    return-void

    .line 1448
    :catch_5e
    move-exception v0

    .line 1449
    const-string v0, "registerForNotifications->NoExtAPIException!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_5d
.end method

.method private resetAudioStateAfterDisconnect()V
    .registers 4

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    .line 1960
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1965
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1967
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1968
    return-void
.end method

.method private showIncomingCall()V
    .registers 3

    .prologue
    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIncomingCall()...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1146
    :try_start_1c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "call"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_57

    .line 1150
    :goto_25
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getMMIDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1151
    if-eqz v0, :cond_39

    .line 1152
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_36

    const-string v1, "in showIncomingCall: Trying to hide the ussd dialog"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1153
    :cond_36
    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 1185
    :cond_39
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 1186
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1193
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_4f

    const-string v0, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1194
    :cond_4f
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationAndLaunchIncomingCallUi()V

    .line 1195
    return-void

    .line 1147
    :catch_57
    move-exception v0

    goto :goto_25
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 2665
    if-eqz v0, :cond_55

    .line 2669
    iget-boolean v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v1, :cond_37

    .line 2672
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2677
    iget-object v1, v5, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2678
    iget-object v2, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2679
    iget v0, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_38

    .line 2680
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2687
    :goto_29
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v5, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-wide v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 2695
    :cond_37
    :goto_37
    return-void

    .line 2681
    :cond_38
    iget v0, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v3, :cond_4a

    .line 2682
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 2684
    :cond_4a
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    iget v3, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v5, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    .line 2693
    :cond_55
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .registers 11
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 913
    const/4 v3, 0x0

    .line 914
    .local v3, shouldStartQuery:Z
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 915
    :try_start_6
    iget v7, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v7, :cond_e

    .line 916
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 917
    const/4 v3, 0x1

    .line 919
    :cond_e
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_33

    .line 923
    const/4 v4, -0x1

    .line 924
    .local v4, subscription:I
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 925
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    .line 928
    :cond_22
    if-eqz v3, :cond_7c

    .line 931
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 932
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_36

    .line 1003
    .end local v1           #context:Landroid/content/Context;
    :goto_32
    return-void

    .line 919
    .end local v4           #subscription:I
    :catchall_33
    move-exception v5

    :try_start_34
    monitor-exit v6
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v5

    .line 936
    .restart local v1       #context:Landroid/content/Context;
    .restart local v4       #subscription:I
    :cond_36
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_67

    if-ne v4, v5, :cond_67

    const/16 v2, 0x8

    .line 939
    .local v2, ringtype:I
    :goto_40
    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Lcom/android/phone/CallNotifier;->mSettingUri:Landroid/net/Uri;

    .line 944
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_69

    if-ne v4, v5, :cond_69

    sget-object v5, Lcom/huawei/android/provider/SettingsEx$System;->HUAWEI_RINGTONE2_URI:Landroid/net/Uri;

    :goto_52
    invoke-virtual {v6, v5}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 955
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 960
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v5, :cond_6c

    .line 962
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v8, p0, v5}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_32

    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v2           #ringtype:I
    :cond_67
    move v2, v5

    .line 936
    goto :goto_40

    .line 944
    .restart local v2       #ringtype:I
    :cond_69
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_52

    .line 968
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_6c
    const/16 v5, 0x64

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_32

    .line 978
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #ringtype:I
    :cond_7c
    const v5, 0x112a1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 985
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_95

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 986
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->stopRing()V

    .line 991
    :cond_95
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_ab

    .line 992
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5, v4}, Lcom/android/phone/Ringer;->ring(I)V

    .line 1000
    :goto_9e
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_a7

    const-string v5, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1001
    :cond_a7
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_32

    .line 994
    :cond_ab
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_9e
.end method

.method private startVAssistant()Z
    .registers 3

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    invoke-virtual {v0}, Lcom/android/phone/CallVoiceAsisstant;->initVAssistant()V

    .line 2990
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    invoke-virtual {v0}, Lcom/android/phone/CallVoiceAsisstant;->startVAssistant()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2991
    const/4 v0, 0x0

    .line 2998
    :goto_e
    return v0

    .line 2993
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mVoiceAssistantListener:Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallVoiceAsisstant;->addVoiceAssistantListener(Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;)V

    .line 2997
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 2998
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private stopAndStartRing(Landroid/content/Context;I)V
    .registers 7
    .parameter "c"
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    .line 2911
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2913
    if-nez p2, :cond_2c

    move v0, v1

    .line 2915
    .local v0, altSub:I
    :goto_9
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2916
    invoke-static {p1, v0}, Lcom/android/phone/PhoneUtils;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallNotifier;->mSettingUri:Landroid/net/Uri;

    .line 2920
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-ne v0, v1, :cond_2e

    sget-object v1, Lcom/huawei/android/provider/SettingsEx$System;->HUAWEI_RINGTONE2_URI:Landroid/net/Uri;

    :goto_23
    invoke-virtual {v2, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 2926
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    .line 2928
    :cond_2b
    return-void

    .line 2913
    .end local v0           #altSub:I
    :cond_2c
    const/4 v0, 0x0

    goto :goto_9

    .line 2920
    .restart local v0       #altSub:I
    :cond_2e
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_23
.end method

.method private stopVAssistant()V
    .registers 3

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    if-eqz v0, :cond_13

    .line 3007
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    invoke-virtual {v0}, Lcom/android/phone/CallVoiceAsisstant;->stopVAssistant()V

    .line 3009
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mVoiceAssistantListener:Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallVoiceAsisstant;->removeServiceConnectedListener(Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;)V

    .line 3010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCVAUtils:Lcom/android/phone/CallVoiceAsisstant;

    .line 3013
    :cond_13
    return-void
.end method

.method private updateFirstUsedDate(J)V
    .registers 9
    .parameter

    .prologue
    const-wide/16 v4, 0x258

    .line 3051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChinaTelecom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/CallNotifier;->mIsChinaTelecom:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsFirstUsedSetted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/CallNotifier;->mIsFirstUsedSetted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3052
    sget-boolean v0, Lcom/android/phone/CallNotifier;->mIsChinaTelecom:Z

    if-eqz v0, :cond_34

    sget-boolean v0, Lcom/android/phone/CallNotifier;->mIsFirstUsedSetted:Z

    if-eqz v0, :cond_35

    .line 3084
    :cond_34
    :goto_34
    return-void

    .line 3055
    :cond_35
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_34

    .line 3060
    :try_start_3b
    invoke-static {}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNVWarrantyDate()J

    move-result-wide v0

    .line 3062
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    add-long/2addr v0, v2

    .line 3063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentCallTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3064
    cmp-long v2, v0, v4

    if-lez v2, :cond_84

    .line 3065
    sub-long/2addr v0, v4

    .line 3066
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 3068
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v0, v2, v0

    .line 3069
    invoke-static {v0, v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNVWarrantyDate(J)Z

    move-result v0

    .line 3070
    if-eqz v0, :cond_7e

    .line 3071
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/CallNotifier;->mIsFirstUsedSetted:Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_76} :catch_77

    goto :goto_34

    .line 3081
    :catch_77
    move-exception v0

    .line 3082
    const-string v0, "setNVWarrantyDate exception!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_34

    .line 3073
    :cond_7e
    :try_start_7e
    const-string v0, "setNVWarrantyDate fail, can`t save first used date!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_34

    .line 3076
    :cond_84
    invoke-static {v0, v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNVWarrantyDate(J)Z

    move-result v0

    .line 3077
    if-nez v0, :cond_34

    .line 3078
    const-string v0, "save temp call time fail!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8f} :catch_77

    goto :goto_34
.end method


# virtual methods
.method getIsCdmaRedialCall()Z
    .registers 2

    .prologue
    .line 2656
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    return v0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getVoicePrivacyState()Z
    .registers 2

    .prologue
    .line 2649
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 327
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_1be

    .line 483
    :cond_6
    :goto_6
    return-void

    .line 329
    :sswitch_7
    const-string v3, "RINGING... (new)"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 330
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    goto :goto_6

    .line 339
    :sswitch_14
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 340
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 342
    .local v1, pb:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_51

    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v3, :cond_51

    .line 344
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_3d

    const-string v3, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 348
    :cond_3d
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_4b

    .line 350
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {v1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/Ringer;->ring(I)V

    goto :goto_6

    .line 352
    :cond_4b
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_6

    .line 357
    :cond_51
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "RING before NEW_RING, skipping"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 363
    .end local v1           #pb:Lcom/android/internal/telephony/PhoneBase;
    :sswitch_5b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_6

    .line 367
    :sswitch_63
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_6c

    const-string v3, "DISCONNECT"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 368
    :cond_6c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_6

    .line 372
    :sswitch_74
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto :goto_6

    .line 376
    :sswitch_7c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onCustomRingtoneQueryTimeout(Ljava/lang/String;)V

    goto :goto_6

    .line 380
    :sswitch_84
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    goto/16 :goto_6

    .line 384
    :sswitch_91
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_9a

    const-string v3, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 385
    :cond_9a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_6

    .line 389
    :sswitch_a3
    const-string v3, "CallNotifier"

    const-string v4, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_6

    .line 394
    :sswitch_af
    const-string v3, "CallNotifier"

    const-string v4, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 396
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_6

    .line 400
    :sswitch_bd
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_c6

    const-string v3, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 402
    :cond_c6
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3, v5}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 403
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_6

    .line 407
    :sswitch_d4
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_dd

    const-string v3, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 408
    :cond_dd
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_6

    .line 412
    :sswitch_e6
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_ef

    const-string v3, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 413
    :cond_ef
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_6

    .line 417
    :sswitch_f8
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_101

    const-string v3, "Received Display Info notification done event ..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 418
    :cond_101
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_6

    .line 422
    :sswitch_106
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_10f

    const-string v3, "EVENT_OTA_PROVISION_CHANGE..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 423
    :cond_10f
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneApp;->handleOtaspEvent(Landroid/os/Message;)V

    goto/16 :goto_6

    .line 427
    :sswitch_116
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_11f

    const-string v3, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 428
    :cond_11f
    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v3, :cond_6

    .line 429
    const/4 v2, 0x6

    .line 430
    .local v2, toneToPlay:I
    new-instance v3, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v3, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 431
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 433
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_137

    const-string v3, "- updating notification for VP state..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 434
    :cond_137
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_6

    .line 439
    .end local v2           #toneToPlay:I
    :sswitch_140
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_149

    const-string v3, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 440
    :cond_149
    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v3, :cond_6

    .line 441
    const/4 v2, 0x6

    .line 442
    .restart local v2       #toneToPlay:I
    new-instance v3, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v3, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 443
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 445
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_162

    const-string v3, "- updating notification for VP state..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 446
    :cond_162
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_6

    .line 451
    .end local v2           #toneToPlay:I
    :sswitch_16b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_6

    .line 455
    :sswitch_174
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_6

    .line 459
    :sswitch_179
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_6

    .line 464
    :sswitch_182
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onPhoneAutoAnswer()V

    goto/16 :goto_6

    .line 467
    :sswitch_187
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_190

    const-string v3, "Received Supplementary Notification"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 469
    :cond_190
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 470
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    sput-object v3, Lcom/android/phone/CallNotifier;->suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 471
    sget-object v3, Lcom/android/phone/CallNotifier;->suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->getSuppSvcNotificationText(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, callForwardText:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/CallNotifier;->isHideCallForward:Z

    if-nez v3, :cond_6

    .line 474
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 327
    nop

    :sswitch_data_1be
    .sparse-switch
        0x1 -> :sswitch_5b
        0x2 -> :sswitch_7
        0x3 -> :sswitch_63
        0x4 -> :sswitch_74
        0x5 -> :sswitch_14
        0x6 -> :sswitch_d4
        0x7 -> :sswitch_e6
        0x8 -> :sswitch_91
        0x9 -> :sswitch_116
        0xa -> :sswitch_140
        0xb -> :sswitch_16b
        0xc -> :sswitch_174
        0xd -> :sswitch_182
        0x15 -> :sswitch_84
        0x17 -> :sswitch_af
        0x18 -> :sswitch_bd
        0x19 -> :sswitch_f8
        0x1a -> :sswitch_106
        0x1b -> :sswitch_a3
        0x1c -> :sswitch_179
        0x22 -> :sswitch_187
        0x64 -> :sswitch_7c
    .end sparse-switch
.end method

.method isRinging()Z
    .registers 2

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method listen()V
    .registers 4

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 320
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 323
    return-void
.end method

.method protected onCfiChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    .line 2000
    return-void
.end method

.method protected onMwiChanged(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1975
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_c

    .line 1981
    const-string v0, "CallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    :goto_b
    return-void

    .line 1985
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(Z)V

    goto :goto_b
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 1462
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_1e

    .line 1465
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 1515
    :cond_1d
    :goto_1d
    return-void

    .line 1468
    :cond_1e
    instance-of v1, p2, Lcom/android/phone/CallNotifier;

    if-eqz v1, :cond_1d

    .line 1473
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1476
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1477
    :try_start_2a
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-ne v2, v3, :cond_32

    .line 1478
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1479
    const/4 v0, 0x1

    .line 1481
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_67

    .line 1483
    if-eqz v0, :cond_1d

    .line 1486
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_74

    .line 1487
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_42

    const-string v0, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1489
    :cond_42
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->setSilentHangupFlag()V

    .line 1493
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_6a

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v0

    if-eq v3, v0, :cond_6a

    .line 1494
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1496
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1d

    .line 1481
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v0

    .line 1498
    :cond_6a
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1d

    .line 1506
    :cond_74
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_8a

    .line 1507
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_81

    const-string v0, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1508
    :cond_81
    check-cast p2, Lcom/android/phone/CallNotifier;

    iget-object v0, p2, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1509
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1512
    :cond_8a
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_1d
.end method

.method restartRinger()V
    .registers 4

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2054
    :cond_6
    :goto_6
    return-void

    .line 2033
    :cond_7
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_5c

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v1

    if-eq v0, v1, :cond_5c

    .line 2034
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2043
    :goto_24
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- ringingCall state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2044
    :cond_42
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_6

    .line 2046
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_63

    .line 2047
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->ring(I)V

    goto :goto_6

    .line 2036
    :cond_5c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_24

    .line 2049
    :cond_63
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_6
.end method

.method sendCdmaCallWaitingReject()V
    .registers 2

    .prologue
    .line 2534
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 2535
    return-void
.end method

.method sendMwiChangedDelayed(J)V
    .registers 5
    .parameter "delayMillis"

    .prologue
    .line 1993
    const/16 v1, 0x15

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1994
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1995
    return-void
.end method

.method silenceRinger()V
    .registers 2

    .prologue
    .line 2014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 2016
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2017
    return-void
.end method

.method public startIncallTone()V
    .registers 3

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_11

    .line 2938
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2939
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2941
    :cond_11
    return-void
.end method

.method stopSignalInfoTone()V
    .registers 3

    .prologue
    .line 2471
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2472
    :cond_9
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2473
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1392
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1395
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1396
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1397
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 1398
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1399
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1400
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1401
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1402
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1403
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1404
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1407
    :try_start_43
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p0}, Lcom/huawei/internal/telephony/CallManagerEx;->unregisterForSuppServiceNotification(Lcom/android/internal/telephony/CallManager;Landroid/os/Handler;)V
    :try_end_48
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_43 .. :try_end_48} :catch_63

    .line 1414
    :goto_48
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_51

    .line 1415
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1419
    :cond_51
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1422
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1424
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1425
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1428
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 1429
    return-void

    .line 1408
    :catch_63
    move-exception v0

    .line 1409
    const-string v0, "updateCallNotifierRegistrationsAfterRadioTechnologyChange->NoExtAPIException!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_48
.end method
