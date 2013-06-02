.class public Lcom/android/phone/SdcardVolumeService;
.super Landroid/app/Service;
.source "SdcardVolumeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SdcardVolumeService$LocalBinder;
    }
.end annotation


# instance fields
.field final nBinder:Landroid/os/IBinder;

.field nStoragePath:Ljava/lang/String;

.field nTimer:Ljava/util/Timer;

.field nVoiceRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/android/phone/SdcardVolumeService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/SdcardVolumeService$LocalBinder;-><init>(Lcom/android/phone/SdcardVolumeService;)V

    iput-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nBinder:Landroid/os/IBinder;

    .line 38
    return-void
.end method

.method private checkSdcardVolume()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nStoragePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/SdcardVolumeService;->nStoragePath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, storagePath:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 73
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 75
    .local v6, fs:Landroid/os/StatFs;
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/phone/SdcardVolumeService$1;

    invoke-direct {v1, p0, v6}, Lcom/android/phone/SdcardVolumeService$1;-><init>(Lcom/android/phone/SdcardVolumeService;Landroid/os/StatFs;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 88
    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nTimer:Ljava/util/Timer;

    if-eqz v0, :cond_e

    .line 95
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 96
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 98
    :cond_e
    return-void
.end method

.method public initData(Landroid/media/voicerecorder/BaseVoiceRecorder;Ljava/lang/String;)V
    .registers 3
    .parameter "recorder"
    .parameter "storagePath"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/phone/SdcardVolumeService;->nVoiceRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    .line 106
    iput-object p2, p0, Lcom/android/phone/SdcardVolumeService;->nStoragePath:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nTimer:Ljava/util/Timer;

    .line 47
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 57
    const-string v0, "SdcardVolumeService"

    const-string v1, "SdcardVolumeService#onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/SdcardVolumeService;->checkSdcardVolume()V

    .line 52
    const/4 v0, 0x2

    return v0
.end method
