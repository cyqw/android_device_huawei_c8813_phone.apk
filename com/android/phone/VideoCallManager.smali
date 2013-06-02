.class public Lcom/android/phone/VideoCallManager;
.super Ljava/lang/Object;
.source "VideoCallManager.java"


# static fields
.field private static sVideoCallManager:Lcom/android/phone/VideoCallManager;


# instance fields
.field private mCameraHandler:Lcom/android/phone/CameraHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/android/phone/CameraHandler;->getInstance(Landroid/content/Context;)Lcom/android/phone/CameraHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    .line 58
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 66
    const-class v1, Lcom/android/phone/VideoCallManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/phone/VideoCallManager;->sVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-nez v0, :cond_e

    .line 67
    new-instance v0, Lcom/android/phone/VideoCallManager;

    invoke-direct {v0, p0}, Lcom/android/phone/VideoCallManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/VideoCallManager;->sVideoCallManager:Lcom/android/phone/VideoCallManager;

    .line 69
    :cond_e
    sget-object v0, Lcom/android/phone/VideoCallManager;->sVideoCallManager:Lcom/android/phone/VideoCallManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public closeCamera()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->close()V

    .line 158
    return-void
.end method

.method public getBackCameraId()I
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getBackCameraId()I

    move-result v0

    return v0
.end method

.method public getCameraDirection()I
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getCameraDirection()I

    move-result v0

    return v0
.end method

.method public getCameraParameters()Landroid/hardware/Camera$Parameters;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getCameraPreviewSize(IZ)Landroid/hardware/Camera$Size;
    .registers 12
    .parameter "targetSize"
    .parameter "isHeight"

    .prologue
    .line 235
    const-wide v2, 0x7fefffffffffffffL

    .line 236
    .local v2, minDiff:D
    const/4 v4, 0x0

    .line 238
    .local v4, optimalSize:Landroid/hardware/Camera$Size;
    iget-object v7, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v7}, Lcom/android/phone/CameraHandler;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 239
    .local v1, mSupportedPreviewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v1, :cond_10

    const/4 v7, 0x0

    .line 257
    :goto_f
    return-object v7

    .line 243
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 244
    .local v5, size:Landroid/hardware/Camera$Size;
    const/4 v6, 0x0

    .line 245
    .local v6, srcSize:I
    if-eqz p2, :cond_39

    .line 246
    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    .line 252
    :goto_25
    sub-int v7, v6, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v7, v7, v2

    if-gez v7, :cond_14

    .line 253
    move-object v4, v5

    .line 254
    sub-int v7, v6, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v2, v7

    goto :goto_14

    .line 249
    :cond_39
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    goto :goto_25

    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #srcSize:I
    :cond_3c
    move-object v7, v4

    .line 257
    goto :goto_f
.end method

.method public getCameraState()Lcom/android/phone/CameraHandler$CameraState;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    return-object v0
.end method

.method public getFrontCameraId()I
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getFrontCameraId()I

    move-result v0

    return v0
.end method

.method public getNegotiatedHeight()I
    .registers 2

    .prologue
    .line 98
    invoke-static {}, Lcom/android/phone/MediaHandler;->getNegotiatedHeight()I

    move-result v0

    return v0
.end method

.method public getNegotiatedWidth()I
    .registers 2

    .prologue
    .line 105
    invoke-static {}, Lcom/android/phone/MediaHandler;->getNegotiatedWidth()I

    move-result v0

    return v0
.end method

.method public getNumberOfCameras()I
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public declared-synchronized openCamera(I)Z
    .registers 3
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/CameraHandler;->open(I)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 3
    .parameter "parameters"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/CameraHandler;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 185
    return-void
.end method

.method public setDisplay(Landroid/graphics/SurfaceTexture;)V
    .registers 3
    .parameter "surfaceTexture"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/CameraHandler;->setDisplay(Landroid/graphics/SurfaceTexture;)V

    .line 221
    return-void
.end method

.method public setFarEndSurface(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .parameter "st"

    .prologue
    .line 91
    invoke-static {p1}, Lcom/android/phone/MediaHandler;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 92
    return-void
.end method

.method public startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    .registers 3
    .parameter "surfaceTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/CameraHandler;->startPreview(Landroid/graphics/SurfaceTexture;)V

    .line 151
    return-void
.end method

.method public stopCameraPreview()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->stopPreview()V

    .line 166
    return-void
.end method
