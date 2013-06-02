.class Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RfcommConnectThread"
.end annotation


# instance fields
.field private channel:I

.field private device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 5
    .parameter
    .parameter "device"
    .parameter "channel"
    .parameter "type"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    .line 350
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 351
    iput-object p2, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 352
    iput p3, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->channel:I

    .line 353
    iput p4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->type:I

    .line 354
    return-void
.end method

.method private waitForConnect(Landroid/bluetooth/HeadsetBase;)I
    .registers 6
    .parameter "headset"

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/16 v2, 0x28

    if-ge v0, v2, :cond_23

    if-nez v1, :cond_23

    .line 361
    const/16 v2, 0x1f4

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/bluetooth/HeadsetBase;->waitForAsyncConnect(ILandroid/os/Handler;)I

    move-result v1

    .line 362
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 363
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 364
    const/16 v2, -0x3e8

    .line 367
    :goto_1f
    return v2

    .line 359
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_23
    move v2, v1

    .line 367
    goto :goto_1f
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, -0x3e8

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 375
    .local v3, timestamp:J
    new-instance v1, Landroid/bluetooth/HeadsetBase;

    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->channel:I

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;I)V

    .line 378
    .local v1, headset:Landroid/bluetooth/HeadsetBase;
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->waitForConnect(Landroid/bluetooth/HeadsetBase;)I

    move-result v2

    .line 380
    .local v2, result:I
    if-eq v2, v9, :cond_58

    if-eq v2, v10, :cond_58

    .line 381
    const/16 v5, -0x6f

    if-ne v2, v5, :cond_48

    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_48

    .line 384
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1402(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 385
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 386
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v5, v12}, Lcom/android/phone/BluetoothHeadsetService;->access$1702(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 418
    :cond_47
    :goto_47
    return-void

    .line 389
    :cond_48
    const-string v5, "Bluetooth HSHFP"

    const-string v6, "Trying to connect to rfcomm socket again after 1 sec"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-wide/16 v5, 0x3e8

    :try_start_51
    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->sleep(J)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_54} :catch_8a

    .line 396
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->waitForConnect(Landroid/bluetooth/HeadsetBase;)I

    move-result v2

    .line 398
    :cond_58
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v12}, Lcom/android/phone/BluetoothHeadsetService;->access$1402(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 399
    if-eq v2, v9, :cond_47

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RFCOMM connection attempt took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 404
    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    goto :goto_47

    .line 392
    :catch_8a
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_47

    .line 407
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_8c
    if-gez v2, :cond_b4

    .line 408
    const-string v5, "Bluetooth HSHFP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "headset.waitForAsyncConnect() error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_47

    .line 411
    :cond_b4
    if-nez v2, :cond_e3

    .line 412
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 413
    const-string v5, "Bluetooth HSHFP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHeadset.waitForAsyncConnect() error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(timeout)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47

    .line 416
    :cond_e3
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_47
.end method
