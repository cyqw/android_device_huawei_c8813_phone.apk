.class public Landroid/media/voicerecorder/QCVoiceRecorder;
.super Landroid/media/voicerecorder/BaseVoiceRecorder;
.source "QCVoiceRecorder.java"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 182
    :try_start_0
    const-string v1, "voicerecorder"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    .line 186
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_5
    return-void

    .line 183
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_6
    move-exception v0

    .line 184
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "QcVoiceRecorder"

    const-string v2, "WARNING: Could not load libvoicerecorder.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 4
    .parameter "cm"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_13

    .line 63
    new-instance v1, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    .line 69
    :goto_12
    return-void

    .line 64
    :cond_13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 65
    new-instance v1, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    goto :goto_12

    .line 67
    :cond_21
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    goto :goto_12
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;I)V
    .registers 5
    .parameter "VoiceRecorder_ref"
    .parameter "what"

    .prologue
    .line 169
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/voicerecorder/QCVoiceRecorder;

    .line 170
    .local v1, mr:Landroid/media/voicerecorder/QCVoiceRecorder;
    if-nez v1, :cond_b

    .line 178
    :cond_a
    :goto_a
    return-void

    .line 174
    :cond_b
    iget-object v2, v1, Landroid/media/voicerecorder/QCVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    if-eqz v2, :cond_a

    .line 175
    iget-object v2, v1, Landroid/media/voicerecorder/QCVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-virtual {v2, p1}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 176
    .local v0, message:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/voicerecorder/QCVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method public native native_start(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native native_stop()V
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mState:I

    .line 98
    iget-object v0, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->pause()V

    .line 101
    invoke-virtual {p0}, Landroid/media/voicerecorder/QCVoiceRecorder;->native_stop()V

    .line 102
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/media/voicerecorder/QCVoiceRecorder;->native_release()V

    .line 136
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 191
    iput-object p1, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 192
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 4
    .parameter "path"

    .prologue
    .line 78
    iput-object p1, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mRecordFilePath:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mState:I

    .line 81
    invoke-virtual {p0}, Landroid/media/voicerecorder/QCVoiceRecorder;->startRecordingCall()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/voicerecorder/QCVoiceRecorder;->native_setup(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0, p1}, Landroid/media/voicerecorder/QCVoiceRecorder;->native_start(Ljava/lang/String;)V

    .line 91
    :goto_19
    return-void

    .line 89
    :cond_1a
    const-string v0, "QcVoiceRecorder"

    const-string v1, "QCVoiceRecorder: can not start with empty path."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public stop(I)V
    .registers 6
    .parameter "callState"

    .prologue
    const/4 v3, 0x0

    .line 109
    packed-switch p1, :pswitch_data_32

    .line 121
    const-string v0, "QcVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop RecordingCall error,stop all RecordingCall [callState]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object v3, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 123
    iput-object v3, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 126
    :goto_20
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mState:I

    .line 127
    invoke-virtual {p0}, Landroid/media/voicerecorder/QCVoiceRecorder;->native_stop()V

    .line 128
    return-void

    .line 111
    :pswitch_27
    iput-object v3, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_20

    .line 114
    :pswitch_2a
    iput-object v3, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_20

    .line 117
    :pswitch_2d
    iput-object v3, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 118
    iput-object v3, p0, Landroid/media/voicerecorder/QCVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_20

    .line 109
    :pswitch_data_32
    .packed-switch 0xa
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method
