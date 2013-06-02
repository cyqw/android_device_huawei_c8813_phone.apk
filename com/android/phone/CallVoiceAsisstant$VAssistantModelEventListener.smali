.class Lcom/android/phone/CallVoiceAsisstant$VAssistantModelEventListener;
.super Ljava/lang/Object;
.source "CallVoiceAsisstant.java"

# interfaces
.implements Lcom/android/phone/callvasisstantutils/ModelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallVoiceAsisstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VAssistantModelEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallVoiceAsisstant;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/phone/CallVoiceAsisstant$VAssistantModelEventListener;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallVoiceAsisstant;Lcom/android/phone/CallVoiceAsisstant$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/android/phone/CallVoiceAsisstant$VAssistantModelEventListener;-><init>(Lcom/android/phone/CallVoiceAsisstant;)V

    return-void
.end method


# virtual methods
.method public answerIncomingCall()V
    .registers 3

    .prologue
    .line 411
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 412
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 413
    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant$VAssistantModelEventListener;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #getter for: Lcom/android/phone/CallVoiceAsisstant;->mHandler:Lcom/android/phone/CallVoiceAsisstant$VAHandler;
    invoke-static {v1}, Lcom/android/phone/CallVoiceAsisstant;->access$300(Lcom/android/phone/CallVoiceAsisstant;)Lcom/android/phone/CallVoiceAsisstant$VAHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    return-void
.end method

.method public hangupIncomingCall()V
    .registers 3

    .prologue
    .line 421
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 422
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 423
    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant$VAssistantModelEventListener;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #getter for: Lcom/android/phone/CallVoiceAsisstant;->mHandler:Lcom/android/phone/CallVoiceAsisstant$VAHandler;
    invoke-static {v1}, Lcom/android/phone/CallVoiceAsisstant;->access$300(Lcom/android/phone/CallVoiceAsisstant;)Lcom/android/phone/CallVoiceAsisstant$VAHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->sendMessage(Landroid/os/Message;)Z

    .line 424
    return-void
.end method

.method public ringerEnable()V
    .registers 3

    .prologue
    .line 431
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 432
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 433
    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant$VAssistantModelEventListener;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #getter for: Lcom/android/phone/CallVoiceAsisstant;->mHandler:Lcom/android/phone/CallVoiceAsisstant$VAHandler;
    invoke-static {v1}, Lcom/android/phone/CallVoiceAsisstant;->access$300(Lcom/android/phone/CallVoiceAsisstant;)Lcom/android/phone/CallVoiceAsisstant$VAHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    return-void
.end method

.method public vassistantCancel()V
    .registers 3

    .prologue
    .line 441
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 442
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 443
    iget-object v1, p0, Lcom/android/phone/CallVoiceAsisstant$VAssistantModelEventListener;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #getter for: Lcom/android/phone/CallVoiceAsisstant;->mHandler:Lcom/android/phone/CallVoiceAsisstant$VAHandler;
    invoke-static {v1}, Lcom/android/phone/CallVoiceAsisstant;->access$300(Lcom/android/phone/CallVoiceAsisstant;)Lcom/android/phone/CallVoiceAsisstant$VAHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/CallVoiceAsisstant$VAHandler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    return-void
.end method
