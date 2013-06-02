.class Lcom/android/phone/multiwaveview/MultiWaveView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


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
    .line 194
    iput-object p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/phone/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$600(Lcom/android/phone/multiwaveview/MultiWaveView;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 197
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/phone/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$600(Lcom/android/phone/multiwaveview/MultiWaveView;)I

    move-result v1

    #calls: Lcom/android/phone/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$700(Lcom/android/phone/multiwaveview/MultiWaveView;I)V

    .line 198
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    #setter for: Lcom/android/phone/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$602(Lcom/android/phone/multiwaveview/MultiWaveView;I)I

    .line 199
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    #calls: Lcom/android/phone/multiwaveview/MultiWaveView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$800(Lcom/android/phone/multiwaveview/MultiWaveView;ZZ)V

    .line 201
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    #setter for: Lcom/android/phone/multiwaveview/MultiWaveView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$902(Lcom/android/phone/multiwaveview/MultiWaveView;Z)Z

    .line 202
    return-void
.end method
