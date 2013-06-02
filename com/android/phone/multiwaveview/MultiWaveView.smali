.class public Lcom/android/phone/multiwaveview/MultiWaveView;
.super Landroid/view/View;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;,
        Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;
    }
.end annotation


# instance fields
.field private isFirstTriggerTargets:Z

.field private mActiveTarget:I

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/android/phone/multiwaveview/Tweener;

.field private mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private mChevronAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

.field private mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

.field private mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

.field private mHorizontalInset:I

.field private mInitialLayout:Z

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTapRadius:F

.field private mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    sget-object v8, Lcom/android/phone/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 108
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 109
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 110
    new-instance v8, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;Lcom/android/phone/multiwaveview/MultiWaveView$1;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    .line 111
    new-instance v8, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;Lcom/android/phone/multiwaveview/MultiWaveView$1;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    .line 112
    new-instance v8, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;Lcom/android/phone/multiwaveview/MultiWaveView$1;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    .line 120
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 121
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 123
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 130
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 131
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 171
    new-instance v8, Lcom/android/phone/multiwaveview/MultiWaveView$1;

    invoke-direct {v8, p0}, Lcom/android/phone/multiwaveview/MultiWaveView$1;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 178
    new-instance v8, Lcom/android/phone/multiwaveview/MultiWaveView$2;

    invoke-direct {v8, p0}, Lcom/android/phone/multiwaveview/MultiWaveView$2;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 186
    new-instance v8, Lcom/android/phone/multiwaveview/MultiWaveView$3;

    invoke-direct {v8, p0}, Lcom/android/phone/multiwaveview/MultiWaveView$3;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 194
    new-instance v8, Lcom/android/phone/multiwaveview/MultiWaveView$4;

    invoke-direct {v8, p0}, Lcom/android/phone/multiwaveview/MultiWaveView$4;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 210
    const/16 v8, 0x30

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mGravity:I

    .line 211
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mInitialLayout:Z

    .line 214
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->isFirstTriggerTargets:Z

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 229
    .local v6, res:Landroid/content/res/Resources;
    sget-object v8, Lcom/android/internal/R$styleable;->MultiWaveView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 230
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x6

    iget v9, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 231
    const/16 v8, 0x8

    iget v9, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 232
    const/4 v8, 0x7

    iget v9, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 234
    const/16 v8, 0x9

    iget v9, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 236
    new-instance v8, Lcom/android/phone/multiwaveview/TargetDrawable;

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v8, v6, v9}, Lcom/android/phone/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 238
    iget-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v8}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTapRadius:F

    .line 239
    new-instance v8, Lcom/android/phone/multiwaveview/TargetDrawable;

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v8, v6, v9}, Lcom/android/phone/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 241
    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mAlwaysTrackFinger:Z

    .line 244
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 245
    .local v5, outValue:Landroid/util/TypedValue;
    const/4 v8, 0x4

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_fa

    .line 246
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v8}, Lcom/android/phone/multiwaveview/MultiWaveView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 247
    .local v2, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_d5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_fa

    .line 248
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 249
    .local v1, chevron:Lcom/android/phone/multiwaveview/TargetDrawable;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_e2
    iget v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    if-ge v4, v8, :cond_f7

    .line 250
    iget-object v9, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    if-nez v1, :cond_f1

    const/4 v8, 0x0

    :goto_eb
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v4, v4, 0x1

    goto :goto_e2

    .line 250
    :cond_f1
    new-instance v8, Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-direct {v8, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;-><init>(Lcom/android/phone/multiwaveview/TargetDrawable;)V

    goto :goto_eb

    .line 247
    :cond_f7
    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    .line 256
    .end local v1           #chevron:Lcom/android/phone/multiwaveview/TargetDrawable;
    .end local v2           #chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    .end local v3           #i:I
    .end local v4           #k:I
    :cond_fa
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_106

    .line 257
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v8}, Lcom/android/phone/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    .line 259
    :cond_106
    iget-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v8, :cond_112

    iget-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_11a

    .line 260
    :cond_112
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Must specify at least one target drawable"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 264
    :cond_11a
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_130

    .line 265
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    .line 266
    .local v7, resourceId:I
    if-nez v7, :cond_12d

    .line 267
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Must specify target descriptions"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 269
    :cond_12d
    invoke-virtual {p0, v7}, Lcom/android/phone/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 273
    .end local v7           #resourceId:I
    :cond_130
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_146

    .line 274
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    .line 275
    .restart local v7       #resourceId:I
    if-nez v7, :cond_143

    .line 276
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Must specify direction descriptions"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 278
    :cond_143
    invoke-virtual {p0, v7}, Lcom/android/phone/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 281
    .end local v7           #resourceId:I
    :cond_146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    sget-object v8, Landroid/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 285
    const/4 v8, 0x0

    const/16 v9, 0x30

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mGravity:I

    .line 286
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 288
    iget v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrationDuration:I

    if-lez v8, :cond_167

    const/4 v8, 0x1

    :goto_160
    invoke-virtual {p0, v8}, Lcom/android/phone/multiwaveview/MultiWaveView;->setVibrateEnabled(Z)V

    .line 289
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->assignDefaultsIfNeeded()V

    .line 290
    return-void

    .line 288
    :cond_167
    const/4 v8, 0x0

    goto :goto_160
