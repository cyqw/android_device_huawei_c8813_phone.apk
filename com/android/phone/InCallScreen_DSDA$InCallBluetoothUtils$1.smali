.class Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils$1;
.super Ljava/lang/Object;
.source "InCallScreen_DSDA.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;)V
    .registers 2
    .parameter

    .prologue
    .line 2481
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils$1;->this$0:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils$1;->this$0:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->access$302(Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2484
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils$1;->this$0:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->access$302(Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2488
    return-void
.end method
