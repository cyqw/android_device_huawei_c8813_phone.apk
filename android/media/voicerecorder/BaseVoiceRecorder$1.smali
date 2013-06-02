.class Landroid/media/voicerecorder/BaseVoiceRecorder$1;
.super Landroid/os/Handler;
.source "BaseVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/voicerecorder/BaseVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;


# direct methods
.method constructor <init>(Landroid/media/voicerecorder/BaseVoiceRecorder;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 128
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_56

    .line 160
    :cond_5
    :goto_5
    return-void

    .line 134
    :pswitch_6
    const/4 v2, 0x0

    .line 135
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 137
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-boolean v4, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v4, :cond_3e

    const/4 v4, -0x1

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    if-eq v4, v5, :cond_3e

    .line 138
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 143
    :goto_1e
    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v4, v4, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-nez v4, :cond_38

    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v4, v4, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v4, v5, :cond_38

    const/4 v4, 0x3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 146
    :cond_38
    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v4}, Landroid/media/voicerecorder/BaseVoiceRecorder;->phoneStateChange()V

    goto :goto_5

    .line 140
    :cond_3e
    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v4, v4, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_1e

    .line 152
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :pswitch_47
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 153
    .local v3, r:Landroid/os/AsyncResult;
    iget-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 154
    .local v1, c:Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v4, v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->recordingCallDisconnect(Lcom/android/internal/telephony/Connection;)V

    goto :goto_5

    .line 128
    nop

    :pswitch_data_56
    .packed-switch 0x65
        :pswitch_6
        :pswitch_47
    .end packed-switch
.end method
