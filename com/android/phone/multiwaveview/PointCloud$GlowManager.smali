.class public Lcom/android/phone/multiwaveview/PointCloud$GlowManager;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/multiwaveview/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlowManager"
.end annotation


# instance fields
.field private alpha:F

.field private radius:F

.field final synthetic this$0:Lcom/android/phone/multiwaveview/PointCloud;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/phone/multiwaveview/PointCloud;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object p1, p0, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->this$0:Lcom/android/phone/multiwaveview/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->radius:F

    .line 72
    iput v0, p0, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->alpha:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/multiwaveview/PointCloud$GlowManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->x:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/multiwaveview/PointCloud$GlowManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->y:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/multiwaveview/PointCloud$GlowManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->radius:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/multiwaveview/PointCloud$GlowManager;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->alpha:F

    return v0
.end method


# virtual methods
.method public setRadius(F)V
    .registers 2
    .parameter "r"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->radius:F

    .line 100
    return-void
.end method

.method public setX(F)V
    .registers 2
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->x:F

    .line 76
    return-void
.end method

.method public setY(F)V
    .registers 2
    .parameter "y1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->y:F

    .line 84
    return-void
.end method
