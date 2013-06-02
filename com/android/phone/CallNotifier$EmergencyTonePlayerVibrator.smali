.class Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;
.super Ljava/lang/Object;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyTonePlayerVibrator"
.end annotation


# instance fields
.field private final EMG_VIBRATE_LENGTH:I

.field private final EMG_VIBRATE_PAUSE:I

.field private mEmgVibrator:Landroid/os/Vibrator;

.field private mInCallVolume:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mVibratePattern:[J

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallNotifier;)V
    .registers 3
    .parameter

    .prologue
    const/16 v0, 0x3e8

    .line 2717
    iput-object p1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2701
    iput v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->EMG_VIBRATE_LENGTH:I

    .line 2702
    iput v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->EMG_VIBRATE_PAUSE:I

    .line 2703
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mVibratePattern:[J

    .line 2710
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/Vibrator;

    .line 2718
    return-void

    .line 2703
    nop

    :array_1c
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 2700
    invoke-direct {p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 2700
    invoke-direct {p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V

    return-void
.end method

.method private start()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2725
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 2727
    .local v0, ringerMode:I
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)I

    move-result v1

    if-ne v1, v5, :cond_57

    if-ne v0, v4, :cond_57

    .line 2729
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "EmergencyTonePlayerVibrator.start(): emergency tone..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2730
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, v3, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 2732
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_56

    .line 2733
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mInCallVolume:I

    .line 2734
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2737
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2738
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v1, v5}, Lcom/android/phone/CallNotifier;->access$1002(Lcom/android/phone/CallNotifier;I)I

    .line 2748
    :cond_56
    :goto_56
    return-void

    .line 2740
    :cond_57
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)I

    move-result v1

    if-ne v1, v4, :cond_56

    .line 2741
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "EmergencyTonePlayerVibrator.start(): emergency vibrate..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2743
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_56

    .line 2744
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mVibratePattern:[J

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 2745
    iget-object v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v1, v4}, Lcom/android/phone/CallNotifier;->access$1002(Lcom/android/phone/CallNotifier;I)I

    goto :goto_56
.end method

.method private stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2756
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_29

    .line 2758
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2759
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 2760
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mInCallVolume:I

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2767
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v0, v2}, Lcom/android/phone/CallNotifier;->access$1002(Lcom/android/phone/CallNotifier;I)I

    .line 2768
    return-void

    .line 2763
    :cond_29
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_23

    .line 2765
    iget-object v0, p0, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->mEmgVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_23
.end method
