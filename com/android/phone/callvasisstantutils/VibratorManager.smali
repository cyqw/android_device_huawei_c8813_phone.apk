.class public Lcom/android/phone/callvasisstantutils/VibratorManager;
.super Ljava/lang/Object;
.source "VibratorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callvasisstantutils/VibratorManager$1;,
        Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContinueVibrating:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorThread:Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mVibrator:Landroid/os/Vibrator;

    .line 45
    iput-object p1, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mVibrator:Landroid/os/Vibrator;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callvasisstantutils/VibratorManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mContinueVibrating:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/callvasisstantutils/VibratorManager;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method


# virtual methods
.method shouldVibrate()Z
    .registers 4

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 67
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    return v1
.end method

.method public startVibrator()V
    .registers 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/phone/callvasisstantutils/VibratorManager;->shouldVibrate()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mVibratorThread:Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;

    if-nez v0, :cond_1a

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mContinueVibrating:Z

    .line 52
    new-instance v0, Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;-><init>(Lcom/android/phone/callvasisstantutils/VibratorManager;Lcom/android/phone/callvasisstantutils/VibratorManager$1;)V

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mVibratorThread:Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;

    .line 53
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mVibratorThread:Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;->start()V

    .line 55
    :cond_1a
    return-void
.end method

.method public stopVibrator()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mVibratorThread:Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;

    if-eqz v0, :cond_a

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mContinueVibrating:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mVibratorThread:Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;

    .line 62
    :cond_a
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 63
    return-void
.end method
