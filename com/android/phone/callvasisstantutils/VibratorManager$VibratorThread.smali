.class Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;
.super Ljava/lang/Thread;
.source "VibratorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callvasisstantutils/VibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callvasisstantutils/VibratorManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/callvasisstantutils/VibratorManager;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;->this$0:Lcom/android/phone/callvasisstantutils/VibratorManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callvasisstantutils/VibratorManager;Lcom/android/phone/callvasisstantutils/VibratorManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;-><init>(Lcom/android/phone/callvasisstantutils/VibratorManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 72
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;->this$0:Lcom/android/phone/callvasisstantutils/VibratorManager;

    #getter for: Lcom/android/phone/callvasisstantutils/VibratorManager;->mContinueVibrating:Z
    invoke-static {v0}, Lcom/android/phone/callvasisstantutils/VibratorManager;->access$100(Lcom/android/phone/callvasisstantutils/VibratorManager;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 73
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VibratorManager$VibratorThread;->this$0:Lcom/android/phone/callvasisstantutils/VibratorManager;

    #getter for: Lcom/android/phone/callvasisstantutils/VibratorManager;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/phone/callvasisstantutils/VibratorManager;->access$200(Lcom/android/phone/callvasisstantutils/VibratorManager;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 74
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 76
    :cond_19
    return-void
.end method
