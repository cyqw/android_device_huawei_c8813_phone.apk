.class Landroid/media/voicerecorder/BaseVoiceRecorder$2;
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
    .line 201
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0x12c

    const/16 v4, 0x10

    const/4 v3, 0x3

    .line 204
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, message:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_108

    .line 266
    :cond_e
    :goto_e
    return-void

    .line 207
    :pswitch_f
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v2, :cond_72

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v2}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v2

    if-ne v3, v2, :cond_72

    .line 208
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    .line 209
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->changeFgRecordingCall()V

    .line 212
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_55

    .line 213
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v1

    .line 214
    .local v1, sub:I
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-nez v2, :cond_e

    .line 215
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_e

    .line 218
    .end local v1           #sub:I
    :cond_55
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-nez v2, :cond_e

    .line 219
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_e

    .line 225
    :cond_72
    const-string v2, "BaseVoiceRecorder"

    const-string v3, "mPhoneFgRecording is null or mPhoneFgRecordingState is not RECORDING"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 229
    :pswitch_7a
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->changeBgRecordingCall()V

    goto :goto_e

    .line 232
    :pswitch_80
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v2, :cond_a8

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v2}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v2

    if-ne v3, v2, :cond_a8

    .line 233
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    .line 234
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->changeFgRecordingCall()V

    .line 235
    iput v4, v0, Landroid/os/Message;->what:I

    .line 236
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_e

    .line 238
    :cond_a8
    const-string v2, "BaseVoiceRecorder"

    const-string v3, "mPhoneFgRecording is null or mPhoneFgRecordingState is not RECORDING"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 242
    :pswitch_b1
    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mIsCanRecording:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v2, v3, :cond_fd

    .line 243
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->changeBgRecordingCall()V

    .line 246
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_e5

    .line 247
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v1

    .line 248
    .restart local v1       #sub:I
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 249
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto/16 :goto_e

    .line 252
    .end local v1           #sub:I
    :cond_e5
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 253
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto/16 :goto_e

    .line 259
    :cond_fd
    iput v4, v0, Landroid/os/Message;->what:I

    .line 260
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_e

    .line 205
    :pswitch_data_108
    .packed-switch 0xd
        :pswitch_f
        :pswitch_7a
        :pswitch_80
        :pswitch_b1
    .end packed-switch
.end method
