.class Lcom/android/phone/BluetoothHandsfree$16;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2341
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 12
    .parameter "args"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2344
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2345
    .local v1, phoneType:I
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2346
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2348
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    array-length v5, p1

    if-lt v5, v8, :cond_17b

    .line 2349
    aget-object v5, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 2351
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2352
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 2356
    .local v2, result:Z
    :goto_36
    if-eqz v2, :cond_43

    .line 2357
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2438
    .end local v2           #result:Z
    :goto_3d
    return-object v5

    .line 2354
    :cond_3e
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .restart local v2       #result:Z
    goto :goto_36

    .line 2359
    :cond_43
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_3d

    .line 2361
    .end local v2           #result:Z
    :cond_49
    aget-object v5, p1, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 2362
    if-ne v1, v9, :cond_72

    .line 2363
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 2366
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    .line 2374
    :goto_62
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_3d

    .line 2372
    :cond_68
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_62

    .line 2375
    :cond_72
    if-ne v1, v8, :cond_8c

    .line 2377
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5, v3}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 2379
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_3d

    .line 2381
    :cond_86
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_3d

    .line 2384
    :cond_8c
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2386
    :cond_a5
    aget-object v5, p1, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_108

    .line 2387
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v6, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2388
    if-ne v1, v9, :cond_e9

    .line 2394
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 2396
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2397
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2399
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v5, v8}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 2413
    :cond_cb
    :goto_cb
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_3d

    .line 2400
    :cond_d2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_cb

    .line 2404
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2406
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    goto :goto_cb

    .line 2408
    :cond_e9
    if-ne v1, v8, :cond_ef

    .line 2409
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_cb

    .line 2411
    :cond_ef
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2414
    :cond_108
    aget-object v5, p1, v7

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17b

    .line 2415
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v6, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2416
    if-ne v1, v9, :cond_144

    .line 2417
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    .line 2420
    .local v4, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_136

    .line 2422
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    .line 2435
    .end local v4           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_12f
    :goto_12f
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_3d

    .line 2423
    .restart local v4       #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_136
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_12f

    .line 2426
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v5

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateCallHeld()V
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    goto :goto_12f

    .line 2428
    .end local v4           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_144
    if-ne v1, v8, :cond_162

    .line 2429
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_12f

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_12f

    .line 2430
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_12f

    .line 2433
    :cond_162
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2438
    :cond_17b
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_3d
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2443
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CHLD: (0,1,2,3)"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2444
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2445
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$6200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2446
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2452
    :cond_21
    :goto_21
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0

    .line 2447
    :cond_28
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2449
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_21
.end method
