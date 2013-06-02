.class public Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;
.super Landroid/os/Handler;
.source "BaseVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/voicerecorder/BaseVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;


# direct methods
.method public constructor <init>(Landroid/media/voicerecorder/BaseVoiceRecorder;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 165
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    .line 166
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3a

    .line 195
    :goto_5
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v0, v0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mOnVoiceRecorderListener:Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;

    if-eqz v0, :cond_14

    .line 196
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v0, v0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mOnVoiceRecorderListener:Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;->onVoiceRecorderEvent(I)V

    .line 197
    :cond_14
    return-void

    .line 176
    :sswitch_15
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mIsCanRecording:Ljava/lang/Boolean;

    goto :goto_5

    .line 179
    :sswitch_1f
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mIsCanRecording:Ljava/lang/Boolean;

    .line 180
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->release()V

    goto :goto_5

    .line 189
    :sswitch_2e
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    const/4 v1, 0x3

    iput v1, v0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    .line 190
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->release()V

    goto :goto_5

    .line 173
    nop

    :sswitch_data_3a
    .sparse-switch
        0x5 -> :sswitch_2e
        0x1c -> :sswitch_2e
        0x101 -> :sswitch_2e
        0x102 -> :sswitch_2e
        0x103 -> :sswitch_2e
        0x104 -> :sswitch_2e
        0x121 -> :sswitch_15
        0x122 -> :sswitch_1f
    .end sparse-switch
.end method
