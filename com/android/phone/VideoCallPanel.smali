.class public Lcom/android/phone/VideoCallPanel;
.super Landroid/widget/RelativeLayout;
.source "VideoCallPanel.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VideoCallPanel$1;,
        Lcom/android/phone/VideoCallPanel$ZoomChangeListener;
    }
.end annotation


# instance fields
.field private mBackCameraId:I

.field private mCameraId:I

.field private mCameraPicker:Landroid/widget/ImageView;

.field private mCameraPreview:Landroid/view/TextureView;

.field private mCameraSurface:Landroid/graphics/SurfaceTexture;

.field private mContext:Landroid/content/Context;

.field private mFarEndSurface:Landroid/graphics/SurfaceTexture;

.field private mFarEndView:Landroid/view/TextureView;

.field private mFrontCameraId:I

.field private mIsMediaLoopback:Z

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mPreviewSize:Landroid/hardware/Camera$Size;

.field private mVideoCallManager:Lcom/android/phone/VideoCallManager;

.field private mVideoCallPanel:Landroid/view/ViewGroup;

.field private mZoomControl:Lcom/android/phone/ZoomControlBar;

.field private mZoomMax:I

.field private mZoomValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 100
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 105
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 110
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VideoCallPanel;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->onZoomValueChanged(I)V

    return-void
.end method

.method private closeCamera()V
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->closeCamera()V

    .line 251
    return-void
.end method

.method private initializeCamera()V
    .registers 2

    .prologue
    .line 207
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->openCamera(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 214
    :goto_8
    return-void

    .line 210
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeZoom()V

    .line 211
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCameraParams()V

    .line 213
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->startPreview()V

    goto :goto_8
.end method

.method private initializeCameraParams()V
    .registers 5

    .prologue
    .line 396
    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    if-eqz v1, :cond_15

    .line 399
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0xb0

    const/16 v3, 0x90

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 405
    :goto_d
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/phone/VideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 410
    :goto_14
    return-void

    .line 401
    :cond_15
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNegotiatedWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v3}, Lcom/android/phone/VideoCallManager;->getNegotiatedHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_d

    .line 406
    :catch_27
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting Camera preview size exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Preview sizes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private initializeZoom()V
    .registers 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 359
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_18

    .line 360
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setVisibility(I)V

    .line 371
    :goto_17
    return-void

    .line 364
    :cond_18
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomMax:I

    .line 368
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setZoomMax(I)V

    .line 369
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setZoomIndex(I)V

    .line 370
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    new-instance v1, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setOnZoomChangeListener(Lcom/android/phone/ZoomControl$OnZoomChangedListener;)V

    goto :goto_17
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 466
    const-string v0, "VideoCallPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 470
    const-string v0, "VideoCallPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method private onZoomValueChanged(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 380
    iput p1, p0, Lcom/android/phone/VideoCallPanel;->mZoomValue:I

    .line 383
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 384
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 385
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 387
    :cond_18
    return-void
.end method

.method private openCamera(I)Z
    .registers 6
    .parameter "cameraId"

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 226
    .local v1, result:Z
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2, p1}, Lcom/android/phone/VideoCallManager;->openCamera(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 229
    .end local v1           #result:Z
    :goto_7
    return v1

    .line 227
    .restart local v1       #result:Z
    :catch_8
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open camera device, error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private resizeCameraPreview(I)V
    .registers 6
    .parameter "targetSize"

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    div-int/lit8 v2, p1, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/VideoCallManager;->getCameraPreviewSize(IZ)Landroid/hardware/Camera$Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 422
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_4e

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera view width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 425
    .local v0, cameraPreivewLp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 426
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 427
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    .end local v0           #cameraPreivewLp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4e
    return-void
.end method

.method private resizeFarEndView(II)V
    .registers 5
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 440
    .local v0, farEndViewLp:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 441
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 442
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    return-void
.end method

.method private startPreview()V
    .registers 4

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/android/phone/VideoCallManager;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 244
    :goto_d
    return-void

    .line 240
    :catch_e
    move-exception v0

    .line 241
    .local v0, ioe:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while setting preview texture, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private stopPreview()V
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->stopCameraPreview()V

    .line 259
    return-void
.end method

.method private switchCamera(I)V
    .registers 4
    .parameter "cameraId"

    .prologue
    .line 451
    iput p1, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    .line 454
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-eq v0, v1, :cond_12

    .line 455
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 456
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 460
    :cond_12
    const/4 v0, -0x1

    if-eq p1, v0, :cond_18

    .line 461
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 463
    :cond_18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getCameraDirection()I

    move-result v0

    .line 339
    .local v0, direction:I
    packed-switch v0, :pswitch_data_1c

    .line 350
    :goto_9
    return-void

    .line 341
    :pswitch_a
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_9

    .line 344
    :pswitch_10
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_9

    .line 347
    :pswitch_16
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_9

    .line 339
    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_a
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 122
    const-string v1, "net.lte.VT_LOOPBACK_ENABLE"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, property:I
    if-ne v0, v2, :cond_80

    move v1, v2

    :goto_e
    iput-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 126
    const v1, 0x7f0900b8

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallPanel:Landroid/view/ViewGroup;

    .line 127
    const v1, 0x7f0900bd

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ZoomControlBar;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    .line 128
    const v1, 0x7f0900b9

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    .line 129
    const v1, 0x7f0900ba

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    .line 130
    const v1, 0x7f0900bc

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    .line 133
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 134
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 135
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/VideoCallManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    .line 139
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getBackCameraId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    .line 140
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getFrontCameraId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    .line 143
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mNumberOfCameras:I

    .line 144
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mNumberOfCameras:I

    if-le v1, v2, :cond_82

    .line 145
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    :goto_7f
    return-void

    :cond_80
    move v1, v3

    .line 123
    goto :goto_e

    .line 147
    :cond_82
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7f
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 199
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "xNew"
    .parameter "yNew"
    .parameter "xOld"
    .parameter "yOld"

    .prologue
    .line 188
    invoke-direct {p0, p2}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(I)V

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 190
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 266
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    .line 267
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-ne v0, v1, :cond_1c

    .line 268
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 279
    :cond_1b
    :goto_1b
    return-void

    .line 273
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setDisplay(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1b

    .line 275
    :cond_24
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 276
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    .line 277
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1b
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4
    .parameter "surface"

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 284
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 285
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 286
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    .line 291
    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_17
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 288
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    .line 289
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_15
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 302
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .parameter "surface"

    .prologue
    .line 297
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 309
    if-ne p1, p0, :cond_6

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-nez v0, :cond_7

    .line 330
    :cond_6
    :goto_6
    return-void

    .line 313
    :cond_7
    sparse-switch p2, :sswitch_data_2a

    goto :goto_6

    .line 325
    :sswitch_b
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-ne v0, v1, :cond_6

    .line 326
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    goto :goto_6

    .line 319
    :sswitch_19
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-eq v0, v1, :cond_6

    .line 320
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 321
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    goto :goto_6

    .line 313
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_b
        0x4 -> :sswitch_19
        0x8 -> :sswitch_19
    .end sparse-switch
.end method
