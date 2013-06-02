.class Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;
.super Ljava/lang/Object;
.source "InCallScreen_DSDA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen_DSDA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InCallBluetoothUtils"
.end annotation


# static fields
.field private static mInstance:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;


# instance fields
.field protected mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field protected mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field protected mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 2260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2480
    new-instance v0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils$1;-><init>(Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2261
    iget-object v0, p1, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 2263
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_2a

    .line 2267
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2268
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen_DSDA;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2275
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mContext:Landroid/content/Context;

    .line 2276
    :cond_2a
    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2243
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method public static getInstance(Lcom/android/phone/InCallScreen_DSDA;)Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;
    .registers 2
    .parameter "context"

    .prologue
    .line 2254
    sget-object v0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mInstance:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    if-nez v0, :cond_b

    .line 2255
    new-instance v0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;-><init>(Lcom/android/phone/InCallScreen_DSDA;)V

    sput-object v0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mInstance:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    .line 2257
    :cond_b
    sget-object v0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mInstance:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    return-object v0
.end method


# virtual methods
.method connectBluetoothAudio()V
    .registers 3

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    .line 2418
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 2426
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionPending:Z

    .line 2427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionRequestTime:J

    .line 2428
    return-void
.end method

.method disconnectBluetoothAudio()V
    .registers 2

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    .line 2470
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 2472
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionPending:Z

    .line 2473
    return-void
.end method

.method isBluetoothAudioConnected()Z
    .registers 3

    .prologue
    .line 2344
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_6

    .line 2346
    const/4 v0, 0x0

    .line 2349
    :goto_5
    return v0

    .line 2348
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 2349
    .local v0, isAudioOn:Z
    goto :goto_5
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2363
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2386
    :cond_8
    :goto_8
    return v2

    .line 2371
    :cond_9
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionPending:Z

    if-eqz v4, :cond_1f

    .line 2372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionRequestTime:J

    sub-long v0, v4, v6

    .line 2374
    .local v0, timeSinceRequest:J
    const-wide/16 v4, 0x1388

    cmp-long v4, v0, v4

    if-ltz v4, :cond_8

    .line 2381
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionPending:Z

    move v2, v3

    .line 2382
    goto :goto_8

    .end local v0           #timeSinceRequest:J
    :cond_1f
    move v2, v3

    .line 2386
    goto :goto_8
.end method

.method isBluetoothAvailable()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2305
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v4, :cond_7

    move v2, v3

    .line 2337
    :cond_6
    :goto_6
    return v2

    .line 2326
    :cond_7
    const/4 v2, 0x0

    .line 2327
    .local v2, isConnected:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_6

    .line 2328
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2330
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 2331
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2332
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x1

    goto :goto_6
.end method
