.class Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/phone/multiwaveview/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/phone/multiwaveview/GlowPadView;


# direct methods
.method private constructor <init>(Lcom/android/phone/multiwaveview/GlowPadView;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/multiwaveview/GlowPadView;Lcom/android/phone/multiwaveview/GlowPadView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/phone/multiwaveview/GlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 139
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_15

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/Tweener;

    .line 141
    .local v0, anim:Lcom/android/phone/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 143
    .end local v0           #anim:Lcom/android/phone/multiwaveview/Tweener;
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->clear()V

    .line 144
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 129
    iget-boolean v3, p0, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_5

    .line 135
    :cond_4
    return-void

    .line 130
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 131
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_4

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/Tweener;

    .line 133
    .local v0, anim:Lcom/android/phone/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 148
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_15

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/Tweener;

    .line 150
    .local v0, anim:Lcom/android/phone/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 152
    .end local v0           #anim:Lcom/android/phone/multiwaveview/Tweener;
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->clear()V

    .line 153
    return-void
.end method
