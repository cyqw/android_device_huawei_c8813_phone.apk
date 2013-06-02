.class Lcom/android/phone/MSimGsmUmtsOptions$1;
.super Landroid/os/Handler;
.source "MSimGsmUmtsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimGsmUmtsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimGsmUmtsOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimGsmUmtsOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/phone/MSimGsmUmtsOptions$1;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, -0x1

    .line 604
    const/4 v3, 0x0

    .line 606
    .local v3, subErr:Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_6e

    .line 642
    :goto_7
    return-void

    .line 609
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 611
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_20

    .line 613
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MSimGsmUmtsOptions$1;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    iget-object v5, v5, Lcom/android/phone/MSimGsmUmtsOptions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V

    .line 617
    iget-object v4, p0, Lcom/android/phone/MSimGsmUmtsOptions$1;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    iput v6, v4, Lcom/android/phone/MSimGsmUmtsOptions;->card1DualModeStageinProgress:I

    goto :goto_7

    .line 619
    :cond_20
    iget-object v4, p0, Lcom/android/phone/MSimGsmUmtsOptions$1;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    iget v4, v4, Lcom/android/phone/MSimGsmUmtsOptions;->card1DualModeStageinProgress:I

    if-nez v4, :cond_3e

    .line 620
    iget-object v4, p0, Lcom/android/phone/MSimGsmUmtsOptions$1;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    const/4 v5, 0x2

    iput v5, v4, Lcom/android/phone/MSimGsmUmtsOptions;->card1DualModeStageinProgress:I

    .line 621
    iget-object v4, p0, Lcom/android/phone/MSimGsmUmtsOptions$1;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    #calls: Lcom/android/phone/MSimGsmUmtsOptions;->activateCard1DualModeGSM()V
    invoke-static {v4}, Lcom/android/phone/MSimGsmUmtsOptions;->access$600(Lcom/android/phone/MSimGsmUmtsOptions;)V

    .line 622
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MSimGsmUmtsOptions$1;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    #getter for: Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {v5}, Lcom/android/phone/MSimGsmUmtsOptions;->access$400(Lcom/android/phone/MSimGsmUmtsOptions;)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z

    goto :goto_7

    .line 627
    :cond_3e
    :try_start_3e
    iget-object v4, p0, Lcom/android/phone/MSimGsmUmtsOptions$1;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    #getter for: Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v4}, Lcom/android/phone/MSimGsmUmtsOptions;->access$100(Lcom/android/phone/MSimGsmUmtsOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceActivity;->dismissDialog(I)V
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_49} :catch_65

    .line 632
    :goto_49
    iget-object v4, p0, Lcom/android/phone/MSimGsmUmtsOptions$1;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    #getter for: Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v4}, Lcom/android/phone/MSimGsmUmtsOptions;->access$100(Lcom/android/phone/MSimGsmUmtsOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 633
    .local v2, pm:Landroid/os/PowerManager;
    const-string v4, "MSimGsmUmtsOptions"

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 635
    iget-object v4, p0, Lcom/android/phone/MSimGsmUmtsOptions$1;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    iput v6, v4, Lcom/android/phone/MSimGsmUmtsOptions;->card1DualModeStageinProgress:I

    goto :goto_7

    .line 628
    .end local v2           #pm:Landroid/os/PowerManager;
    :catch_65
    move-exception v1

    .line 629
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MSimGsmUmtsOptions"

    const-string v5, "IllegalArgumentException while dismiss the dialog; DIALOG_SET_SUBSCRIPTION_IN_PROGRESS"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 606
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
