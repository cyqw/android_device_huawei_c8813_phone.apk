.class Lcom/android/phone/multiwaveview/GlowPadView$3;
.super Ljava/lang/Object;
.source "GlowPadView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 175
    iput-object p1, p0, Lcom/android/phone/multiwaveview/GlowPadView$3;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView$3;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->invalidate()V

    .line 178
    return-void
.end method