.end method

.method static synthetic access$100(Lcom/android/phone/multiwaveview/MultiWaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/multiwaveview/MultiWaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/multiwaveview/MultiWaveView;IFF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/multiwaveview/MultiWaveView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/multiwaveview/MultiWaveView;)Lcom/android/phone/multiwaveview/TargetDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/multiwaveview/MultiWaveView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/multiwaveview/MultiWaveView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/multiwaveview/MultiWaveView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/multiwaveview/MultiWaveView;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/phone/multiwaveview/MultiWaveView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    return p1
.end method

.method private activateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V
    .registers 12
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->cancel()V

    .line 402
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/phone/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->start()V

    .line 409
    return-void
.end method

.method private announceTargets()V
    .registers 9

    .prologue
    .line 1159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1160
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1161
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_3f

    .line 1162
    invoke-direct {p0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 1166
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1167
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    .end local v4           #text:Ljava/lang/String;
    :cond_2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3c

    .line 1170
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 1161
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1173
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_3f
    return-void
.end method

.method private announceText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1177
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->sendAccessibilityEvent(I)V

    .line 1178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1179
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1003
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1d

    .line 1004
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 1006
    :cond_1d
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_38

    .line 1007
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 1010
    :cond_38
    return-void
.end method

.method private computeInsets(II)V
    .registers 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    .line 1013
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getResolvedLayoutDirection()I

    move-result v1

    .line 1014
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1016
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_2a

    .line 1025
    :pswitch_10
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHorizontalInset:I

    .line 1028
    :goto_14
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_34

    .line 1037
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVerticalInset:I

    .line 1040
    :goto_1d
    return-void

    .line 1018
    :pswitch_1e
    iput v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHorizontalInset:I

    goto :goto_14

    .line 1021
    :pswitch_21
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHorizontalInset:I

    goto :goto_14

    .line 1030
    :sswitch_24
    iput v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVerticalInset:I

    goto :goto_1d

    .line 1033
    :sswitch_27
    iput p2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVerticalInset:I

    goto :goto_1d

    .line 1016
    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_1e
        :pswitch_10
        :pswitch_21
    .end packed-switch

    .line 1028
    :sswitch_data_34
    .sparse-switch
        0x30 -> :sswitch_24
        0x50 -> :sswitch_27
    .end sparse-switch
.end method

.method private deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V
    .registers 13
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    const/4 v7, 0x0

    .line 413
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->cancel()V

    .line 414
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    sget-object v6, Lcom/android/phone/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->start()V

    .line 423
    return-void
.end method

.method private deactivateTargets()V
    .registers 5

    .prologue
    .line 470
    iget-object v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 471
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 472
    iget-object v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 473
    .local v2, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 475
    .end local v2           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_19
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 476
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_9

    .line 514
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 516
    :cond_9
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 3
    .parameter "whichTarget"

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->isFirstTriggerTargets:Z

    if-eqz v0, :cond_13

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->isFirstTriggerTargets:Z

    .line 506
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->vibrate()V

    .line 507
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_13

    .line 508
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 510
    :cond_13
    return-void
.end method

.method private dist2(FF)F
    .registers 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1145
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0xc8

    const/4 v3, 0x0

    .line 519
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 520
    .local v0, activeTarget:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_27

    move v1, v2

    .line 522
    .local v1, targetHit:Z
    :goto_a
    if-eqz v1, :cond_29

    .line 523
    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->highlightSelected(I)V

    .line 526
    const/16 v2, 0x4b0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v2, v4, v5}, Lcom/android/phone/multiwaveview/MultiWaveView;->deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 527
    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->dispatchTriggerEvent(I)V

    .line 528
    iget-boolean v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_23

    .line 530
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->stop()V

    .line 539
    :cond_23
    :goto_23
    invoke-direct {p0, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 540
    return-void

    .end local v1           #targetHit:Z
    :cond_27
    move v1, v3

    .line 520
    goto :goto_a

    .line 534
    .restart local v1       #targetHit:Z
    :cond_29
    const/high16 v4, 0x3f80

    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v6, v4, v5}, Lcom/android/phone/multiwaveview/MultiWaveView;->deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 536
    invoke-direct {p0, v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideTargets(ZZ)V

    goto :goto_23
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1193
    :cond_c
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1194
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 1195
    const/4 v0, 0x0

    .line 1198
    :goto_23
    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_23
.end method

.method private getScaledTapRadiusSquared()F
    .registers 3

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1151
    const v0, 0x3fa66666

    iget v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTapRadius:F

    mul-float/2addr v0, v1

    .line 1155
    :goto_12
    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->square(F)F

    move-result v0

    return v0

    .line 1153
    :cond_17
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTapRadius:F

    goto :goto_12
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1183
    :cond_c
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1184
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 1185
    const/4 v0, 0x0

    .line 1188
    :goto_23
    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_23
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 856
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 857
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 835
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 836
    .local v0, eventX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 837
    .local v1, eventY:F
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 838
    invoke-direct {p0, v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(FF)Z

    move-result v2

    if-nez v2, :cond_18

    .line 839
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDragging:Z

    .line 840
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->ping()V

    .line 842
    :cond_18
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .registers 38
    .parameter "event"

    .prologue
    .line 860
    const/4 v5, -0x1

    .line 861
    .local v5, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    .line 862
    .local v11, historySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    .line 863
    .local v26, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 864
    .local v16, ntargets:I
    const/16 v30, 0x0

    .line 865
    .local v30, x:F
    const/16 v31, 0x0

    .line 866
    .local v31, y:F
    const/4 v13, 0x0

    .local v13, k:I
    :goto_14
    add-int/lit8 v32, v11, 0x1

    move/from16 v0, v32

    if-ge v13, v0, :cond_132

    .line 867
    if-ge v13, v11, :cond_118

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v9

    .line 868
    .local v9, eventX:F
    :goto_22
    if-ge v13, v11, :cond_11e

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v10

    .line 870
    .local v10, eventY:F
    :goto_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v32, v0

    sub-float v28, v9, v32

    .line 871
    .local v28, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v32, v0

    sub-float v29, v10, v32

    .line 872
    .local v29, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v27, v0

    .line 873
    .local v27, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v32, v0

    cmpl-float v32, v27, v32

    if-lez v32, :cond_124

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v32, v0

    div-float v17, v32, v27

    .line 874
    .local v17, scale:F
    :goto_64
    mul-float v14, v28, v17

    .line 875
    .local v14, limitX:F
    mul-float v15, v29, v17

    .line 876
    .local v15, limitY:F
    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    .line 878
    .local v7, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDragging:Z

    move/from16 v32, v0

    if-nez v32, :cond_88

    .line 879
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/phone/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(FF)Z

    .line 882
    :cond_88
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDragging:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12a

    .line 884
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    move/from16 v33, v0

    sub-float v19, v32, v33

    .line 885
    .local v19, snapRadius:F
    mul-float v18, v19, v19

    .line 887
    .local v18, snapDistance2:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_a1
    move/from16 v0, v16

    if-ge v12, v0, :cond_12a

    .line 888
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 890
    .local v20, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    int-to-double v0, v12

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3fe0

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x4000

    mul-double v32, v32, v34

    const-wide v34, 0x400921fb54442d18L

    mul-double v32, v32, v34

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v24, v32, v34

    .line 891
    .local v24, targetMinRad:D
    int-to-double v0, v12

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3fe0

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4000

    mul-double v32, v32, v34

    const-wide v34, 0x400921fb54442d18L

    mul-double v32, v32, v34

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v22, v32, v34

    .line 892
    .local v22, targetMaxRad:D
    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v32

    if-eqz v32, :cond_115

    .line 893
    cmpl-double v32, v7, v24

    if-lez v32, :cond_ed

    cmpg-double v32, v7, v22

    if-lez v32, :cond_103

    :cond_ed
    const-wide v32, 0x401921fb54442d18L

    add-double v32, v32, v7

    cmpl-double v32, v32, v24

    if-lez v32, :cond_128

    const-wide v32, 0x401921fb54442d18L

    add-double v32, v32, v7

    cmpg-double v32, v32, v22

    if-gtz v32, :cond_128

    :cond_103
    const/4 v6, 0x1

    .line 897
    .local v6, angleMatches:Z
    :goto_104
    if-eqz v6, :cond_115

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v32

    cmpl-float v32, v32, v18

    if-lez v32, :cond_115

    .line 898
    move v5, v12

    .line 887
    .end local v6           #angleMatches:Z
    :cond_115
    add-int/lit8 v12, v12, 0x1

    goto :goto_a1

    .line 867
    .end local v7           #angleRad:D
    .end local v9           #eventX:F
    .end local v10           #eventY:F
    .end local v12           #i:I
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v17           #scale:F
    .end local v18           #snapDistance2:F
    .end local v19           #snapRadius:F
    .end local v20           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    .end local v22           #targetMaxRad:D
    .end local v24           #targetMinRad:D
    .end local v27           #touchRadius:F
    .end local v28           #tx:F
    .end local v29           #ty:F
    :cond_118
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto/16 :goto_22

    .line 868
    .restart local v9       #eventX:F
    :cond_11e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    goto/16 :goto_2a

    .line 873
    .restart local v10       #eventY:F
    .restart local v27       #touchRadius:F
    .restart local v28       #tx:F
    .restart local v29       #ty:F
    :cond_124
    const/high16 v17, 0x3f80

    goto/16 :goto_64

    .line 893
    .restart local v7       #angleRad:D
    .restart local v12       #i:I
    .restart local v14       #limitX:F
    .restart local v15       #limitY:F
    .restart local v17       #scale:F
    .restart local v18       #snapDistance2:F
    .restart local v19       #snapRadius:F
    .restart local v20       #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    .restart local v22       #targetMaxRad:D
    .restart local v24       #targetMinRad:D
    :cond_128
    const/4 v6, 0x0

    goto :goto_104

    .line 903
    .end local v12           #i:I
    .end local v18           #snapDistance2:F
    .end local v19           #snapRadius:F
    .end local v20           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    .end local v22           #targetMaxRad:D
    .end local v24           #targetMinRad:D
    :cond_12a
    move/from16 v30, v14

    .line 904
    move/from16 v31, v15

    .line 866
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_14

    .line 907
    .end local v7           #angleRad:D
    .end local v9           #eventX:F
    .end local v10           #eventY:F
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v17           #scale:F
    .end local v27           #touchRadius:F
    .end local v28           #tx:F
    .end local v29           #ty:F
    :cond_132
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDragging:Z

    move/from16 v32, v0

    if-nez v32, :cond_13b

    .line 946
    :goto_13a
    return-void

    .line 911
    :cond_13b
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v5, v0, :cond_200

    .line 912
    const/16 v32, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 913
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 920
    :goto_15b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->invalidateGlobalRegion(Lcom/android/phone/multiwaveview/TargetDrawable;)V

    .line 922
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v5, :cond_1fa

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1a5

    .line 925
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    move/from16 v32, v0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 926
    .restart local v20       #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v32, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v32

    if-eqz v32, :cond_1a5

    .line 927
    sget-object v32, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 931
    .end local v20           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_1a5
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v5, v0, :cond_21c

    .line 932
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 933
    .restart local v20       #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v32, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v32

    if-eqz v32, :cond_1c8

    .line 934
    sget-object v32, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 936
    :cond_1c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v32

    if-eqz v32, :cond_1e5

    .line 937
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v21

    .line 938
    .local v21, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 940
    .end local v21           #targetContentDescription:Ljava/lang/String;
    :cond_1e5
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/multiwaveview/MultiWaveView;->activateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 945
    .end local v20           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_1fa
    :goto_1fa
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    goto/16 :goto_13a

    .line 915
    :cond_200
    const/16 v32, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 916
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    goto/16 :goto_15b

    .line 942
    :cond_21c
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/high16 v34, 0x3f80

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/multiwaveview/MultiWaveView;->activateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1fa
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 845
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 846
    return-void
.end method

.method private hideChevrons()V
    .registers 6

    .prologue
    .line 1106
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 1107
    .local v1, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1108
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v3, :cond_18

    .line 1109
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 1110
    .local v0, chevron:Lcom/android/phone/multiwaveview/TargetDrawable;
    if-eqz v0, :cond_15

    .line 1111
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 1108
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1114
    .end local v0           #chevron:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_18
    return-void
.end method

.method private hideTargets(ZZ)V
    .registers 17
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 575
    iget-object v7, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v7}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->cancel()V

    .line 578
    iput-boolean p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 579
    if-eqz p1, :cond_83

    const/16 v1, 0xc8

    .line 580
    .local v1, duration:I
    :goto_b
    if-eqz p1, :cond_85

    const/16 v0, 0xc8

    .line 582
    .local v0, delay:I
    :goto_f
    if-eqz p2, :cond_87

    const/high16 v6, 0x3f80

    .line 583
    .local v6, targetScale:F
    :goto_13
    iget-object v7, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 584
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    if-ge v2, v3, :cond_8b

    .line 585
    iget-object v7, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 586
    .local v5, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v7, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v7}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 587
    iget-object v7, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    int-to-long v8, v1

    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/android/phone/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    iget-object v12, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v12, v10, v11

    invoke-static {v5, v8, v9, v10}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 579
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    .end local v6           #targetScale:F
    :cond_83
    const/4 v1, 0x0

    goto :goto_b

    .line 580
    .restart local v1       #duration:I
    :cond_85
    const/4 v0, 0x0

    goto :goto_f

    .line 582
    .restart local v0       #delay:I
    :cond_87
    const v6, 0x3f4ccccd

    goto :goto_13

    .line 596
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v6       #targetScale:F
    :cond_8b
    if-eqz p2, :cond_fa

    const/high16 v4, 0x3f80

    .line 597
    .local v4, ringScaleTarget:F
    :goto_8f
    iget-object v7, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    iget-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    int-to-long v9, v1

    const/16 v11, 0xe

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ease"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/android/phone/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "alpha"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "scaleX"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "scaleY"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "delay"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string v13, "onUpdate"

    aput-object v13, v11, v12

    const/16 v12, 0xb

    iget-object v13, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v13, v11, v12

    const/16 v12, 0xc

    const-string v13, "onComplete"

    aput-object v13, v11, v12

    const/16 v12, 0xd

    iget-object v13, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v13, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v7, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v7}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->start()V

    .line 607
    return-void

    .line 596
    .end local v4           #ringScaleTarget:F
    :cond_fa
    const/high16 v4, 0x3f00

    goto :goto_8f
