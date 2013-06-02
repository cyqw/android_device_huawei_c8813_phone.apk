.class Lcom/android/phone/CallVoiceAsisstant$VARunnable;
.super Ljava/lang/Object;
.source "CallVoiceAsisstant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallVoiceAsisstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VARunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallVoiceAsisstant;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallVoiceAsisstant;)V
    .registers 2
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/phone/CallVoiceAsisstant$VARunnable;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallVoiceAsisstant;Lcom/android/phone/CallVoiceAsisstant$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/android/phone/CallVoiceAsisstant$VARunnable;-><init>(Lcom/android/phone/CallVoiceAsisstant;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant$VARunnable;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #calls: Lcom/android/phone/CallVoiceAsisstant;->stopPlay()V
    invoke-static {v0}, Lcom/android/phone/CallVoiceAsisstant;->access$1000(Lcom/android/phone/CallVoiceAsisstant;)V

    .line 564
    iget-object v0, p0, Lcom/android/phone/CallVoiceAsisstant$VARunnable;->this$0:Lcom/android/phone/CallVoiceAsisstant;

    #calls: Lcom/android/phone/CallVoiceAsisstant;->broadcastIncomingCall()V
    invoke-static {v0}, Lcom/android/phone/CallVoiceAsisstant;->access$1100(Lcom/android/phone/CallVoiceAsisstant;)V

    .line 565
    return-void
.end method
