.class Lcom/android/phone/MSimCallNotifier$1;
.super Lcom/huawei/android/telephony/PhoneStateListenerEx;
.source "MSimCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MSimCallNotifier;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimCallNotifier;I)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/phone/MSimCallNotifier$1;->this$0:Lcom/android/phone/MSimCallNotifier;

    invoke-direct {p0, p2}, Lcom/huawei/android/telephony/PhoneStateListenerEx;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .registers 4
    .parameter "cfi"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/phone/MSimCallNotifier$1;->this$0:Lcom/android/phone/MSimCallNotifier;

    invoke-static {p0}, Lcom/huawei/android/telephony/PhoneStateListenerEx;->getSubscription(Landroid/telephony/PhoneStateListener;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/MSimCallNotifier;->onCfiChanged(ZI)V

    .line 174
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .registers 5
    .parameter "mwi"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/phone/MSimCallNotifier$1;->this$0:Lcom/android/phone/MSimCallNotifier;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {p0}, Lcom/huawei/android/telephony/PhoneStateListenerEx;->getSubscription(Landroid/telephony/PhoneStateListener;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    #calls: Lcom/android/phone/MSimCallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/MSimCallNotifier;->access$000(Lcom/android/phone/MSimCallNotifier;ZLcom/android/internal/telephony/Phone;)V

    .line 169
    return-void
.end method
