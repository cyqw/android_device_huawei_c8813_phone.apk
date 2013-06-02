.class public Lcom/android/phone/MediaHandler;
.super Landroid/os/Handler;
.source "MediaHandler.java"


# static fields
.field private static isReadyToReceivePreview:Z

.field private static mNegotiatedFPS:S

.field private static mNegotiatedHeight:I

.field private static mNegotiatedWidth:I

.field private static sSurface:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/16 v0, 0xf0

    sput v0, Lcom/android/phone/MediaHandler;->mNegotiatedHeight:I

    .line 65
    const/16 v0, 0x140

    sput v0, Lcom/android/phone/MediaHandler;->mNegotiatedWidth:I

    .line 66
    const/16 v0, 0x14

    sput-short v0, Lcom/android/phone/MediaHandler;->mNegotiatedFPS:S

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MediaHandler;->isReadyToReceivePreview:Z

    .line 71
    const-string v0, "vt_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static declared-synchronized canSendPreview()Z
    .registers 2

    .prologue
    .line 143
    const-class v0, Lcom/android/phone/MediaHandler;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/phone/MediaHandler;->isReadyToReceivePreview:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getNegotiatedHeight()I
    .registers 1

    .prologue
    .line 132
    sget v0, Lcom/android/phone/MediaHandler;->mNegotiatedHeight:I

    return v0
.end method

.method public static getNegotiatedWidth()I
    .registers 1

    .prologue
    .line 139
    sget v0, Lcom/android/phone/MediaHandler;->mNegotiatedWidth:I

    return v0
.end method

.method private static native nativeHandleRawFrame([B)V
.end method

.method private static native nativeSetSurface(Landroid/graphics/SurfaceTexture;)I
.end method

.method public static sendPreviewFrame([B)V
    .registers 1
    .parameter "frame"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/phone/MediaHandler;->nativeHandleRawFrame([B)V

    .line 98
    return-void
.end method

.method public static setSurface(Landroid/graphics/SurfaceTexture;)V
    .registers 1
    .parameter "st"

    .prologue
    .line 105
    sput-object p0, Lcom/android/phone/MediaHandler;->sSurface:Landroid/graphics/SurfaceTexture;

    .line 106
    invoke-static {p0}, Lcom/android/phone/MediaHandler;->nativeSetSurface(Landroid/graphics/SurfaceTexture;)I

    .line 107
    return-void
.end method
