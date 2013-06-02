.class Landroid/media/voicerecorder/TIVoiceRecorder$3;
.super Ljava/lang/Object;
.source "TIVoiceRecorder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/voicerecorder/TIVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/voicerecorder/TIVoiceRecorder;


# direct methods
.method constructor <init>(Landroid/media/voicerecorder/TIVoiceRecorder;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Landroid/media/voicerecorder/TIVoiceRecorder$3;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder$3;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    check-cast p2, Lcom/android/phone/SdcardVolumeService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/phone/SdcardVolumeService$LocalBinder;->gainSdcardVolumeService()Lcom/android/phone/SdcardVolumeService;

    move-result-object v1

    iput-object v1, v0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardService:Landroid/app/Service;

    .line 96
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder$3;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    iget-object v0, v0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardService:Landroid/app/Service;

    check-cast v0, Lcom/android/phone/SdcardVolumeService;

    iget-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder$3;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder$3;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecordFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/SdcardVolumeService;->initData(Landroid/media/voicerecorder/BaseVoiceRecorder;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder$3;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardService:Landroid/app/Service;

    .line 102
    return-void
.end method
