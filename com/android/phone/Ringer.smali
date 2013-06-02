.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final isRingtoneAscending:Z

.field private static sInstance:Lcom/android/phone/Ringer;


# instance fields
.field mContext:Landroid/content/Context;

.field volatile mContinueVibrating:Z

.field mCustomRingtoneUri:Landroid/net/Uri;

.field private mDoAscending:Z

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field mPowerManager:Landroid/os/IPowerManager;

.field private mPreSetVolume:I

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field private mRingingSubscription:I

.field mRingtone:Landroid/media/Ringtone;

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 58
    sput-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    .line 97
    const-string v0, "ro.config.hw_ascend_ringtone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/Ringer;->isRingtoneAscending:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 81
    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 82
    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 85
    iput v1, p0, Lcom/android/phone/Ringer;->mRingingSubscription:I

    .line 95
    iput v1, p0, Lcom/android/phone/Ringer;->mPreSetVolume:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/Ringer;->mDoAscending:Z

    .line 118
    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 119
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    .line 123
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    .line 125
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/phone/Ringer;->isRingtoneAscending:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/Ringer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/phone/Ringer;->mDoAscending:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/Ringer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/phone/Ringer;->mDoAscending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/Ringer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/phone/Ringer;->mPreSetVolume:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/Ringer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/phone/Ringer;->mPreSetVolume:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/Ringer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/Ringer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/phone/Ringer;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method static synthetic access$600()Z
    .registers 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/Ringer;
    .registers 5
    .parameter

    .prologue
    .line 106
    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 107
    :try_start_3
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_12

    .line 108
    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    .line 112
    :goto_e
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    .line 110
    :cond_12
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 113
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private isRingtonePlaying()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 160
    monitor-enter p0

    .line 161
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_e
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1b
    :goto_1b
    monitor-exit p0

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b

    .line 163
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private isVibrating()Z
    .registers 2

    .prologue
    .line 172
    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 174
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 506
    const-string v0, "Ringer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void
.end method

.method private makeLooper()V
    .registers 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_1a

    .line 366
    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 367
    new-instance v0, Lcom/android/phone/Ringer$1;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 490
    :cond_1a
    return-void
.end method

.method private ringInternal(I)V
    .registers 9
    .parameter "subscription"

    .prologue
    const-wide/16 v4, 0x0

    .line 194
    monitor-enter p0

    .line 196
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 197
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x1

    const/16 v3, 0xff

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_77
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_55

    .line 205
    :goto_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v1, :cond_2f

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 207
    new-instance v1, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 208
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    .line 210
    :cond_2f
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 213
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_57

    .line 214
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_49

    const-string v1, "skipping ring because volume is zero"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 215
    :cond_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_15 .. :try_end_4a} :catchall_77

    .line 242
    :goto_4a
    return-void

    .line 199
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x1

    const v3, 0xffffff

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_77
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_54} :catch_55

    goto :goto_15

    .line 201
    :catch_55
    move-exception v1

    goto :goto_15

    .line 218
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_57
    :try_start_57
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_60

    const/4 v1, -0x1

    if-eq p1, v1, :cond_60

    .line 219
    iput p1, p0, Lcom/android/phone/Ringer;->mRingingSubscription:I

    .line 221
    :cond_60
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    .line 222
    iget-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_7a

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 224
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 241
    :goto_75
    monitor-exit p0

    goto :goto_4a

    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catchall_77
    move-exception v1

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_57 .. :try_end_79} :catchall_77

    throw v1

    .line 229
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_7a
    :try_start_7a
    iget-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_8c

    .line 232
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_75

    .line 238
    :cond_8c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_92
    .catchall {:try_start_7a .. :try_end_92} :catchall_77

    goto :goto_75
.end method


# virtual methods
.method isRinging()Z
    .registers 2

    .prologue
    .line 149
    monitor-enter p0

    .line 150
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_d
    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 151
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method ring()V
    .registers 2

    .prologue
    .line 188
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/phone/Ringer;->ringInternal(I)V

    .line 190
    return-void
.end method

.method ring(I)V
    .registers 2
    .parameter "subscription"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer;->ringInternal(I)V

    .line 181
    return-void
.end method

.method public seekTo(I)V
    .registers 9
    .parameter "positon"

    .prologue
    .line 495
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "seekTo"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 496
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 497
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 503
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_27
    return-void

    .line 498
    :catch_28
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Ringer"

    const-string v3, "method not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 359
    if-eqz p1, :cond_4

    .line 360
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 362
    :cond_4
    return-void
.end method

.method shouldVibrate()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 249
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 250
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 251
    .local v1, ringerMode:I
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 252
    if-eqz v1, :cond_1b

    .line 254
    :cond_1a
    :goto_1a
    return v2

    :cond_1b
    move v2, v3

    .line 252
    goto :goto_1a

    .line 254
    :cond_1d
    if-eq v1, v2, :cond_1a

    move v2, v3

    goto :goto_1a
.end method

.method stopRing()V
    .registers 5

    .prologue
    .line 273
    monitor-enter p0

    .line 276
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_58
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_5b

    .line 282
    :goto_8
    :try_start_8
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_f

    .line 283
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/Ringer;->mRingingSubscription:I

    .line 286
    :cond_f
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4e

    .line 287
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 288
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 289
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 292
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 294
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 295
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 296
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 301
    .end local v0           #msg:Landroid/os/Message;
    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v1, :cond_47

    .line 302
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 303
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 306
    :cond_47
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 307
    monitor-exit p0

    .line 308
    return-void

    .line 298
    :cond_4e
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_3d

    const-string v1, "- stopRing: null mRingHandler!"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    goto :goto_3d

    .line 307
    :catchall_58
    move-exception v1

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_58

    throw v1

    .line 277
    :catch_5b
    move-exception v1

    goto :goto_8
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "phone"

    .prologue
    .line 135
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 136
    return-void
.end method
