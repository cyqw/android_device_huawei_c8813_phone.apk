.class public Landroid/media/voicerecorder/VoiceRecorderFactory;
.super Ljava/lang/Object;
.source "VoiceRecorderFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVoiceRecorder(Lcom/android/internal/telephony/CallManager;Lcom/android/phone/InCallScreen;)Landroid/media/voicerecorder/BaseVoiceRecorder;
    .registers 8
    .parameter "cm"
    .parameter "inCallScreen"

    .prologue
    const/4 v4, 0x1

    .line 75
    new-instance v3, Ljava/io/File;

    const-string v5, "/dev/msm_voicememo"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, voiceFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1b

    move v2, v4

    .line 79
    .local v2, type:I
    :goto_f
    if-nez v2, :cond_1d

    .line 80
    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/TIVoiceRecorder;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 81
    .local v1, ti:Landroid/media/voicerecorder/TIVoiceRecorder;
    invoke-virtual {v1, p1}, Landroid/media/voicerecorder/TIVoiceRecorder;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    move-object v0, v1

    .line 93
    .end local v1           #ti:Landroid/media/voicerecorder/TIVoiceRecorder;
    :goto_1a
    return-object v0

    .line 77
    .end local v2           #type:I
    :cond_1b
    const/4 v2, 0x0

    goto :goto_f

    .line 85
    .restart local v2       #type:I
    :cond_1d
    if-ne v2, v4, :cond_28

    .line 86
    new-instance v0, Landroid/media/voicerecorder/QCVoiceRecorder;

    invoke-direct {v0, p0}, Landroid/media/voicerecorder/QCVoiceRecorder;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 87
    .local v0, qc:Landroid/media/voicerecorder/QCVoiceRecorder;
    invoke-virtual {v0, p1}, Landroid/media/voicerecorder/QCVoiceRecorder;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    goto :goto_1a

    .line 91
    .end local v0           #qc:Landroid/media/voicerecorder/QCVoiceRecorder;
    :cond_28
    new-instance v0, Landroid/media/voicerecorder/QCVoiceRecorder;

    invoke-direct {v0, p0}, Landroid/media/voicerecorder/QCVoiceRecorder;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 92
    .restart local v0       #qc:Landroid/media/voicerecorder/QCVoiceRecorder;
    invoke-virtual {v0, p1}, Landroid/media/voicerecorder/QCVoiceRecorder;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    goto :goto_1a
.end method

.method public static createVoiceRecorder_DSDA(Lcom/android/internal/telephony/CallManager;Lcom/android/phone/InCallScreen_DSDA;ILcom/android/internal/telephony/Phone;)Landroid/media/voicerecorder/BaseVoiceRecorder;
    .registers 10
    .parameter "cm"
    .parameter "inCallScreen"
    .parameter "subscription"
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-interface {p3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 31
    .local v0, phoneType:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_15

    move v3, v4

    .line 33
    .local v3, type:I
    :goto_9
    if-nez v3, :cond_17

    .line 34
    new-instance v2, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;

    invoke-direct {v2, p0, p2}, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;I)V

    .line 35
    .local v2, ti:Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;
    invoke-virtual {v2, p1}, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallScreen_DSDA;)V

    move-object v1, v2

    .line 47
    .end local v2           #ti:Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;
    :goto_14
    return-object v1

    .line 31
    .end local v3           #type:I
    :cond_15
    const/4 v3, 0x0

    goto :goto_9

    .line 39
    .restart local v3       #type:I
    :cond_17
    if-ne v3, v4, :cond_22

    .line 40
    new-instance v1, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 41
    .local v1, qc:Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;
    invoke-virtual {v1, p1}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallScreen_DSDA;)V

    goto :goto_14

    .line 45
    .end local v1           #qc:Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;
    :cond_22
    new-instance v1, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 46
    .restart local v1       #qc:Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;
    invoke-virtual {v1, p1}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallScreen_DSDA;)V

    goto :goto_14
.end method
