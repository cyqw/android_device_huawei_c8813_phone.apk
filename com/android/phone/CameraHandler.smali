.class public Lcom/android/phone/CameraHandler;
.super Ljava/lang/Object;
.source "CameraHandler.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CameraHandler$CameraState;
    }
.end annotation


# static fields
.field private static sHolder:Lcom/android/phone/CameraHandler;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCameraState:Lcom/android/phone/CameraHandler$CameraState;

.field private mContext:Landroid/content/Context;

.field private mFrontCameraId:I

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v3, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    .line 60
    iput v3, p0, Lcom/android/phone/CameraHandler;->mBackCameraId:I

    iput v3, p0, Lcom/android/phone/CameraHandler;->mFrontCameraId:I

    .line 62
    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    iput-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    .line 94
    iput-object p1, p0, Lcom/android/phone/CameraHandler;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/android/phone/CameraHandler;->mNumberOfCameras:I

    .line 96
    iget v1, p0, Lcom/android/phone/CameraHandler;->mNumberOfCameras:I

    new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/android/phone/CameraHandler;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget v1, p0, Lcom/android/phone/CameraHandler;->mNumberOfCameras:I

    if-ge v0, v1, :cond_51

    .line 98
    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v2, v1, v0

    .line 99
    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 100
    iget v1, p0, Lcom/android/phone/CameraHandler;->mBackCameraId:I

    if-ne v1, v3, :cond_3f

    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_3f

    .line 101
    iput v0, p0, Lcom/android/phone/CameraHandler;->mBackCameraId:I

    .line 103
    :cond_3f
    iget v1, p0, Lcom/android/phone/CameraHandler;->mFrontCameraId:I

    if-ne v1, v3, :cond_4e

    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4e

    .line 104
    iput v0, p0, Lcom/android/phone/CameraHandler;->mFrontCameraId:I

    .line 97
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 107
    :cond_51
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/phone/CameraHandler;
    .registers 3
    .parameter "context"

    .prologue
    .line 83
    const-class v1, Lcom/android/phone/CameraHandler;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/phone/CameraHandler;->sHolder:Lcom/android/phone/CameraHandler;

    if-nez v0, :cond_e

    .line 84
    new-instance v0, Lcom/android/phone/CameraHandler;

    invoke-direct {v0, p0}, Lcom/android/phone/CameraHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/CameraHandler;->sHolder:Lcom/android/phone/CameraHandler;

    .line 86
    :cond_e
    sget-object v0, Lcom/android/phone/CameraHandler;->sHolder:Lcom/android/phone/CameraHandler;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 379
    const-string v0, "VideoCallCameraManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-ne v0, v1, :cond_27

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not the right camera state for this operation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_3f

    .line 203
    :goto_25
    monitor-exit p0

    return-void

    .line 197
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 198
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CameraHandler;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    .line 202
    sget-object v0, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    iput-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_3f

    goto :goto_25

    .line 191
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackCameraId()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Lcom/android/phone/CameraHandler;->mBackCameraId:I

    return v0
.end method

.method public getCameraDirection()I
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    .line 324
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    iget v1, p0, Lcom/android/phone/CameraHandler;->mFrontCameraId:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getCameraParameters()Landroid/hardware/Camera$Parameters;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_6

    .line 228
    const/4 v0, 0x0

    .line 230
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_5
.end method

.method public getCameraState()Lcom/android/phone/CameraHandler$CameraState;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    return-object v0
.end method

