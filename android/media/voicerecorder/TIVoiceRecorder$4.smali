.class Landroid/media/voicerecorder/TIVoiceRecorder$4;
.super Ljava/lang/Object;
.source "TIVoiceRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/voicerecorder/TIVoiceRecorder;->start(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/voicerecorder/TIVoiceRecorder;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Landroid/media/voicerecorder/TIVoiceRecorder$4;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    iput-object p2, p0, Landroid/media/voicerecorder/TIVoiceRecorder$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x2711

    iput v1, v0, Landroid/os/Message;->what:I

    .line 139
    iget-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder$4;->val$path:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder$4;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    iget-object v1, v1, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method
