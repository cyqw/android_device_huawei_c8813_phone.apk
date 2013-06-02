.class public Landroid/media/voicerecorder/TIVoiceRecorder;
.super Landroid/media/voicerecorder/BaseVoiceRecorder;
.source "TIVoiceRecorder.java"


# instance fields
.field mRecorder:Landroid/media/MediaRecorder;

.field mRecorderHandler:Landroid/os/Handler;

.field nCtx:Landroid/content/Context;

.field nSdcardService:Landroid/app/Service;

.field private nSdcardServiceConnection:Landroid/content/ServiceConnection;

.field nSdcardVolumeHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 5
    .parameter "cm"

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;-><init>()V

    .line 54
    iput-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 59
    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder$1;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/TIVoiceRecorder$1;-><init>(Landroid/media/voicerecorder/TIVoiceRecorder;)V

    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardVolumeHandler:Landroid/os/Handler;

    .line 71
    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder$2;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/TIVoiceRecorder$2;-><init>(Landroid/media/voicerecorder/TIVoiceRecorder;)V

    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorderHandler:Landroid/os/Handler;

    .line 92
    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder$3;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/TIVoiceRecorder$3;-><init>(Landroid/media/voicerecorder/TIVoiceRecorder;)V

    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardServiceConnection:Landroid/content/ServiceConnection;

    .line 109
    iput-object p1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 116
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_32

    .line 117
    new-instance v1, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    .line 124
    :goto_2a
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 125
    return-void

    .line 118
    :cond_32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 119
    new-instance v1, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    goto :goto_2a

    .line 121
    :cond_40
    iput-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    goto :goto_2a
.end method

.method static synthetic access$000(Landroid/media/voicerecorder/TIVoiceRecorder;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/media/voicerecorder/TIVoiceRecorder;->startRecording(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/voicerecorder/TIVoiceRecorder;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/media/voicerecorder/TIVoiceRecorder;->stopRecording(I)V

    return-void
.end method

.method private setState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 291
    iget v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mState:I

    if-ne p1, v0, :cond_5

    .line 295
    :goto_4
    return-void

    .line 294
    :cond_5
    iput p1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mState:I

    goto :goto_4
.end method

.method private startRecording(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 150
    if-nez p1, :cond_9

    .line 151
    const/16 v2, 0x1c

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/TIVoiceRecorder;->dealEvent(I)V

    .line 216
    :goto_8
    return-void

    .line 154
    :cond_9
    iput-object p1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecordFilePath:Ljava/lang/String;

    .line 156
    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_16

    .line 157
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 165
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Landroid/media/voicerecorder/TIVoiceRecorder;->setAudioSource()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_3e

    .line 173
    :goto_19
    :try_start_19
    invoke-virtual {p0}, Landroid/media/voicerecorder/TIVoiceRecorder;->setOutputFormat()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_4a

    .line 181
    :goto_1c
    :try_start_1c
    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_56

    .line 187
    :goto_22
    :try_start_22
    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_62

    .line 195
    :goto_27
    :try_start_27
    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_6e

    .line 204
    :try_start_2c
    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_31} :catch_7d

    .line 212
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/voicerecorder/TIVoiceRecorder;->setState(I)V

    .line 213
    invoke-virtual {p0}, Landroid/media/voicerecorder/TIVoiceRecorder;->startRecordingCall()V

    .line 215
    const/16 v2, 0x121

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/TIVoiceRecorder;->dealEvent(I)V

    goto :goto_8

    .line 167
    :catch_3e
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->audio source error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4a
    move-exception v0

    .line 176
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->output format error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 182
    .end local v0           #e:Ljava/lang/Exception;
    :catch_56
    move-exception v0

    .line 183
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->audio encoder error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 188
    .end local v0           #e:Ljava/lang/Exception;
    :catch_62
    move-exception v0

    .line 189
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->output file error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    .line 196
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6e
    move-exception v1

    .line 197
    .local v1, exception:Ljava/io/IOException;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->prepare exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/TIVoiceRecorder;->dealEvent(I)V

    .line 199
    iput-object v4, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_8

    .line 206
    .end local v1           #exception:Ljava/io/IOException;
    :catch_7d
    move-exception v1

    .line 207
    .local v1, exception:Ljava/lang/RuntimeException;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->start exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v2, 0x103

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/TIVoiceRecorder;->dealEvent(I)V

    .line 209
    iput-object v4, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto/16 :goto_8
.end method

.method private stopCheckingService()V
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardService:Landroid/app/Service;

    if-eqz v0, :cond_12

    .line 326
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardService:Landroid/app/Service;

    check-cast v0, Lcom/android/phone/SdcardVolumeService;

    invoke-virtual {v0}, Lcom/android/phone/SdcardVolumeService;->cancelTimer()V

    .line 328
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nCtx:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 331
    :cond_12
    return-void
.end method

.method private stopRecording(I)V
    .registers 4
    .parameter "callState"

    .prologue
    const/4 v1, 0x0

    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/voicerecorder/TIVoiceRecorder;->setState(I)V

    .line 236
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_a

    .line 263
    :goto_9
    return-void

    .line 239
    :cond_a
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 240
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 241
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 242
    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 244
    packed-switch p1, :pswitch_data_36

    .line 256
    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 257
    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 261
    :goto_22
    invoke-direct {p0}, Landroid/media/voicerecorder/TIVoiceRecorder;->stopCheckingService()V

    .line 262
    const/16 v0, 0x122

    invoke-virtual {p0, v0}, Landroid/media/voicerecorder/TIVoiceRecorder;->dealEvent(I)V

    goto :goto_9

    .line 246
    :pswitch_2b
    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_22

    .line 249
    :pswitch_2e
    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_22

    .line 252
    :pswitch_31
    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 253
    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_22

    .line 244
    :pswitch_data_36
    .packed-switch 0xa
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public dealEvent(I)V
    .registers 4
    .parameter "eventType"

    .prologue
    .line 301
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 302
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 303
    iget-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-virtual {v1, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    return-void
.end method

.method public gainVolumeHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardVolumeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->pause()V

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/voicerecorder/TIVoiceRecorder;->stop(I)V

    .line 275
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/media/voicerecorder/TIVoiceRecorder;->stopCheckingService()V

    .line 283
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_11

    .line 284
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 285
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 288
    :cond_11
    return-void
.end method

.method protected setAudioSource()V
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 346
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 3
    .parameter "inCallScreen"

    .prologue
    .line 337
    iput-object p1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 338
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nCtx:Landroid/content/Context;

    .line 339
    return-void
.end method

.method protected setOutputFormat()V
    .registers 3

    .prologue
    .line 349
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 350
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 4
    .parameter "path"

    .prologue
    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder$4;

    invoke-direct {v1, p0, p1}, Landroid/media/voicerecorder/TIVoiceRecorder$4;-><init>(Landroid/media/voicerecorder/TIVoiceRecorder;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    :goto_13
    return-void

    .line 144
    :cond_14
    const-string v0, "TIVoiceRecorder"

    const-string v1, "TIVoiceRecorder: can not start with empty path."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public stop(I)V
    .registers 4
    .parameter "callState"

    .prologue
    .line 223
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder$5;

    invoke-direct {v1, p0, p1}, Landroid/media/voicerecorder/TIVoiceRecorder$5;-><init>(Landroid/media/voicerecorder/TIVoiceRecorder;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    return-void
.end method
