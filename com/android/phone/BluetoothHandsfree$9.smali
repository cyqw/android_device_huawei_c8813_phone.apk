.class Lcom/android/phone/BluetoothHandsfree$9;
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


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 2
    .parameter

    .prologue
    .line 2206
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mCmee:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$6302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2211
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .registers 4

    .prologue
    .line 2215
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CMEE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCmee:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$6300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "1"

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_23
    const-string v0, "0"

    goto :goto_17
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 6
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2220
    array-length v0, p1

    if-nez v0, :cond_10

    .line 2222
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mCmee:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$6302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2223
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2229
    :goto_f
    return-object v0

    .line 2224
    :cond_10
    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1c

    .line 2226
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_f

    .line 2228
    :cond_1c
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_32

    move v0, v1

    :goto_29
    #setter for: Lcom/android/phone/BluetoothHandsfree;->mCmee:Z
    invoke-static {v3, v0}, Lcom/android/phone/BluetoothHandsfree;->access$6302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2229
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_f

    :cond_32
    move v0, v2

    .line 2228
    goto :goto_29
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 2235
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CMEE: (0-1)"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
