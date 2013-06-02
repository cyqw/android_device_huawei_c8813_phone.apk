.class Lcom/android/phone/CallNotifier$2;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/phone/CallVoiceAsisstant$VoiceAssistantListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .registers 2
    .parameter

    .prologue
    .line 3025
    iput-object p1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyServiceDisconnected()V
    .registers 2

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->cancelVAssistant()V
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)V

    .line 3031
    return-void
.end method

.method public notifyVAssistantCanceled()V
    .registers 2

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->cancelVAssistant()V
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)V

    .line 3038
    return-void
.end method
