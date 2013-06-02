.class final Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandsfreeMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    .line 1379
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1380
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;Lcom/android/phone/BluetoothHandsfree$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1377
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 1384
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_116

    .line 1458
    :cond_5
    :goto_5
    return-void

    .line 1386
    :pswitch_6
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 1392
    :try_start_9
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1394
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->scoClosed()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$4300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 1395
    monitor-exit v2

    goto :goto_5

    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v1

    .line 1398
    :pswitch_1c
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 1401
    :try_start_1f
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1402
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$4402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1403
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Timeout waiting for call to start"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1405
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1406
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1409
    :cond_50
    monitor-exit v2

    goto :goto_5

    :catchall_52
    move-exception v1

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_1f .. :try_end_54} :catchall_52

    throw v1

    .line 1412
    :pswitch_55
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 1415
    :try_start_58
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1416
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$4602(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1417
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Timeout waiting for voice recognition to start"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1420
    :cond_74
    monitor-exit v2

    goto :goto_5

    :catchall_76
    move-exception v1

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_58 .. :try_end_78} :catchall_76

    throw v1

    .line 1423
    :pswitch_79
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 1426
    :try_start_7c
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 1427
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout suspending A2DP for SCO (mA2dpState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Starting SCO anyway"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->connectScoThread()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1430
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1432
    :cond_bb
    monitor-exit v2

    goto/16 :goto_5

    :catchall_be
    move-exception v1

    monitor-exit v2
    :try_end_c0
    .catchall {:try_start_7c .. :try_end_c0} :catchall_be

    throw v1

    .line 1435
    :pswitch_c1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1436
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHandsfree;->access$4800(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    .line 1437
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v2, 0xa

    #calls: Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_5

    .line 1441
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :pswitch_d8
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    monitor-enter v2

    .line 1443
    :try_start_df
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$4900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f1

    .line 1447
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1449
    :cond_f1
    monitor-exit v2

    goto/16 :goto_5

    :catchall_f4
    move-exception v1

    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_df .. :try_end_f6} :catchall_f4

    throw v1

    .line 1452
    :pswitch_f7
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 1455
    :pswitch_106
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 1384
    nop

    :pswitch_data_116
    .packed-switch 0x3
        :pswitch_6
        :pswitch_1c
        :pswitch_55
        :pswitch_79
        :pswitch_c1
        :pswitch_d8
        :pswitch_f7
        :pswitch_106
    .end packed-switch
.end method
