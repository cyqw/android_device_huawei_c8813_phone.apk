.class Lcom/android/phone/multiwaveview/GlowPadView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/multiwaveview/GlowPadView;->startWaveAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/android/phone/multiwaveview/GlowPadView;)V
    .registers 2
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/phone/multiwaveview/GlowPadView$5;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animator"

    .prologue
    const/4 v1, 0x0

    .line 714
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView$5;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    #getter for: Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;
    invoke-static {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->access$800(Lcom/android/phone/multiwaveview/GlowPadView;)Lcom/android/phone/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/PointCloud;->waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 715
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView$5;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    #getter for: Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;
    invoke-static {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->access$800(Lcom/android/phone/multiwaveview/GlowPadView;)Lcom/android/phone/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/PointCloud;->waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 716
    return-void
.end method
