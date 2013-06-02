.class Lcom/android/phone/CallVoiceAsisstant$VAHandler;
.super Landroid/os/Handler;
.source "CallVoiceAsisstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallVoiceAsisstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VAHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallVoiceAsisstant;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 2
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallVoiceAsisstant;Lcom/android/phone/CallVoiceAsisstant$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/android/phone/CallVoiceAsisstant$VAHandler;-><init>(Lcom/android/phone/CallVoiceAsisstant;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 532
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 548
    :goto_5
    return-void

    .line 534
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #calls: Lcom/android/phone/CallVoiceAsisstant;->processAnswerIncomingCall()V
    invoke-static {v0}, Lcom/android/phone/CallVoiceAsisstant;->access$600(Lcom/android/phone/CallVoiceAsisstant;)V

    goto :goto_5

    .line 537
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #calls: Lcom/android/phone/CallVoiceAsisstant;->processHangupIncomingCall()V
    invoke-static {v0}, Lcom/android/phone/CallVoiceAsisstant;->access$700(Lcom/android/phone/CallVoiceAsisstant;)V

    goto :goto_5

    .line 540
    :pswitch_12
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #calls: Lcom/android/phone/CallVoiceAsisstant;->processRingerEnable()V
    invoke-static {v0}, Lcom/android/phone/CallVoiceAsisstant;->access$800(Lcom/android/phone/CallVoiceAsisstant;)V

    goto :goto_5

    .line 543
    :pswitch_18
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #calls: Lcom/android/phone/CallVoiceAsisstant;->processAssistantCancel()V
    invoke-static {v0}, Lcom/android/phone/CallVoiceAsisstant;->access$900(Lcom/android/phone/CallVoiceAsisstant;)V

    goto :goto_5

    .line 532
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method
