.class public Lcom/android/phone/CallVoiceAsisstant;
.super Ljava/lang/Object;
.source "CallVoiceAsisstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallVoiceAsisstant$1;,
        Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;,
        Lcom/android/phone/CallVoiceAsisstant$VARunnable;,
        Lcom/android/phone/CallVoiceAsisstant$VAHandler;,
        Lcom/android/phone/CallVoiceAsisstant$VACounter;,
        Lcom/android/phone/CallVoiceAsisstant$VAssistantModelEventListener;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallAnswered:Z

.field private mHandler:Lcom/android/phone/CallVoiceAsisstant$VAHandler;

.field private mModelEventListener:Lcom/android/phone/callvasisstantutils/ModelEventListener;

.field private mOrgRingVolume:I

.field private mPhoneApp:Lcom/android/phone/PhoneApp;

.field private mPlayer:Lcom/android/phone/callvasisstantutils/VASoundPlayer;

.field private mSilenceRinger:Z

.field private mVACounter:Lcom/android/phone/CallVoiceAsisstant$VACounter;

.field private mVARunnable:Lcom/android/phone/CallVoiceAsisstant$VARunnable;

.field private mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

.field private mVibratorManager:Lcom/android/phone/callvasisstantutils/VibratorManager;

.field private mVoiceAssistantListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceAssistantOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    .line 62
    iput-object v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mModelEventListener:Lcom/android/phone/callvasisstantutils/ModelEventListener;

    .line 65
    iput-object v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mPhoneApp:Lcom/android/phone/PhoneApp;

    .line 67
    iput-object v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mPlayer:Lcom/android/phone/callvasisstantutils/VASoundPlayer;

    .line 69
    iput-object v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mHandler:Lcom/android/phone/CallVoiceAsisstant$VAHandler;

    .line 71
    iput-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantOpen:Z

    .line 73
    iput-object v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mVACounter:Lcom/android/phone/CallVoiceAsisstant$VACounter;

    .line 75
    iput-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mCallAnswered:Z

    .line 77
    iput-object v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mVibratorManager:Lcom/android/phone/callvasisstantutils/VibratorManager;

    .line 79
    iput-object v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mVARunnable:Lcom/android/phone/CallVoiceAsisstant$VARunnable;

    .line 81
    iput-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mSilenceRinger:Z

    .line 83
    iput-object v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mAudioManager:Landroid/media/AudioManager;

    .line 85
    iput v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mOrgRingVolume:I

    .line 87
    iput-object v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    .line 93
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPhoneApp:Lcom/android/phone/PhoneApp;

    .line 94
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mAudioManager:Landroid/media/AudioManager;

    .line 97
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->initPlayer()V

    .line 98
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->initVibrator()V

    .line 99
    new-instance v0, Lcom/android/phone/CallVoiceAsisstant$VARunnable;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/CallVoiceAsisstant$VARunnable;-><init>(Lcom/android/phone/CallVoiceAsisstant;Lcom/android/phone/CallVoiceAsisstant$1;)V

    iput-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVARunnable:Lcom/android/phone/CallVoiceAsisstant$VARunnable;

    .line 100
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setCallVoiceAsisstantInstance(Lcom/android/phone/CallVoiceAsisstant;)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/android/phone/CallVoiceAsisstant$VACounter;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallVoiceAsisstant$VACounter;-><init>(Lcom/android/phone/CallVoiceAsisstant;JJ)V

    iput-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVACounter:Lcom/android/phone/CallVoiceAsisstant$VACounter;

    .line 103
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->stopPlay()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->broadcastIncomingCall()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallVoiceAsisstant;)Lcom/android/phone/CallVoiceAsisstant$VAHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mHandler:Lcom/android/phone/CallVoiceAsisstant$VAHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->processConnectTimeOut()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->processConnectFailed()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->processAnswerIncomingCall()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->processHangupIncomingCall()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->processRingerEnable()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->processAssistantCancel()V

    return-void
.end method

