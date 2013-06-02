.class Lcom/android/phone/Settings$MyHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method private constructor <init>(Lcom/android/phone/Settings;)V
    .registers 2
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 523
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 525
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_78

    .line 526
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v1, v3, v5

    .line 529
    .local v1, modemNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 536
    .local v2, settingsNetworkMode:I
    if-eqz v1, :cond_50

    const/4 v3, 0x1

    if-eq v1, v3, :cond_50

    const/4 v3, 0x2

    if-eq v1, v3, :cond_50

    const/4 v3, 0x3

    if-eq v1, v3, :cond_50

    const/4 v3, 0x4

    if-eq v1, v3, :cond_50

    const/4 v3, 0x5

    if-eq v1, v3, :cond_50

    const/4 v3, 0x6

    if-eq v1, v3, :cond_50

    const/4 v3, 0x7

    if-eq v1, v3, :cond_50

    const/16 v3, 0x8

    if-eq v1, v3, :cond_50

    const/16 v3, 0x9

    if-eq v1, v3, :cond_50

    const/16 v3, 0xa

    if-eq v1, v3, :cond_50

    if-eq v1, v6, :cond_50

    const/16 v3, 0xc

    if-ne v1, v3, :cond_79

    .line 551
    :cond_50
    if-eq v1, v2, :cond_66

    .line 553
    move v2, v1

    .line 557
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 563
    :cond_66
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v3, v1}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;I)V

    .line 565
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 573
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_78
    :goto_78
    return-void

    .line 566
    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_79
    if-ne v1, v6, :cond_81

    .line 568
    const-string v3, "handleGetPreferredNetworkTypeResponse: lte only: no action"

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$500(Ljava/lang/String;)V

    goto :goto_78

    .line 570
    :cond_81
    invoke-direct {p0}, Lcom/android/phone/Settings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_78
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 576
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 578
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_37

    .line 579
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 581
    .local v1, networkMode:I
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 588
    .end local v1           #networkMode:I
    :goto_2d
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->updatePhone(Lcom/android/internal/telephony/Phone;)V

    .line 589
    return-void

    .line 585
    :cond_37
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_2d
.end method

.method private resetNetworkModeToDefault()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 593
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 599
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 601
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 511
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 520
    :goto_5
    return-void

    .line 513
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 517
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 511
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
