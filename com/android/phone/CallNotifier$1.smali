.class Lcom/android/phone/CallNotifier$1;
.super Landroid/telephony/PhoneStateListener;
.source "CallNotifier.java"


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
    .line 647
    iput-object p1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .registers 3
    .parameter "cfi"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V

    .line 656
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .registers 3
    .parameter "mwi"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    .line 651
    return-void
.end method
