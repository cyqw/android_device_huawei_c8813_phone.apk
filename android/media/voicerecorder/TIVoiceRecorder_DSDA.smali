.class public Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;
.super Landroid/media/voicerecorder/TIVoiceRecorder;
.source "TIVoiceRecorder_DSDA.java"


# instance fields
.field private mSubscription:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 3
    .parameter "cm"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/media/voicerecorder/TIVoiceRecorder;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mSubscription:I

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallManager;I)V
    .registers 4
    .parameter "cm"
    .parameter "subscription"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/media/voicerecorder/TIVoiceRecorder;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mSubscription:I

    .line 23
    iput p2, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mSubscription:I

    .line 24
    return-void
.end method


# virtual methods
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
    .line 36
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method protected setAudioSource()V
    .registers 3

    .prologue
    .line 51
    iget v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mSubscription:I

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mSubscription:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 52
    :cond_9
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 56
    :goto_f
    return-void

    .line 54
    :cond_10
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_f
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 32
    iput-object p1, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 33
    return-void
.end method

.method protected setOutputFormat()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 65
    iget v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mSubscription:I

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mSubscription:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 66
    :cond_a
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 70
    :goto_f
    return-void

    .line 68
    :cond_10
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto :goto_f
.end method

.method protected setupPathFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->setupPathFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
