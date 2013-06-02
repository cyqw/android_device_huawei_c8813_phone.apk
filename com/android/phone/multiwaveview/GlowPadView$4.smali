.class Lcom/android/phone/multiwaveview/GlowPadView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/multiwaveview/GlowPadView;
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
    .line 182
    iput-object p1, p0, Lcom/android/phone/multiwaveview/GlowPadView$4;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView$4;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    #getter for: Lcom/android/phone/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->access$500(Lcom/android/phone/multiwaveview/GlowPadView;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 185
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView$4;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView$4;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    #getter for: Lcom/android/phone/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/phone/multiwaveview/GlowPadView;->access$500(Lcom/android/phone/multiwaveview/GlowPadView;)I

    move-result v1

    #calls: Lcom/android/phone/multiwaveview/GlowPadView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->access$600(Lcom/android/phone/multiwaveview/GlowPadView;I)V

    .line 186
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView$4;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    #setter for: Lcom/android/phone/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->access$502(Lcom/android/phone/multiwaveview/GlowPadView;I)I

    .line 191
    :cond_19
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView$4;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    #setter for: Lcom/android/phone/multiwaveview/GlowPadView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->access$702(Lcom/android/phone/multiwaveview/GlowPadView;Z)Z

    .line 192
    return-void
.end method
