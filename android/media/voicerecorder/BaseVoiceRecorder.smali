.class public abstract Landroid/media/voicerecorder/BaseVoiceRecorder;
.super Ljava/lang/Object;
.source "BaseVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;,
        Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;
    }
.end annotation


# instance fields
.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field protected mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

.field protected mHandler:Landroid/os/Handler;

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;

.field protected mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

.field protected mIsCanRecording:Ljava/lang/Boolean;

.field protected mOnVoiceRecorderListener:Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;

.field protected mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

.field protected mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

.field protected mRecordFilePath:Ljava/lang/String;

.field protected mRecordHandler:Landroid/os/Handler;

.field protected mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

.field protected mState:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    .line 102
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mIsCanRecording:Ljava/lang/Boolean;

    .line 124
    new-instance v0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;

    invoke-direct {v0, p0}, Landroid/media/voicerecorder/BaseVoiceRecorder$1;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;)V

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mHandler:Landroid/os/Handler;

    .line 201
    new-instance v0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;

    invoke-direct {v0, p0}, Landroid/media/voicerecorder/BaseVoiceRecorder$2;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;)V

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method


# virtual methods
.method protected changeBgRecordingCall()V
    .registers 8

    .prologue
    const v6, 0x7f0e0296

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 467
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v2, :cond_2c

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v3}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 470
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_5c

    .line 471
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 472
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 473
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 509
    .end local v1           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_2c
    :goto_2c
    return-void

    .line 474
    .restart local v1       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_2d
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/voicerecorder/RecordingCall;->equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 478
    :try_start_3d
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->setupPathFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->start(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_44} :catch_47

    .line 486
    :goto_44
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_2c

    .line 479
    :catch_47
    move-exception v0

    .line 480
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getUiScreen()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_44

    .line 489
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_5c
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 490
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_2c

    .line 491
    :cond_6b
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/voicerecorder/RecordingCall;->equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 495
    :try_start_7d
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->setupPathFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->start(Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/IllegalStateException; {:try_start_7d .. :try_end_84} :catch_87

    .line 503
    :goto_84
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_2c

    .line 496
    :catch_87
    move-exception v0

    .line 497
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getUiScreen()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_84
.end method

.method protected changeFgRecordingCall()V
    .registers 6

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 425
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_51

    .line 426
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 427
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 428
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getForegroundCalls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/voicerecorder/RecordingCall;->equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_33

    .line 429
    invoke-virtual {p0, v4}, Landroid/media/voicerecorder/BaseVoiceRecorder;->stop(I)V

    .line 430
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 431
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    .line 459
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_32
    :goto_32
    return-void

    .line 433
    .restart local v0       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_33
    const-string v1, "BaseVoiceRecorder"

    const-string v2, "This time is status change do not need to stop mPhoneFgRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 436
    :cond_3b
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/voicerecorder/RecordingCall;->equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 437
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->pause()V

    .line 438
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_32

    .line 441
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_51
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 443
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/voicerecorder/RecordingCall;->equalSingleRecordingCall(Lcom/android/internal/telephony/Call;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_77

    .line 445
    invoke-virtual {p0, v4}, Landroid/media/voicerecorder/BaseVoiceRecorder;->stop(I)V

    .line 446
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 447
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_32

    .line 449
    :cond_77
    const-string v1, "BaseVoiceRecorder"

    const-string v2, "This time is status change do not need to stop mPhoneFgRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 452
    :cond_7f
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/voicerecorder/RecordingCall;->equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 453
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->pause()V

    .line 454
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_32
.end method

.method public getRecordFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 297
    iget v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    return v0
.end method

.method protected getUiScreen()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method public isRecording()Z
    .registers 3

    .prologue
    .line 313
    iget v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public abstract pause()V
.end method

.method protected phoneStateChange()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 363
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-nez v1, :cond_a

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v1, :cond_e

    :cond_a
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    if-nez v1, :cond_16

    .line 364
    :cond_e
    const-string v1, "BaseVoiceRecorder"

    const-string v2, "The mPhoneBgRecording  and mPhoneFgRecording is null or mCM is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_15
    return-void

    .line 368
    :cond_16
    const/4 v0, 0x0

    .line 370
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v1}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v1

    if-ne v2, v1, :cond_3d

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v1}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v1

    if-ne v3, v1, :cond_3d

    .line 373
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 374
    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 375
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15

    .line 376
    :cond_3d
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v1, :cond_57

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v1}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v1

    if-ne v2, v1, :cond_57

    .line 377
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 378
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 379
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15

    .line 380
    :cond_57
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v1}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v1

    if-ne v3, v1, :cond_71

    .line 381
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 382
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 383
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15

    .line 385
    :cond_71
    const-string v1, "BaseVoiceRecorder"

    const-string v2, "phoneStateChange file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method protected recordingCallDisconnect(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 395
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v0, :cond_66

    .line 396
    :cond_9
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCall()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 398
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCall()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v2, v0, :cond_52

    .line 399
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->stop(I)V

    .line 404
    :cond_2e
    :goto_2e
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCall()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 406
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCall()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 415
    :cond_51
    :goto_51
    return-void

    .line 401
    :cond_52
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/voicerecorder/RecordingCall;->delRecording(Ljava/lang/String;)V

    goto :goto_2e

    .line 409
    :cond_5c
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/voicerecorder/RecordingCall;->delRecording(Ljava/lang/String;)V

    goto :goto_51

    .line 413
    :cond_66
    const-string v0, "BaseVoiceRecorder"

    const-string v1, "recordingCallDisconnect return[mPhoneFgRecording is null and mPhoneBgRecording is null]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method public registerForNotifications()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 332
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    if-nez v0, :cond_d

    .line 333
    const-string v0, "BaseVoiceRecorder"

    const-string v1, "The call manager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_c
    return-void

    .line 337
    :cond_d
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_c
.end method

.method public abstract release()V
.end method

.method public setOnVoiceRecorderListener(Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 352
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mOnVoiceRecorderListener:Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;

    .line 353
    return-void
.end method

.method protected setupPathFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->setupPathFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract start(Ljava/lang/String;)V
.end method

.method protected startRecordingCall()V
    .registers 3

    .prologue
    .line 516
    new-instance v0, Landroid/media/voicerecorder/RecordingCall;

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, v1}, Landroid/media/voicerecorder/RecordingCall;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 517
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/voicerecorder/RecordingCall;->setRecordingCallState(I)V

    .line 518
    return-void
.end method

.method public abstract stop(I)V
.end method

.method public unregisterForNotifications()V
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    if-nez v0, :cond_5

    .line 326
    :goto_4
    return-void

    .line 324
    :cond_5
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 325
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    goto :goto_4
.end method
