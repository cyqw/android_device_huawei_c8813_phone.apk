.class public Lcom/android/phone/EmergencyCallHelper;
.super Landroid/os/Handler;
.source "EmergencyCallHelper.java"


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallController:Lcom/android/phone/CallController;

.field private mNumRetriesSoFar:I

.field private mNumber:Ljava/lang/String;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallController;)V
    .registers 3
    .parameter "callController"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/phone/EmergencyCallHelper;->mCallController:Lcom/android/phone/CallController;

    .line 80
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    .line 81
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 82
    return-void
.end method

.method private cancelRetryTimer()V
    .registers 2

    .prologue
    .line 533
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 534
    return-void
.end method

.method private cleanup()V
    .registers 2

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHelper;->clearProgressIndication()V

    .line 509
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 510
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForDisconnect()V

    .line 511
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 514
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_20

    .line 515
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 517
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 519
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 524
    :cond_20
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 525
    return-void
.end method

.method private onDisconnect(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 268
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 269
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 273
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_14

    .line 276
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    .line 290
    :goto_13
    return-void

    .line 283
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    goto :goto_13
.end method

.method private onRetryTimeout()V
    .registers 4

    .prologue
    .line 296
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 298
    .local v0, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-nez v2, :cond_14

    .line 299
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 301
    :cond_14
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_19

    .line 354
    :goto_18
    return-void

    .line 305
    :cond_19
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 318
    .local v1, serviceState:I
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_2b

    .line 319
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    goto :goto_18

    .line 323
    :cond_2b
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3d

    .line 328
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 333
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHelper;->clearProgressIndication()V

    .line 337
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall()V

    .line 353
    :goto_37
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    goto :goto_18

    .line 343
    :cond_3d
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 348
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_37
.end method

.method private onServiceStateChanged(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 213
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    .line 225
    .local v1, state:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    :cond_15
    const/4 v0, 0x1

    .line 228
    .local v0, okToCall:Z
    :goto_16
    if-eqz v0, :cond_26

    .line 232
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHelper;->clearProgressIndication()V

    .line 241
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall()V

    .line 245
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 258
    :cond_26
    return-void

    .line 225
    .end local v0           #okToCall:Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private placeEmergencyCall()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 407
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForDisconnect()V

    .line 408
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getVoiceSubscriptionInService()I

    move-result v7

    .line 409
    .local v7, sub:I
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 412
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v6

    .line 423
    .local v6, callStatus:I
    packed-switch v6, :pswitch_data_42

    .line 432
    const-string v0, "EmergencyCallHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeEmergencyCall(): placeCall() failed: callStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v8, 0x0

    .line 437
    .local v8, success:Z
    :goto_38
    if-eqz v8, :cond_3d

    .line 451
    :goto_3a
    return-void

    .line 425
    .end local v8           #success:Z
    :pswitch_3b
    const/4 v8, 0x1

    .line 426
    .restart local v8       #success:Z
    goto :goto_38

    .line 449
    :cond_3d
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_3a

    .line 423
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch
.end method

.method private powerOnRadio()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForServiceStateChanged()V

    .line 372
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_35

    .line 376
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 382
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    .end local v0           #intent:Landroid/content/Intent;
    :goto_34
    return-void

    .line 388
    :cond_35
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_34
.end method

.method private registerForDisconnect()V
    .registers 4

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 557
    return-void
.end method

.method private registerForServiceStateChanged()V
    .registers 4

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 541
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 542
    return-void
.end method

.method private scheduleRetryOrBailOut()V
    .registers 3

    .prologue
    .line 460
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 462
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_14

    .line 463
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 468
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 477
    :goto_13
    return-void

    .line 471
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 473
    sget-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    goto :goto_13
.end method

.method private startRetryTimer()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 528
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 529
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/phone/EmergencyCallHelper;->sendEmptyMessageDelayed(IJ)Z

    .line 530
    return-void
.end method

.method private startSequenceInternal(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 157
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    .line 160
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 165
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-nez v1, :cond_1a

    .line 166
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 172
    :cond_1a
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 173
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "EmergencyCallHelper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 177
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 185
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 193
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 199
    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    .line 203
    return-void
.end method

.method private unregisterForDisconnect()V
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 561
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 562
    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    .line 547
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 549
    :cond_9
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 550
    return-void
.end method


# virtual methods
.method protected clearProgressIndication()V
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 581
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 100
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_1d
    return-void

    .line 88
    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->startSequenceInternal(Landroid/os/Message;)V

    goto :goto_1d

    .line 91
    :pswitch_22
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onServiceStateChanged(Landroid/os/Message;)V

    goto :goto_1d

    .line 94
    :pswitch_26
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onDisconnect(Landroid/os/Message;)V

    goto :goto_1d

    .line 97
    :pswitch_2a
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->onRetryTimeout()V

    goto :goto_1d

    .line 86
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method protected setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V
    .registers 4
    .parameter "status"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 585
    return-void
.end method

.method protected setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    .line 577
    return-void
.end method

.method public startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V
    .registers 4
    .parameter "number"

    .prologue
    .line 131
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method

.method public startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;I)V
    .registers 5
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 137
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, p2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method
