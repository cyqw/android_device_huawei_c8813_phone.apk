.class public Lcom/android/phone/callvasisstantutils/VASoundPlayer;
.super Ljava/lang/Object;
.source "VASoundPlayer.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadCompleted:Z

.field private mRingResId:I

.field private mSelfRingSound:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundStreamId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "ringResId"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 35
    iput-object v1, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mContext:Landroid/content/Context;

    .line 38
    iput v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mRingResId:I

    .line 40
    iput v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSelfRingSound:I

    .line 42
    iput v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundStreamId:I

    .line 44
    iput-boolean v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mLoadCompleted:Z

    .line 52
    iput-object p1, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mContext:Landroid/content/Context;

    .line 53
    iput p2, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mRingResId:I

    .line 54
    invoke-virtual {p0}, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->initSoundPool()V

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/callvasisstantutils/VASoundPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mLoadCompleted:Z

    return p1
.end method


# virtual methods
.method initSoundPool()V
    .registers 5

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_27

    .line 63
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 64
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mRingResId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSelfRingSound:I

    .line 65
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/android/phone/callvasisstantutils/VASoundPlayer$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callvasisstantutils/VASoundPlayer$1;-><init>(Lcom/android/phone/callvasisstantutils/VASoundPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 72
    :cond_27
    monitor-exit p0

    .line 73
    return-void

    .line 72
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 123
    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_d

    .line 125
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 128
    :cond_d
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public startPlay()V
    .registers 9

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_e

    .line 81
    const-string v0, "VASoundPlayer"

    const-string v1, "startPlay() mSoundPool == null "

    invoke-static {v0, v1}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    monitor-exit p0

    .line 94
    :goto_d
    return-void

    .line 84
    :cond_e
    const/4 v7, 0x0

    .line 85
    .local v7, counter:I
    :goto_f
    iget-boolean v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mLoadCompleted:Z

    if-nez v0, :cond_16

    .line 86
    const/4 v0, 0x5

    if-le v7, v0, :cond_2d

    .line 92
    :cond_16
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSelfRingSound:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundStreamId:I

    .line 93
    monitor-exit p0

    goto :goto_d

    .end local v7           #counter:I
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0

    .line 89
    .restart local v7       #counter:I
    :cond_2d
    const-wide/16 v0, 0x64

    :try_start_2f
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2a

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_f
.end method

.method public stopPlay()V
    .registers 4

    .prologue
    .line 111
    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_26

    .line 113
    const-string v0, "SPPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlaySound() soundStreamId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundStreamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/phone/callvasisstantutils/VASoundPlayer;->mSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 116
    :cond_26
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method
