.class Lcom/android/phone/multiwaveview/MultiWaveView$3;
.super Ljava/lang/Object;
.source "MultiWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/multiwaveview/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/multiwaveview/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView$3;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$3;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView$3;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;
    invoke-static {v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$500(Lcom/android/phone/multiwaveview/MultiWaveView;)Lcom/android/phone/multiwaveview/TargetDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->invalidateGlobalRegion(Lcom/android/phone/multiwaveview/TargetDrawable;)V

    .line 189
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$3;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->invalidate()V

    .line 190
    return-void
.end method