.end method

.method private hideUnselected(I)V
    .registers 5
    .parameter "active"

    .prologue
    .line 567
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 568
    if-eq v0, p1, :cond_17

    .line 569
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 567
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 572
    :cond_1a
    return-void
.end method

.method private highlightSelected(I)V
    .registers 4
    .parameter "activeTarget"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 545
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideUnselected(I)V

    .line 546
    return-void
.end method

.method private internalSetTargetResources(I)V
    .registers 9
    .parameter "resourceId"

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 660
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetResourceId:I

    .line 661
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 662
    .local v0, count:I
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 663
    .local v3, maxWidth:I
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v2

    .line 664
    .local v2, maxHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    if-ge v1, v0, :cond_38

    .line 665
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 666
    .local v4, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 667
    invoke-virtual {v4}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 669
    .end local v4           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_38
    iget v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mMaxTargetWidth:I

    if-ne v5, v3, :cond_40

    iget v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mMaxTargetHeight:I

    if-eq v5, v2, :cond_48

    .line 670
    :cond_40
    iput v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mMaxTargetWidth:I

    .line 671
    iput v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mMaxTargetHeight:I

    .line 672
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->requestLayout()V

    .line 677
    :goto_47
    return-void

    .line 674
    :cond_48
    iget v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    iget v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-direct {p0, v5, v6}, Lcom/android/phone/multiwaveview/MultiWaveView;->updateTargetPositions(FF)V

    .line 675
    iget v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    iget v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-direct {p0, v5, v6}, Lcom/android/phone/multiwaveview/MultiWaveView;->updateChevronPositions(FF)V

    goto :goto_47
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .registers 8
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1203
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1204
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1205
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v2, :cond_22

    .line 1206
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1207
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1209
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1210
    return-object v4
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .registers 10
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 646
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 647
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 648
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 649
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v1, :cond_2d

    .line 650
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 651
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/android/phone/multiwaveview/TargetDrawable;

    if-eqz v6, :cond_2b

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_22
    invoke-direct {v5, v4, v7}, Lcom/android/phone/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 652
    .local v5, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 651
    .end local v5           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_2b
    const/4 v7, 0x0

    goto :goto_22

    .line 654
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_2d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 655
    return-object v2
