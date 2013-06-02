.class public Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;
.super Landroid/media/voicerecorder/QCVoiceRecorder;
.source "QCVoiceRecorder_DSDA.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 2
    .parameter "cm"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/media/voicerecorder/QCVoiceRecorder;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 17
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
    .line 24
    iget-object v0, p0, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 20
    iput-object p1, p0, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 21
    return-void
.end method

.method protected setupPathFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->setupPathFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