.method public getFrontCameraId()I
    .registers 2

    .prologue
    .line 260
    iget v0, p0, Lcom/android/phone/CameraHandler;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/android/phone/CameraHandler;->mNumberOfCameras:I

    return v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 310
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 4
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 369
    invoke-static {}, Lcom/android/phone/MediaHandler;->canSendPreview()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 370
    invoke-static {p1}, Lcom/android/phone/MediaHandler;->sendPreviewFrame([B)V

    .line 372
    :cond_9
    return-void
.end method

.method public declared-synchronized open(I)Z
    .registers 6
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 130
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_18

    .line 131
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "DevicePolicyManager not available"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    .line 128
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2

    .line 134
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_18
    const/4 v2, 0x0

    :try_start_19
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 135
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Camera is diabled"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_27
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_3a

    iget v2, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    if-eq v2, p1, :cond_3a

    .line 139
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 140
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    .line 141
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    .line 143
    :cond_3a
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_15

    if-nez v2, :cond_77

    .line 145
    :try_start_3e
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    .line 146
    iput p1, p0, Lcom/android/phone/CameraHandler;->mCameraId:I
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_15
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_46} :catch_5a

    .line 151
    :try_start_46
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CameraHandler;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 161
    :goto_4e
    sget-object v2, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STOPPED:Lcom/android/phone/CameraHandler$CameraState;

    iput-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    .line 162
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_15

    .line 163
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 147
    :catch_5a
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to connect Camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V

    .line 149
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_77
    .catchall {:try_start_5b .. :try_end_77} :catchall_15

    .line 154
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_77
    :try_start_77
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_15
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7c} :catch_84

    .line 159
    :try_start_7c
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/android/phone/CameraHandler;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_4e

    .line 155
    :catch_84
    move-exception v1

    .line 156
    .local v1, e:Ljava/io/IOException;
    const-string v2, "reconnect failed."

    invoke-direct {p0, v2}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V

    .line 157
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_90
    .catchall {:try_start_7c .. :try_end_90} :catchall_15
.end method

.method public setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 3
    .parameter "parameters"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    .line 243
    :goto_4
    return-void

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_4
.end method

.method public setDisplay(Landroid/graphics/SurfaceTexture;)V
    .registers 5
    .parameter "surfaceTexture"

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_5

    .line 285
    :goto_4
    return-void

    .line 281
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 282
    :catch_b
    move-exception v0

    .line 283
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDisplayOrientation()V
    .registers 8

    .prologue
    .line 333
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 336
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    const/4 v0, 0x0

    .line 337
    .local v0, degrees:I
    const/4 v3, 0x0

    .line 340
    .local v3, rotation:I
    iget-object v5, p0, Lcom/android/phone/CameraHandler;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 342
    .local v4, wm:Landroid/view/WindowManager;
    if-nez v4, :cond_18

    .line 343
    const-string v5, "WindowManager not available"

    invoke-direct {p0, v5}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V

    .line 346
    :cond_18
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 347
    packed-switch v3, :pswitch_data_50

    .line 354
    :goto_23
    iget v5, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    invoke-static {v5, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 355
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_47

    .line 356
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v5, v0

    rem-int/lit16 v2, v5, 0x168

    .line 357
    .local v2, result:I
    rsub-int v5, v2, 0x168

    rem-int/lit16 v2, v5, 0x168

    .line 361
    :goto_36
    iget-object v5, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 362
    return-void

    .line 348
    .end local v2           #result:I
    :pswitch_3c
    const/4 v0, 0x0

    goto :goto_23

    .line 349
    :pswitch_3e
    const/16 v0, 0x5a

    goto :goto_23

    .line 350
    :pswitch_41
    const/16 v0, 0xb4

    goto :goto_23

    .line 351
    :pswitch_44
    const/16 v0, 0x10e

    goto :goto_23

    .line 359
    :cond_47
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v5, v0

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v2, v5, 0x168

    .restart local v2       #result:I
    goto :goto_36

    .line 347
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3e
        :pswitch_41
        :pswitch_44
    .end packed-switch
.end method

.method public startPreview(Landroid/graphics/SurfaceTexture;)V
    .registers 4
    .parameter "mSurfaceTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STOPPED:Lcom/android/phone/CameraHandler$CameraState;

    if-eq v0, v1, :cond_25

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not the right camera state for this operation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V

    .line 185
    :goto_24
    return-void

    .line 180
    :cond_25
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/phone/CameraHandler;->setDisplayOrientation()V

    .line 183
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 184
    sget-object v0, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STARTED:Lcom/android/phone/CameraHandler$CameraState;

    iput-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    goto :goto_24
.end method

.method public stopPreview()V
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STARTED:Lcom/android/phone/CameraHandler$CameraState;

    if-eq v0, v1, :cond_25

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not the right camera state for this operation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V

    .line 218
    :goto_24
    return-void

    .line 215
    :cond_25
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 216
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 217
    sget-object v0, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STOPPED:Lcom/android/phone/CameraHandler$CameraState;

    iput-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    goto :goto_24
.end method