.method private broadcastIncomingCall()V
    .registers 5

    .prologue
    .line 275
    :try_start_0
    new-instance v1, Lcom/android/phone/callvasisstantutils/VAAsyncTask;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/phone/CallVoiceAsisstant;->mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    invoke-direct {v1, v2, v3}, Lcom/android/phone/callvasisstantutils/VAAsyncTask;-><init>(ILcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V

    .line 277
    .local v1, vAsyTask:Lcom/android/phone/callvasisstantutils/VAAsyncTask;
    sget-object v2, Lcom/android/phone/PhoneUtils;->mIncomingCallName:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/PhoneUtils;->mIncomingCallNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->setContact(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 283
    .end local v1           #vAsyTask:Lcom/android/phone/callvasisstantutils/VAAsyncTask;
    :goto_15
    return-void

    .line 280
    :catch_16
    move-exception v0

    .line 281
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method private initPlayer()V
    .registers 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mOrgRingVolume:I

    .line 325
    new-instance v0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;

    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-direct {v0, v1, v2}, Lcom/android/phone/callvasisstantutils/VASoundPlayer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPlayer:Lcom/android/phone/callvasisstantutils/VASoundPlayer;

    .line 327
    return-void
.end method

.method private initVibrator()V
    .registers 3

    .prologue
    .line 109
    new-instance v0, Lcom/android/phone/callvasisstantutils/VibratorManager;

    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/callvasisstantutils/VibratorManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVibratorManager:Lcom/android/phone/callvasisstantutils/VibratorManager;

    .line 110
    return-void
.end method

.method private initVoiceService()V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    .line 219
    new-instance v0, Lcom/android/phone/CallVoiceAsisstant$VAssistantModelEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallVoiceAsisstant$VAssistantModelEventListener;-><init>(Lcom/android/phone/CallVoiceAsisstant;Lcom/android/phone/CallVoiceAsisstant$1;)V

    iput-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mModelEventListener:Lcom/android/phone/callvasisstantutils/ModelEventListener;

    .line 221
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mModelEventListener:Lcom/android/phone/callvasisstantutils/ModelEventListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->addModelEventListener(Lcom/android/phone/callvasisstantutils/ModelEventListener;)V

    .line 222
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVACounter:Lcom/android/phone/CallVoiceAsisstant$VACounter;

    invoke-virtual {v0, v1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->addServiceConnectedListener(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ServiceConnectedListener;)V

    .line 223
    return-void
.end method

.method private isAssistantServiceRunning(Landroid/content/Context;)Z
    .registers 7
    .parameter "context"

    .prologue
    .line 386
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 388
    .local v1, manager:Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 390
    .local v2, service:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.huawei.ziri.service.ModelService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 392
    const-string v3, "CallVoiceAsisstant"

    const-string v4, "isAssistantServiceRunning() return true "

    invoke-static {v3, v4}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v3, 0x1

    .line 396
    .end local v2           #service:Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_35
    return v3

    :cond_36
    const/4 v3, 0x0

    goto :goto_35
.end method

.method private notifyIncomingCallAnswered()V
    .registers 5

    .prologue
    .line 262
    :try_start_0
    new-instance v1, Lcom/android/phone/callvasisstantutils/VAAsyncTask;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/phone/CallVoiceAsisstant;->mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    invoke-direct {v1, v2, v3}, Lcom/android/phone/callvasisstantutils/VAAsyncTask;-><init>(ILcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V

    .line 264
    .local v1, vAsyTask:Lcom/android/phone/callvasisstantutils/VAAsyncTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/callvasisstantutils/VAAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 268
    .end local v1           #vAsyTask:Lcom/android/phone/callvasisstantutils/VAAsyncTask;
    :goto_e
    return-void

    .line 265
    :catch_f
    move-exception v0

    .line 266
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private notifyIncomingCallEnd()V
    .registers 3

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    invoke-virtual {v1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->informIncomingCallEnd()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 255
    :goto_5
    return-void

    .line 252
    :catch_6
    move-exception v0

    .line 253
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method private processAnswerIncomingCall()V
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPhoneApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 299
    invoke-virtual {p0}, Lcom/android/phone/CallVoiceAsisstant;->informCallAnswered()V

    .line 300
    return-void
.end method

.method private processAssistantCancel()V
    .registers 3

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 314
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 315
    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;

    invoke-interface {v1}, Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;->notifyVAssistantCanceled()V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 318
    .end local v0           #i:I
    :cond_1b
    return-void
.end method

.method private processConnectFailed()V
    .registers 4

    .prologue
    .line 454
    const-string v1, "CallVoiceAsisstant"

    const-string v2, "processConnectFailed ...... "

    invoke-static {v1, v2}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_22

    .line 456
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 457
    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;

    invoke-interface {v1}, Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;->notifyServiceDisconnected()V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 460
    .end local v0           #i:I
    :cond_22
    return-void
.end method

.method private processConnectTimeOut()V
    .registers 1

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->processConnectFailed()V

    .line 450
    return-void
.end method

.method private processHangupIncomingCall()V
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPhoneApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 307
    return-void
.end method

.method private processRingerEnable()V
    .registers 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->resumePlay()V

    .line 291
    return-void
.end method

.method private queryIsVoiceNotify(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 372
    if-nez p1, :cond_9

    .line 373
    const-string v1, "CallVoiceAsisstant"

    const-string v2, "queryIsVoiceNotify error: mContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_9
    invoke-static {p1}, Lcom/huawei/ziri/params/VASettingsProvider;->isVoiceCallNotify(Landroid/content/Context;)Z

    move-result v0

    .line 376
    .local v0, isNotify:Z
    return v0
.end method

.method private releasePlayer()V
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVibratorManager:Lcom/android/phone/callvasisstantutils/VibratorManager;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VibratorManager;->stopVibrator()V

    .line 354
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPlayer:Lcom/android/phone/callvasisstantutils/VASoundPlayer;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->release()V

    .line 355
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mHandler:Lcom/android/phone/CallVoiceAsisstant$VAHandler;

    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVARunnable:Lcom/android/phone/CallVoiceAsisstant$VARunnable;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method private resumePlay()V
    .registers 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->startPlay()V

    .line 363
    return-void
.end method

.method private startPlay()V
    .registers 5

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mSilenceRinger:Z

    if-nez v0, :cond_9

    .line 335
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVibratorManager:Lcom/android/phone/callvasisstantutils/VibratorManager;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VibratorManager;->startVibrator()V

    .line 337
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPlayer:Lcom/android/phone/callvasisstantutils/VASoundPlayer;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->startPlay()V

    .line 338
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mHandler:Lcom/android/phone/CallVoiceAsisstant$VAHandler;

    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVARunnable:Lcom/android/phone/CallVoiceAsisstant$VARunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    return-void
.end method

.method private startVoiceService()Z
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    if-eqz v0, :cond_b

    .line 232
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->bindService()Z

    move-result v0

    .line 234
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private stopPlay()V
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVibratorManager:Lcom/android/phone/callvasisstantutils/VibratorManager;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VibratorManager;->stopVibrator()V

    .line 346
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPlayer:Lcom/android/phone/callvasisstantutils/VASoundPlayer;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->stopPlay()V

    .line 347
    return-void
.end method

.method private stopVoiceService()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVAServiceManager:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->stopVoiceService()V

    .line 244
    :cond_9
    return-void
.end method


# virtual methods
.method public addVoiceAssistantListener(Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;)V
    .registers 3
    .parameter "tVoiceAssistantListener"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 576
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_9
    return-void
.end method

.method public informCallAnswered()V
    .registers 3

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mCallAnswered:Z

    if-nez v0, :cond_1b

    .line 167
    iget-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantOpen:Z

    if-eqz v0, :cond_1b

    .line 168
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->stopPlay()V

    .line 169
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mHandler:Lcom/android/phone/CallVoiceAsisstant$VAHandler;

    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVARunnable:Lcom/android/phone/CallVoiceAsisstant$VARunnable;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->notifyIncomingCallAnswered()V

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/CallVoiceAsisstant;->resumeRinger()V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mCallAnswered:Z

    .line 175
    :cond_1b
    return-void
.end method

.method public initVAssistant()V
    .registers 3

    .prologue
    .line 131
    new-instance v0, Lcom/android/phone/CallVoiceAsisstant$VAHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallVoiceAsisstant$VAHandler;-><init>(Lcom/android/phone/CallVoiceAsisstant;Lcom/android/phone/CallVoiceAsisstant$1;)V

    iput-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mHandler:Lcom/android/phone/CallVoiceAsisstant$VAHandler;

    .line 132
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->initVoiceService()V

    .line 133
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantOpen:Z

    return v0
.end method

.method public isVoiceAssistantOpen()Z
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallVoiceAsisstant;->isAssistantServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 120
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallVoiceAsisstant;->queryIsVoiceNotify(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantOpen:Z

    .line 122
    :cond_18
    const-string v0, "CallVoiceAsisstant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoiceAssistantOpen() mVoiceAssistantOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantOpen:Z

    return v0
.end method

.method public removeServiceConnectedListener(Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;)V
    .registers 3
    .parameter "tVoiceAssistantListener"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 588
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    :cond_9
    return-void
.end method

.method public resumeRinger()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_28

    .line 191
    const-string v0, "CallVoiceAsisstant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeRinger() mOrgRingVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mOrgRingVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/phone/CallVoiceAsisstant;->mOrgRingVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 195
    :cond_28
    iput-boolean v3, p0, Lcom/android/phone/CallVoiceAsisstant;->mSilenceRinger:Z

    .line 196
    return-void
.end method

.method public silenceRinger()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantOpen:Z

    if-eqz v0, :cond_23

    .line 203
    const-string v0, "CallVoiceAsisstant"

    const-string v1, "silenceRinger() 1 ... "

    invoke-static {v0, v1}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_17

    .line 205
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 207
    :cond_17
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVibratorManager:Lcom/android/phone/callvasisstantutils/VibratorManager;

    if-eqz v0, :cond_20

    .line 208
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mVibratorManager:Lcom/android/phone/callvasisstantutils/VibratorManager;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VibratorManager;->stopVibrator()V

    .line 210
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallVoiceAsisstant;->mSilenceRinger:Z

    .line 212
    :cond_23
    return-void
.end method

.method public startVAssistant()Z
    .registers 2

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->startVoiceService()Z

    move-result v0

    return v0
.end method

.method public stopVAssistant()V
    .registers 4

    .prologue
    .line 148
    iget-boolean v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantOpen:Z

    if-eqz v1, :cond_13

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallVoiceAsisstant;->mVoiceAssistantOpen:Z

    .line 151
    :try_start_7
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->notifyIncomingCallEnd()V

    .line 152
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->releasePlayer()V

    .line 153
    invoke-direct {p0}, Lcom/android/phone/CallVoiceAsisstant;->stopVoiceService()V

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/CallVoiceAsisstant;->resumeRinger()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    .line 160
    :cond_13
    :goto_13
    return-void

    .line 155
    :catch_14
    move-exception v0

    .line 156
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CallVoiceAsisstant"

    const-string v2, "stopVAssistant Exception:"

    invoke-static {v1, v2}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method
