.class public final enum Lcom/android/phone/CameraHandler$CameraState;
.super Ljava/lang/Enum;
.source "CameraHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CameraHandler$CameraState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CameraHandler$CameraState;

.field public static final enum CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

.field public static final enum PREVIEW_STARTED:Lcom/android/phone/CameraHandler$CameraState;

.field public static final enum PREVIEW_STOPPED:Lcom/android/phone/CameraHandler$CameraState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/android/phone/CameraHandler$CameraState;

    const-string v1, "CAMERA_CLOSED"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CameraHandler$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    .line 74
    new-instance v0, Lcom/android/phone/CameraHandler$CameraState;

    const-string v1, "PREVIEW_STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CameraHandler$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STOPPED:Lcom/android/phone/CameraHandler$CameraState;

    .line 75
    new-instance v0, Lcom/android/phone/CameraHandler$CameraState;

    const-string v1, "PREVIEW_STARTED"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CameraHandler$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STARTED:Lcom/android/phone/CameraHandler$CameraState;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/CameraHandler$CameraState;

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STOPPED:Lcom/android/phone/CameraHandler$CameraState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STARTED:Lcom/android/phone/CameraHandler$CameraState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/CameraHandler$CameraState;->$VALUES:[Lcom/android/phone/CameraHandler$CameraState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CameraHandler$CameraState;
    .registers 2
    .parameter

    .prologue
    .line 72
    const-class v0, Lcom/android/phone/CameraHandler$CameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CameraHandler$CameraState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/CameraHandler$CameraState;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/phone/CameraHandler$CameraState;->$VALUES:[Lcom/android/phone/CameraHandler$CameraState;

    invoke-virtual {v0}, [Lcom/android/phone/CameraHandler$CameraState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CameraHandler$CameraState;

    return-object v0
.end method
