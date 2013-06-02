.class Lcom/android/phone/InCallScreen$1;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 456
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-boolean v1, v1, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    if-eqz v1, :cond_2c

    .line 457
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler: ignoring message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; we\'re destroyed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 635
    :cond_2b
    :goto_2b
    return-void

    .line 460
    :cond_2c
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-boolean v1, v1, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v1, :cond_56

    .line 461
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$000()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler: handling message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while not in foreground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 469
    :cond_56
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_1da

    .line 632
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler: unexpected message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 471
    :sswitch_74
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v2, v1}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_2b

    .line 475
    :sswitch_7e
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_2b

    .line 479
    :sswitch_88
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_2b

    .line 491
    :sswitch_92
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 497
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallTouchUi;->refreshAudioModePopup()V

    goto :goto_2b

    .line 508
    :sswitch_a1
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Phone;

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel(Lcom/android/internal/telephony/Phone;)V
    invoke-static {v2, v1}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V

    goto :goto_2b

    .line 516
    :sswitch_ab
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    #calls: Lcom/android/phone/InCallScreen;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    invoke-static {v2, v1}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/MmiCode;)V

    goto/16 :goto_2b

    .line 520
    :sswitch_ba
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-char v3, v3

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v2, v1, v3}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_2b

    .line 524
    :sswitch_c8
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2b

    .line 528
    :sswitch_cf
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2b

    .line 532
    :sswitch_d6
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_2b

    .line 540
    :sswitch_e1
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_2b

    .line 549
    :sswitch_ea
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2b

    .line 553
    :sswitch_f1
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 556
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_2b

    .line 559
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 560
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_2b

    .line 565
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_10d
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_2b

    .line 566
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_2b

    .line 571
    :sswitch_120
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_2b

    .line 572
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_2b

    .line 577
    :sswitch_133
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 578
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 579
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$1102(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_2b

    .line 584
    :sswitch_14c
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v4, v1, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    .line 585
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 586
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, v2, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_2b

    .line 590
    :sswitch_16b
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2b

    .line 594
    :sswitch_172
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onIncomingRing()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2b

    .line 598
    :sswitch_179
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onNewRingingConnection()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2b

    .line 607
    :sswitch_180
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHwVibrate:Z
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_193

    .line 608
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Landroid/os/SystemVibrator;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 610
    :cond_193
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, v2, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 611
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    .line 612
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_2b

    .line 619
    :sswitch_1b6
    sget-boolean v1, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    if-eqz v1, :cond_2b

    .line 620
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->reStartTone()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2b

    .line 626
    :sswitch_1c1
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 627
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, v2, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_2b

    .line 469
    :sswitch_data_1da
    .sparse-switch
        0x34 -> :sswitch_ab
        0x35 -> :sswitch_a1
        0x65 -> :sswitch_7e
        0x66 -> :sswitch_88
        0x67 -> :sswitch_92
        0x68 -> :sswitch_ba
        0x6a -> :sswitch_c8
        0x6b -> :sswitch_cf
        0x6c -> :sswitch_d6
        0x6e -> :sswitch_74
        0x70 -> :sswitch_e1
        0x72 -> :sswitch_ea
        0x73 -> :sswitch_f1
        0x76 -> :sswitch_10d
        0x77 -> :sswitch_120
        0x78 -> :sswitch_133
        0x79 -> :sswitch_14c
        0x7a -> :sswitch_16b
        0x7b -> :sswitch_172
        0x7c -> :sswitch_179
        0x7d -> :sswitch_180
        0x3e9 -> :sswitch_1b6
        0x3ea -> :sswitch_1c1
    .end sparse-switch
.end method
