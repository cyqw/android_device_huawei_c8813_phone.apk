.class Lcom/android/phone/CallVoiceAsisstant$VACounter;
.super Landroid/os/CountDownTimer;
.source "CallVoiceAsisstant.java"

# interfaces
.implements Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallVoiceAsisstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VACounter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallVoiceAsisstant;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallVoiceAsisstant;JJ)V
    .registers 6
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/phone/CallVoiceAsisstant$VACounter;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    .line 480
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 481
    return-void
.end method


# virtual methods
.method public notifyIsServiceConnected(Z)V
    .registers 3
    .parameter "isServiceConnected"

    .prologue
    .line 509
    if-nez p1, :cond_7

    .line 510
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant$VACounter;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #calls: Lcom/android/phone/CallVoiceAsisstant;->processConnectFailed()V
    invoke-static {v0}, Lcom/android/phone/CallVoiceAsisstant;->access$500(Lcom/android/phone/CallVoiceAsisstant;)V

    .line 512
    :cond_7
    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant$VACounter;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #calls: Lcom/android/phone/CallVoiceAsisstant;->processConnectTimeOut()V
    invoke-static {v0}, Lcom/android/phone/CallVoiceAsisstant;->access$400(Lcom/android/phone/CallVoiceAsisstant;)V

    .line 490
    return-void
.end method

.method public onTick(J)V
    .registers 3
    .parameter "millisUntilFinished"

    .prologue
    .line 499
    return-void
.end method
