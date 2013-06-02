.class Lcom/android/phone/PhoneApp$1;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .parameter "msg"

    .prologue
    .line 500
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_2e2

    .line 713
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 503
    :sswitch_8
    const/4 v10, -0x1

    .line 504
    .local v10, subscription:I
    sget v13, Lcom/android/phone/PhoneApp;->mSub1:I

    if-nez v13, :cond_60

    sget v13, Lcom/android/phone/PhoneApp;->mSub2:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_60

    .line 505
    sget v10, Lcom/android/phone/PhoneApp;->mSub1:I

    .line 506
    const/4 v13, -0x1

    sput v13, Lcom/android/phone/PhoneApp;->mSub1:I

    .line 520
    :goto_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13, v10}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 521
    .local v11, subscriptionPhone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 523
    .local v2, arg:Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_7

    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v13, v13, Ljava/lang/Throwable;

    if-nez v13, :cond_7

    .line 525
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget v13, v13, Lcom/android/phone/PhoneApp;->mCallWaitingEnable:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_87

    const/4 v7, 0x1

    .line 526
    .local v7, isCallWaitingEnable:Z
    :goto_39
    iget-object v13, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    move-object v4, v13

    check-cast v4, [I

    .line 528
    .local v4, cwArray:[I
    const/4 v13, 0x0

    aget v13, v4, v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_89

    const/4 v13, 0x1

    aget v13, v4, v13

    and-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_89

    const/4 v5, 0x1

    .line 530
    .local v5, defaultCallWaiting:Z
    :goto_4f
    if-eq v7, v5, :cond_7

    .line 531
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-interface {v11, v7, v13}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_7

    .line 507
    .end local v2           #arg:Landroid/os/AsyncResult;
    .end local v4           #cwArray:[I
    .end local v5           #defaultCallWaiting:Z
    .end local v7           #isCallWaitingEnable:Z
    .end local v11           #subscriptionPhone:Lcom/android/internal/telephony/Phone;
    :cond_60
    sget v13, Lcom/android/phone/PhoneApp;->mSub2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6f

    sget v13, Lcom/android/phone/PhoneApp;->mSub1:I

    if-eqz v13, :cond_6f

    .line 508
    sget v10, Lcom/android/phone/PhoneApp;->mSub2:I

    .line 509
    const/4 v13, -0x1

    sput v13, Lcom/android/phone/PhoneApp;->mSub2:I

    goto :goto_17

    .line 510
    :cond_6f
    sget-boolean v13, Lcom/android/phone/PhoneApp;->IsBothSubEnable:Z

    if-eqz v13, :cond_7e

    .line 511
    sget-boolean v13, Lcom/android/phone/PhoneApp;->isSecondSub:Z

    if-eqz v13, :cond_7c

    .line 512
    const/4 v10, 0x1

    .line 513
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/phone/PhoneApp;->IsBothSubEnable:Z

    goto :goto_17

    .line 515
    :cond_7c
    const/4 v10, 0x0

    goto :goto_17

    .line 518
    :cond_7e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v10

    goto :goto_17

    .line 525
    .restart local v2       #arg:Landroid/os/AsyncResult;
    .restart local v11       #subscriptionPhone:Lcom/android/internal/telephony/Phone;
    :cond_87
    const/4 v7, 0x0

    goto :goto_39

    .line 528
    .restart local v4       #cwArray:[I
    .restart local v7       #isCallWaitingEnable:Z
    :cond_89
    const/4 v5, 0x0

    goto :goto_4f

    .line 537
    .end local v2           #arg:Landroid/os/AsyncResult;
    .end local v4           #cwArray:[I
    .end local v7           #isCallWaitingEnable:Z
    .end local v10           #subscription:I
    .end local v11           #subscriptionPhone:Lcom/android/internal/telephony/Phone;
    :sswitch_8b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 539
    .local v3, ars:Landroid/os/AsyncResult;
    iget-object v13, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_9b

    iget-object v13, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v13, v13, Ljava/lang/Throwable;

    if-eqz v13, :cond_b3

    .line 540
    :cond_9b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mCallwaitingPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mImei:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 542
    :cond_b3
    sget-boolean v13, Lcom/android/phone/PhoneApp;->IsBothSubEnable:Z

    if-eqz v13, :cond_7

    .line 543
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/phone/PhoneApp;->isSecondSub:Z

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mMsimtelephonyManager:Landroid/telephony/MSimTelephonyManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/phone/PhoneApp;->mImei:Ljava/lang/String;

    .line 545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mCallwaitingPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mImei:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_7

    .line 558
    .end local v3           #ars:Landroid/os/AsyncResult;
    :sswitch_100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto/16 :goto_7

    .line 562
    :sswitch_10b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0001

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_127

    .line 564
    const-string v13, "PhoneApp"

    const-string v14, "Ignoring EVENT_PERSO_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 570
    :cond_127
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 571
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v13, :cond_13a

    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13, v1}, Lcom/android/phone/PhoneApp;->initIccDepersonalizationPanel(Landroid/os/AsyncResult;)V

    goto/16 :goto_7

    .line 575
    :cond_13a
    new-instance v8, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v13

    invoke-direct {v8, v13}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    .line 577
    .local v8, ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_7

    .line 589
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v8           #ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v13}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_7

    .line 593
    :sswitch_153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v13}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto/16 :goto_7

    .line 597
    :sswitch_15e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v13}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto/16 :goto_7

    .line 601
    :sswitch_169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_7

    .line 605
    :sswitch_178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_7

    .line 614
    :sswitch_183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    .line 616
    .local v9, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v13, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v13, :cond_1c5

    .line 617
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v13, :cond_1a5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v13}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v13

    if-nez v13, :cond_1c5

    .line 618
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v13

    if-nez v13, :cond_1f4

    .line 621
    sget-object v13, Lcom/android/phone/PhoneApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v14, "speakeron"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1e8

    .line 622
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mPhoneAppaudioManager:Landroid/media/AudioManager;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 635
    :cond_1c5
    :goto_1c5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13, v9}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-boolean v13, v13, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v13, :cond_7

    .line 639
    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/phone/PhoneApp$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/PhoneApp$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 624
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_1c5

    .line 630
    :cond_1f4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1c5

    .line 647
    .end local v9           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_202
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v14, "READY"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 651
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    if-eqz v13, :cond_226

    .line 652
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 653
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 655
    :cond_226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v13}, Lcom/android/phone/PhoneApp;->access$000(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 656
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v13}, Lcom/android/phone/PhoneApp;->access$000(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    .line 657
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v14, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v13, v14}, Lcom/android/phone/PhoneApp;->access$002(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_7

    .line 669
    :sswitch_245
    const/4 v6, 0x0

    .line 670
    .local v6, inDockMode:Z
    sget v13, Lcom/android/phone/PhoneApp;->mDockState:I

    if-eqz v13, :cond_24b

    .line 671
    const/4 v6, 0x1

    .line 674
    :cond_24b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    .line 675
    .restart local v9       #phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v13, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v13, :cond_277

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v13}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v13

    if-nez v13, :cond_7

    .line 678
    :cond_277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v6, v14}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 679
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_7

    .line 686
    .end local v6           #inDockMode:Z
    .end local v9           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_28c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v13}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v13

    if-eqz v13, :cond_2b3

    .line 687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget v12, v13, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 691
    .local v12, ttyMode:I
    :goto_29c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x10

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-interface {v13, v12, v14}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_7

    .line 689
    .end local v12           #ttyMode:I
    :cond_2b3
    const/4 v12, 0x0

    .restart local v12       #ttyMode:I
    goto :goto_29c

    .line 695
    .end local v12           #ttyMode:I
    :sswitch_2b5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    #calls: Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v13, v0}, Lcom/android/phone/PhoneApp;->access$100(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_7

    .line 699
    :sswitch_2c0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    #calls: Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v13, v0}, Lcom/android/phone/PhoneApp;->access$200(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_7

    .line 705
    :sswitch_2cb
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v13}, Lcom/android/phone/NotificationMgr;->showPrePostPay()V

    goto/16 :goto_7

    .line 709
    :sswitch_2d6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v13}, Lcom/android/phone/NotificationMgr;->hidePrePostPay()V

    goto/16 :goto_7

    .line 500
    nop

    :sswitch_data_2e2
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_8b
        0x3 -> :sswitch_10b
        0x7 -> :sswitch_183
        0x8 -> :sswitch_202
        0x9 -> :sswitch_148
        0xa -> :sswitch_153
        0xb -> :sswitch_15e
        0xc -> :sswitch_7
        0xd -> :sswitch_245
        0xe -> :sswitch_28c
        0xf -> :sswitch_2b5
        0x10 -> :sswitch_2c0
        0x11 -> :sswitch_100
        0x1e -> :sswitch_2cb
        0x1f -> :sswitch_2d6
        0x34 -> :sswitch_169
        0x35 -> :sswitch_178
    .end sparse-switch
.end method
