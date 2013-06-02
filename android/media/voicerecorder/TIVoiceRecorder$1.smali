.class Landroid/media/voicerecorder/TIVoiceRecorder$1;
.super Landroid/os/Handler;
.source "TIVoiceRecorder.java"


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
    .line 59
    iput-object p1, p0, Landroid/media/voicerecorder/TIVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 68
    :goto_5
    return-void

    .line 64
    :pswitch_6
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/media/voicerecorder/TIVoiceRecorder;->dealEvent(I)V

    goto :goto_5

    .line 62
    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_6
    .end packed-switch
.end method