.end method

.method private moveHandleTo(FFZ)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setX(F)V

    .line 831
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setY(F)V

    .line 832
    return-void
.end method

.method private resolveMeasured(II)I
    .registers 6
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 335
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 344
    move v0, v1

    .line 346
    :goto_d
    return v0

    .line 337
    :sswitch_e
    move v0, p2

    .line 338
    goto :goto_d

    .line 340
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 341
    goto :goto_d

    .line 335
    nop

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private responseToIncommingCallWhenMotionDown()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 549
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 550
    .local v0, activeTarget:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2a

    const/4 v1, 0x1

    .line 553
    .local v1, targetHit:Z
    :goto_7
    iget-object v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_2c

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v4, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 554
    if-eqz v1, :cond_26

    .line 555
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v4, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v2, v4}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 557
    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideUnselected(I)V

    .line 560
    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    invoke-direct {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->dispatchTriggerEvent(I)V

    .line 562
    :cond_26
    invoke-direct {p0, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 563
    return-void

    .end local v1           #targetHit:Z
    :cond_2a
    move v1, v3

    .line 550
    goto :goto_7

    .line 553
    .restart local v1       #targetHit:Z
    :cond_2c
    const/high16 v2, 0x3f80

    goto :goto_c
.end method

.method private setGrabbedState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 974
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_1c

    .line 975
    if-eqz p1, :cond_a

    .line 976
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->vibrate()V

    .line 978
    :cond_a
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mGrabbedState:I

    .line 979
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_1c

    .line 980
    if-nez p1, :cond_1d

    .line 981
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 985
    :goto_17
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 988
    :cond_1c
    return-void

    .line 983
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_17
.end method

.method private showTargets(Z)V
    .registers 14
    .parameter "animate"

    .prologue
    .line 610
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->stop()V

    .line 611
    iput-boolean p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 612
    if-eqz p1, :cond_84

    const/16 v0, 0x32

    .line 613
    .local v0, delay:I
    :goto_b
    if-eqz p1, :cond_86

    const/16 v1, 0xc8

    .line 614
    .local v1, duration:I
    :goto_f
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 615
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v3, :cond_88

    .line 616
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 617
    .local v4, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v5, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v4, v5}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 618
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    int-to-long v6, v1

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/android/phone/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "scaleX"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "scaleY"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "delay"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    iget-object v10, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 615
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 612
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_84
    const/4 v0, 0x0

    goto :goto_b

    .line 613
    .restart local v0       #delay:I
    :cond_86
    const/4 v1, 0x0

    goto :goto_f

    .line 626
    .restart local v1       #duration:I
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_88
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    int-to-long v7, v1

    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ease"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/android/phone/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "alpha"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "scaleX"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "scaleY"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "delay"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "onUpdate"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    iget-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "onComplete"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    iget-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->start()V

    .line 636
    return-void
.end method

.method private square(F)F
    .registers 3
    .parameter "d"

    .prologue
    .line 1141
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .registers 11
    .parameter "duration"
    .parameter "alpha"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 779
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 780
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_50

    if-eqz v0, :cond_50

    .line 781
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mBackgroundAnimator:Lcom/android/phone/multiwaveview/Tweener;

    if-eqz v1, :cond_18

    .line 782
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mBackgroundAnimator:Lcom/android/phone/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 784
    :cond_18
    int-to-long v1, p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ease"

    aput-object v4, v3, v6

    sget-object v4, Lcom/android/phone/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v4, v3, v7

    const-string v4, "alpha"

    aput-object v4, v3, v5

    const/4 v4, 0x3

    new-array v5, v5, [I

    aput v6, v5, v6

    const/high16 v6, 0x437f

    mul-float/2addr v6, p2

    float-to-int v6, v6

    aput v6, v5, v7

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "delay"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mBackgroundAnimator:Lcom/android/phone/multiwaveview/Tweener;

    .line 788
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mBackgroundAnimator:Lcom/android/phone/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 790
    :cond_50
    return-void
.end method

.method private startChevronAnimation()V
    .registers 25

    .prologue
    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f4ccccd

    mul-float v5, v18, v19

    .line 432
    .local v5, chevronStartDistance:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v18, v0

    const v19, 0x3f666666

    mul-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v6, v18, v19

    .line 433
    .local v6, chevronStopDistance:F
    const/high16 v13, 0x3f00

    .line 434
    .local v13, startScale:F
    const/high16 v11, 0x4000

    .line 435
    .local v11, endScale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    move/from16 v18, v0

    if-lez v18, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    move/from16 v19, v0

    div-int v10, v18, v19

    .line 437
    .local v10, directionCount:I
    :goto_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->stop()V

    .line 441
    const/4 v9, 0x0

    .local v9, direction:I
    :goto_4b
    if-ge v9, v10, :cond_164

    .line 442
    const-wide v18, 0x401921fb54442d18L

    int-to-double v0, v9

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    int-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v3, v18, v20

    .line 443
    .local v3, angle:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .line 444
    .local v14, sx:F
    const/16 v18, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    sub-float v15, v18, v19

    .line 445
    .local v15, sy:F
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v18, 0x0

    mul-float v19, v14, v5

    aput v19, v16, v18

    const/16 v18, 0x1

    mul-float v19, v14, v6

    aput v19, v16, v18

    .line 447
    .local v16, xrange:[F
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    mul-float v19, v15, v5

    aput v19, v17, v18

    const/16 v18, 0x1

    mul-float v19, v15, v6

    aput v19, v17, v18

    .line 449
    .local v17, yrange:[F
    const/4 v7, 0x0

    .local v7, count:I
    :goto_99
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_160

    .line 450
    mul-int/lit16 v8, v7, 0xa0

    .line 451
    .local v8, delay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    move/from16 v19, v0

    mul-int v19, v19, v9

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 452
    .local v12, icon:Lcom/android/phone/multiwaveview/TargetDrawable;
    if-nez v12, :cond_c2

    .line 449
    :goto_bd
    add-int/lit8 v7, v7, 0x1

    goto :goto_99

    .line 435
    .end local v3           #angle:D
    .end local v7           #count:I
    .end local v8           #delay:I
    .end local v9           #direction:I
    .end local v10           #directionCount:I
    .end local v12           #icon:Lcom/android/phone/multiwaveview/TargetDrawable;
    .end local v14           #sx:F
    .end local v15           #sy:F
    .end local v16           #xrange:[F
    .end local v17           #yrange:[F
    :cond_c0
    const/4 v10, 0x0

    goto :goto_41

    .line 455
    .restart local v3       #angle:D
    .restart local v7       #count:I
    .restart local v8       #delay:I
    .restart local v9       #direction:I
    .restart local v10       #directionCount:I
    .restart local v12       #icon:Lcom/android/phone/multiwaveview/TargetDrawable;
    .restart local v14       #sx:F
    .restart local v15       #sy:F
    .restart local v16       #xrange:[F
    .restart local v17       #yrange:[F
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x352

    const/16 v21, 0x10

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "ease"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "delay"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const-string v23, "x"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    aput-object v16, v21, v22

    const/16 v22, 0x6

    const-string v23, "y"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    aput-object v17, v21, v22

    const/16 v22, 0x8

    const-string v23, "alpha"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_16e

    aput-object v23, v21, v22

    const/16 v22, 0xa

    const-string v23, "scaleX"

    aput-object v23, v21, v22

    const/16 v22, 0xb

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_176

    aput-object v23, v21, v22

    const/16 v22, 0xc

    const-string v23, "scaleY"

    aput-object v23, v21, v22

    const/16 v22, 0xd

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_17e

    aput-object v23, v21, v22

    const/16 v22, 0xe

    const-string v23, "onUpdate"

    aput-object v23, v21, v22

    const/16 v22, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    move-wide/from16 v0, v19

    move-object/from16 v2, v21

    invoke-static {v12, v0, v1, v2}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    goto/16 :goto_bd

    .line 441
    .end local v8           #delay:I
    .end local v12           #icon:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_160
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4b

    .line 466
    .end local v3           #angle:D
    .end local v7           #count:I
    .end local v14           #sx:F
    .end local v15           #sy:F
    .end local v16           #xrange:[F
    .end local v17           #yrange:[F
    :cond_164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->start()V

    .line 467
    return-void

    .line 455
    :array_16e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_176
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    :array_17e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private switchToState(IFF)V
    .registers 9
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 360
    packed-switch p1, :pswitch_data_4c

    .line 397
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 362
    :pswitch_9
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 365
    invoke-direct {p0, v2, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideTargets(ZZ)V

    .line 367
    invoke-direct {p0, v1, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->startBackgroundAnimation(IF)V

    .line 368
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_8

    .line 372
    :pswitch_1a
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v4, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 373
    invoke-direct {p0, v1, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->startBackgroundAnimation(IF)V

    goto :goto_8

    .line 377
    :pswitch_22
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 378
    invoke-direct {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->showTargets(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 380
    const/16 v0, 0xc8

    invoke-direct {p0, v0, v4}, Lcom/android/phone/multiwaveview/MultiWaveView;->startBackgroundAnimation(IF)V

    .line 381
    invoke-direct {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 382
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 383
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->announceTargets()V

    goto :goto_8

    .line 394
    :pswitch_47
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->doFinish()V

    goto :goto_8

    .line 360
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1a
        :pswitch_22
        :pswitch_8
        :pswitch_8
        :pswitch_47
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 991
    iget v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float v0, p1, v4

    .line 992
    .local v0, tx:F
    iget v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float v1, p2, v4

    .line 993
    .local v1, ty:F
    iget-boolean v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mAlwaysTrackFinger:Z

    if-nez v4, :cond_1a

    invoke-direct {p0, v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v4

    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getScaledTapRadiusSquared()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_24

    .line 994
    :cond_1a
    const/4 v4, 0x2

    invoke-direct {p0, v4, p1, p2}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 995
    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 996
    iput-boolean v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDragging:Z

    move v2, v3

    .line 999
    :cond_24
    return v2
.end method

.method private updateChevronPositions(FF)V
    .registers 7
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 1095
    .local v0, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1096
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_1a

    .line 1097
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 1098
    .local v3, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    if-eqz v3, :cond_17

    .line 1099
    invoke-virtual {v3, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1100
    invoke-virtual {v3, p2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1096
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1103
    .end local v3           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_1a
    return-void
.end method

.method private updateTargetPositions(FF)V
    .registers 13
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1080
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1081
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1082
    .local v3, size:I
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v3

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 1083
    .local v0, alpha:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_3b

    .line 1084
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 1085
    .local v4, targetIcon:Lcom/android/phone/multiwaveview/TargetDrawable;
    int-to-float v6, v2

    mul-float v1, v0, v6

    .line 1086
    .local v1, angle:F
    invoke-virtual {v4, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1087
    invoke-virtual {v4, p2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1088
    iget v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->setX(F)V

    .line 1089
    iget v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->setY(F)V

    .line 1083
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1091
    .end local v1           #angle:F
    .end local v4           #targetIcon:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_3b
    return-void
.end method

.method private vibrate()V
    .registers 4

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_c

    .line 640
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 642
    :cond_c
    return-void
.end method


# virtual methods
.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method invalidateGlobalRegion(Lcom/android/phone/multiwaveview/TargetDrawable;)V
    .registers 11
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 479
    invoke-virtual {p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 480
    .local v3, width:I
    invoke-virtual {p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    .line 481
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 482
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 483
    move-object v2, p0

    .line 484
    .local v2, view:Landroid/view/View;
    :goto_24
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_63

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_63

    .line 485
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 486
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 487
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_24

    .line 492
    :cond_63
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 1118
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v5, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1119
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1120
    .local v3, ntargets:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v3, :cond_1e

    .line 1121
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 1122
    .local v4, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    if-eqz v4, :cond_1b

    .line 1123
    invoke-virtual {v4, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1120
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1126
    .end local v4           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_1e
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1127
    .local v2, nchevrons:I
    const/4 v1, 0x0

    :goto_25
    if-ge v1, v2, :cond_37

    .line 1128
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 1129
    .local v0, chevron:Lcom/android/phone/multiwaveview/TargetDrawable;
    if-eqz v0, :cond_34

    .line 1130
    invoke-virtual {v0, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1127
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1133
    .end local v0           #chevron:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_37
    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v5, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1134
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 950
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 952
    .local v0, action:I
    packed-switch v0, :pswitch_data_2e

    .line 963
    :goto_13
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 964
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 966
    .end local v0           #action:I
    :cond_19
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 954
    .restart local v0       #action:I
    :pswitch_1e
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 957
    :pswitch_23
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 960
    :pswitch_28
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 952
    nop

    :pswitch_data_2e
    .packed-switch 0x7
        :pswitch_23
        :pswitch_13
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1044
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1045
    sub-int v5, p4, p2

    .line 1046
    .local v5, width:I
    sub-int v0, p5, p3

    .line 1050
    .local v0, height:I
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    iget v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1051
    .local v4, placementWidth:F
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    iget v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1052
    .local v3, placementHeight:F
    iget v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHorizontalInset:I

    int-to-float v6, v6

    int-to-float v7, v5

    iget v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mMaxTargetWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1054
    .local v1, newWaveCenterX:F
    iget v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVerticalInset:I

    int-to-float v6, v6

    int-to-float v7, v0

    iget v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mMaxTargetHeight:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1057
    .local v2, newWaveCenterY:F
    iget-boolean v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mInitialLayout:Z

    if-eqz v6, :cond_5e

    .line 1058
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 1059
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideTargets(ZZ)V

    .line 1060
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/phone/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 1061
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mInitialLayout:Z

    .line 1064
    :cond_5e
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1065
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1067
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1068
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1070
    invoke-direct {p0, v1, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->updateTargetPositions(FF)V

    .line 1071
    invoke-direct {p0, v1, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->updateChevronPositions(FF)V

    .line 1073
    iput v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    .line 1074
    iput v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    .line 1076
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 352
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 353
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v1

    .line 354
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v0

    .line 355
    .local v0, computedHeight:I
    sub-int v4, v1, v3

    sub-int v5, v0, v2

    invoke-direct {p0, v4, v5}, Lcom/android/phone/multiwaveview/MultiWaveView;->computeInsets(II)V

    .line 356
    invoke-virtual {p0, v1, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->setMeasuredDimension(II)V

    .line 357
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 795
    .local v0, action:I
    const/4 v1, 0x0

    .line 796
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_36

    .line 825
    :goto_8
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->invalidate()V

    .line 826
    if-eqz v1, :cond_30

    const/4 v2, 0x1

    :goto_e
    return v2

    .line 798
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->handleDown(Landroid/view/MotionEvent;)V

    .line 799
    const/4 v1, 0x1

    .line 800
    goto :goto_8

    .line 803
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 805
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->responseToIncommingCallWhenMotionDown()V

    .line 807
    const/4 v1, 0x1

    .line 808
    goto :goto_8

    .line 811
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 812
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->handleUp(Landroid/view/MotionEvent;)V

    .line 813
    const/4 v1, 0x1

    .line 814
    goto :goto_8

    .line 817
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 818
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 820
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->reset(Z)V

    .line 822
    const/4 v1, 0x1

    goto :goto_8

    .line 826
    :cond_30
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_e

    .line 796
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1c
        :pswitch_14
        :pswitch_24
    .end packed-switch
.end method

.method public ping()V
    .registers 1

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->startChevronAnimation()V

    .line 759
    return-void
.end method

.method public reset(Z)V
    .registers 5
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 768
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->stop()V

    .line 769
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->stop()V

    .line 770
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->stop()V

    .line 771
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->startBackgroundAnimation(IF)V

    .line 772
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 773
    invoke-direct {p0, p1, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideTargets(ZZ)V

    .line 774
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 775
    invoke-static {}, Lcom/android/phone/multiwaveview/Tweener;->reset()V

    .line 776
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 724
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    .line 725
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 726
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 728
    :cond_b
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 703
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    .line 704
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 705
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 707
    :cond_b
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 745
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_15

    .line 746
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    .line 750
    :goto_14
    return-void

    .line 748
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_14
.end method
