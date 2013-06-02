.class Lcom/android/phone/MSimCdmaOptions$1;
.super Landroid/os/Handler;
.source "MSimCdmaOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCdmaOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimCdmaOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimCdmaOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/phone/MSimCdmaOptions$1;->this$0:Lcom/android/phone/MSimCdmaOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, -0x1

    .line 585
    const/4 v3, 0x0

    .line 587
    .local v3, subErr:Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_76

    .line 625
    :goto_7
    return-void

    .line 590
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 592
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_27

    .line 594
    const-string v4, "MSimCdmaOptions"

    const-string v5, "EVENT_SET_SUBSCRIPTION_DONE exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions$1;->this$0:Lcom/android/phone/MSimCdmaOptions;

    iput v6, v4, Lcom/android/phone/MSimCdmaOptions;->card1DualModeStageinProgress:I

    .line 599
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions$1;->this$0:Lcom/android/phone/MSimCdmaOptions;

    iget-object v5, v5, Lcom/android/phone/MSimCdmaOptions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V

    goto :goto_7

    .line 604
    :cond_27
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions$1;->this$0:Lcom/android/phone/MSimCdmaOptions;

    iget v4, v4, Lcom/android/phone/MSimCdmaOptions;->card1DualModeStageinProgress:I

    if-nez v4, :cond_45

    .line 605
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions$1;->this$0:Lcom/android/phone/MSimCdmaOptions;

    const/4 v5, 0x2

    iput v5, v4, Lcom/android/phone/MSimCdmaOptions;->card1DualModeStageinProgress:I

    .line 606
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions$1;->this$0:Lcom/android/phone/MSimCdmaOptions;

    #calls: Lcom/android/phone/MSimCdmaOptions;->activateCard1DualModeGSM()V
    invoke-static {v4}, Lcom/android/phone/MSimCdmaOptions;->access$600(Lcom/android/phone/MSimCdmaOptions;)V

    .line 607
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions$1;->this$0:Lcom/android/phone/MSimCdmaOptions;

    #getter for: Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {v5}, Lcom/android/phone/MSimCdmaOptions;->access$400(Lcom/android/phone/MSimCdmaOptions;)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z

    goto :goto_7

    .line 612
    :cond_45
    :try_start_45
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions$1;->this$0:Lcom/android/phone/MSimCdmaOptions;

    #getter for: Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v4}, Lcom/android/phone/MSimCdmaOptions;->access$100(Lcom/android/phone/MSimCdmaOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceActivity;->dismissDialog(I)V
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_50} :catch_6c

    .line 616
    :goto_50
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions$1;->this$0:Lcom/android/phone/MSimCdmaOptions;

    #getter for: Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v4}, Lcom/android/phone/MSimCdmaOptions;->access$100(Lcom/android/phone/MSimCdmaOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 617
    .local v2, pm:Landroid/os/PowerManager;
    const-string v4, "MSimCdmaOptions"

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 619
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions$1;->this$0:Lcom/android/phone/MSimCdmaOptions;

    iput v6, v4, Lcom/android/phone/MSimCdmaOptions;->card1DualModeStageinProgress:I

    goto :goto_7

    .line 613
    .end local v2           #pm:Landroid/os/PowerManager;
    :catch_6c
    move-exception v1

    .line 614
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MSimCdmaOptions"

    const-string v5, "IllegalArgumentException while dismiss the dialog; DIALOG_SET_SUBSCRIPTION_IN_PROGRESS"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 587
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
