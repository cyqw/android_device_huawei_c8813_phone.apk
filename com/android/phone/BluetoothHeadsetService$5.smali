.class Lcom/android/phone/BluetoothHeadsetService$5;
.super Landroid/os/Handler;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .registers 2
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$5;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 458
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_28

    .line 468
    :cond_6
    :goto_6
    return-void

    .line 460
    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$5;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 461
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$5;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->setVirtualCallInProgress(Z)V

    .line 462
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$5;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 463
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_6

    .line 464
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$5;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v1, v0, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_6

    .line 458
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
