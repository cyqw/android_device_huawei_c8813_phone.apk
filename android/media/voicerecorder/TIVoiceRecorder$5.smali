.class Landroid/media/voicerecorder/TIVoiceRecorder$5;
.super Ljava/lang/Object;
.source "TIVoiceRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/voicerecorder/TIVoiceRecorder;->stop(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

.field final synthetic val$callState:I


# direct methods
.method constructor <init>(Landroid/media/voicerecorder/TIVoiceRecorder;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Landroid/media/voicerecorder/TIVoiceRecorder$5;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    iput p2, p0, Landroid/media/voicerecorder/TIVoiceRecorder$5;->val$callState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 226
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x2712

    iput v1, v0, Landroid/os/Message;->what:I

    .line 228
    iget v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder$5;->val$callState:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 229
    iget-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder$5;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    iget-object v1, v1, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    return-void
.end method
