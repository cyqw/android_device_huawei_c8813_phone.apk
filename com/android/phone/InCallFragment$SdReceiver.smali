.class Lcom/android/phone/InCallFragment$SdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SdReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 2443
    iput-object p1, p0, Lcom/android/phone/InCallFragment$SdReceiver;->this$0:Lcom/android/phone/InCallFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/phone/InCallFragment$SdReceiver;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;
    invoke-static {v0}, Lcom/android/phone/InCallFragment;->access$2500(Lcom/android/phone/InCallFragment;)Landroid/media/voicerecorder/BaseVoiceRecorder;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2448
    iget-object v0, p0, Lcom/android/phone/InCallFragment$SdReceiver;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;
    invoke-static {v0}, Lcom/android/phone/InCallFragment;->access$2500(Lcom/android/phone/InCallFragment;)Landroid/media/voicerecorder/BaseVoiceRecorder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->stop(I)V

    .line 2449
    iget-object v0, p0, Lcom/android/phone/InCallFragment$SdReceiver;->this$0:Lcom/android/phone/InCallFragment;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/InCallFragment;->mEjectSdError:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallFragment;->access$2602(Lcom/android/phone/InCallFragment;Z)Z

    .line 2451
    :cond_19
    return-void
.end method
