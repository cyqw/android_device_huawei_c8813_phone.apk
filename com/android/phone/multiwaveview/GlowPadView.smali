.class public Lcom/android/phone/multiwaveview/GlowPadView;
.super Landroid/view/View;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;,
        Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;
    }
.end annotation


# instance fields
.field private mActiveTarget:I

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/android/phone/multiwaveview/Tweener;

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

.field private mGlowAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

.field private mHorizontalInset:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

.field private mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

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

.field private mWaveAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 211
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 99
    new-instance v8, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/phone/multiwaveview/GlowPadView;Lcom/android/phone/multiwaveview/GlowPadView$1;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    .line 100
    new-instance v8, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/phone/multiwaveview/GlowPadView;Lcom/android/phone/multiwaveview/GlowPadView$1;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    .line 101
    new-instance v8, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/phone/multiwaveview/GlowPadView;Lcom/android/phone/multiwaveview/GlowPadView$1;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    .line 109
    iput v11, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 110
    iput v7, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 112
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 119
    iput v10, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 120
    iput v10, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 160
    new-instance v8, Lcom/android/phone/multiwaveview/GlowPadView$1;

    invoke-direct {v8, p0}, Lcom/android/phone/multiwaveview/GlowPadView$1;-><init>(Lcom/android/phone/multiwaveview/GlowPadView;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 167
    new-instance v8, Lcom/android/phone/multiwaveview/GlowPadView$2;

    invoke-direct {v8, p0}, Lcom/android/phone/multiwaveview/GlowPadView$2;-><init>(Lcom/android/phone/multiwaveview/GlowPadView;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 175
    new-instance v8, Lcom/android/phone/multiwaveview/GlowPadView$3;

    invoke-direct {v8, p0}, Lcom/android/phone/multiwaveview/GlowPadView$3;-><init>(Lcom/android/phone/multiwaveview/GlowPadView;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 182
    new-instance v8, Lcom/android/phone/multiwaveview/GlowPadView$4;

    invoke-direct {v8, p0}, Lcom/android/phone/multiwaveview/GlowPadView$4;-><init>(Lcom/android/phone/multiwaveview/GlowPadView;)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 200
    const/16 v8, 0x30

    iput v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGravity:I

    .line 201
    iput-boolean v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 214
    .local v4, res:Landroid/content/res/Resources;
    sget-object v8, Lcom/android/internal/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 215
    .local v0, a:Landroid/content/res/TypedArray;
    iget v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 216
    const/16 v8, 0x8

    iget v9, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 217
    const/16 v8, 0xa

    iget v9, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 218
    const/16 v8, 0x9

    iget v9, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 220
    const/16 v8, 0xb

    iget v9, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 222
    new-instance v8, Lcom/android/phone/multiwaveview/TargetDrawable;

    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v8, v4, v9}, Lcom/android/phone/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 224
    iget-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v9, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v9}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 225
    new-instance v8, Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-direct {p0, v0, v11}, Lcom/android/phone/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v9

    invoke-direct {v8, v4, v9}, Lcom/android/phone/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 228
    const/16 v8, 0xc

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    .line 230
    const/4 v8, 0x4

    invoke-direct {p0, v0, v8}, Lcom/android/phone/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v3

    .line 231
    .local v3, pointId:I
    if-eqz v3, :cond_be

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 232
    .local v2, pointDrawable:Landroid/graphics/drawable/Drawable;
    :cond_be
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowRadius:F

    .line 234
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 237
    .local v1, outValue:Landroid/util/TypedValue;
    const/4 v8, 0x6

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 238
    iget v8, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v8}, Lcom/android/phone/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    .line 240
    :cond_d6
    iget-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v8, :cond_e2

    iget-object v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_ea

    .line 241
    :cond_e2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify at least one target drawable"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 245
    :cond_ea
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_ff

    .line 246
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    .line 247
    .local v5, resourceId:I
    if-nez v5, :cond_fc

    .line 248
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify target descriptions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 250
    :cond_fc
    invoke-virtual {p0, v5}, Lcom/android/phone/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 254
    .end local v5           #resourceId:I
    :cond_ff
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_115

    .line 255
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    .line 256
    .restart local v5       #resourceId:I
    if-nez v5, :cond_112

    .line 257
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify direction descriptions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 259
    :cond_112
    invoke-virtual {p0, v5}, Lcom/android/phone/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 262
    .end local v5           #resourceId:I
    :cond_115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    sget-object v8, Landroid/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 266
    const/16 v8, 0x30

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGravity:I

    .line 267
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    iget v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVibrationDuration:I

    if-lez v8, :cond_14d

    :goto_12d
    invoke-virtual {p0, v6}, Lcom/android/phone/multiwaveview/GlowPadView;->setVibrateEnabled(Z)V

    .line 271
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->assignDefaultsIfNeeded()V

    .line 273
    new-instance v6, Lcom/android/phone/multiwaveview/PointCloud;

    invoke-direct {v6, v2}, Lcom/android/phone/multiwaveview/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    .line 274
    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    iget v7, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mInnerRadius:F

    iget v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v6, v7, v8}, Lcom/android/phone/multiwaveview/PointCloud;->makePointCloud(FF)V

    .line 275
    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    iget-object v6, v6, Lcom/android/phone/multiwaveview/PointCloud;->glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

    iget v7, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v6, v7}, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->setRadius(F)V

    .line 276
    return-void

    :cond_14d
    move v6, v7

    .line 269
    goto :goto_12d
.end method

.method static synthetic access$100(Lcom/android/phone/multiwaveview/GlowPadView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/multiwaveview/GlowPadView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/multiwaveview/GlowPadView;IFF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/multiwaveview/GlowPadView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/multiwaveview/GlowPadView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/multiwaveview/GlowPadView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/multiwaveview/GlowPadView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/multiwaveview/GlowPadView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/multiwaveview/GlowPadView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/multiwaveview/GlowPadView;)Lcom/android/phone/multiwaveview/PointCloud;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    return-object v0
.end method

.method private announceTargets()V
    .registers 9

    .prologue
    .line 1088
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1089
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1090
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_32

    .line 1091
    invoke-direct {p0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1092
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 1095
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1096
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    .end local v4           #text:Ljava/lang/String;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1099
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3f

    .line 1100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1102
    :cond_3f
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 952
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1d

    .line 953
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 955
    :cond_1d
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_38

    .line 956
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 959
    :cond_38
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4a

    .line 960
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 962
    :cond_4a
    return-void
.end method

.method private computeInsets(II)V
    .registers 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    .line 965
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->getResolvedLayoutDirection()I

    move-result v1

    .line 966
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 968
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_2a

    .line 977
    :pswitch_10
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHorizontalInset:I

    .line 980
    :goto_14
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_34

    .line 989
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVerticalInset:I

    .line 992
    :goto_1d
    return-void

    .line 970
    :pswitch_1e
    iput v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_14

    .line 973
    :pswitch_21
    iput p1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_14

    .line 982
    :sswitch_24
    iput v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1d

    .line 985
    :sswitch_27
    iput p2, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1d

    .line 968
    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_1e
        :pswitch_10
        :pswitch_21
    .end packed-switch

    .line 980
    :sswitch_data_34
    .sparse-switch
        0x30 -> :sswitch_24
        0x50 -> :sswitch_27
    .end sparse-switch
.end method

.method private deactivateTargets()V
    .registers 5

    .prologue
    .line 419
    iget-object v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 420
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 421
    iget-object v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 422
    .local v2, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 424
    .end local v2           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_19
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 425
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_9

    .line 440
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 442
    :cond_9
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 3
    .parameter "whichTarget"

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->vibrate()V

    .line 433
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_c

    .line 434
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 436
    :cond_c
    return-void
.end method

.method private dist2(FF)F
    .registers 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1074
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .registers 8

    .prologue
    const/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 445
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 446
    .local v0, activeTarget:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_26

    const/4 v1, 0x1

    .line 448
    .local v1, targetHit:Z
    :goto_a
    if-eqz v1, :cond_28

    .line 449
    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/GlowPadView;->highlightSelected(I)V

    .line 452
    const/16 v3, 0x4b0

    iget-object v4, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v3, v5, v4}, Lcom/android/phone/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 453
    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V

    .line 454
    iget-boolean v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v3, :cond_22

    .line 456
    iget-object v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v3}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 466
    :cond_22
    :goto_22
    invoke-direct {p0, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 467
    return-void

    .end local v1           #targetHit:Z
    :cond_26
    move v1, v2

    .line 446
    goto :goto_a

    .line 460
    .restart local v1       #targetHit:Z
    :cond_28
    iget-object v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v2, v5, v3}, Lcom/android/phone/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_22
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1116
    :cond_c
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1117
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 1118
    const/4 v0, 0x0

    .line 1121
    :goto_23
    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_23
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .registers 5
    .parameter "a"
    .parameter "id"

    .prologue
    .line 279
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 280
    .local v0, tv:Landroid/util/TypedValue;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_7
.end method

.method private getScaledGlowRadiusSquared()F
    .registers 3

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1080
    const v0, 0x3fa66666

    iget v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowRadius:F

    mul-float/2addr v0, v1

    .line 1084
    :goto_12
    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/GlowPadView;->square(F)F

    move-result v0

    return v0

    .line 1082
    :cond_17
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowRadius:F

    goto :goto_12
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1106
    :cond_c
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1107
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 1108
    const/4 v0, 0x0

    .line 1111
    :goto_23
    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_23
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 811
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 812
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 790
    .local v0, eventX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 791
    .local v1, eventY:F
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 792
    invoke-direct {p0, v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v2

    if-nez v2, :cond_16

    .line 793
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mDragging:Z

    .line 797
    :goto_15
    return-void

    .line 795
    :cond_16
    invoke-direct {p0, v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto :goto_15
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .registers 37
    .parameter "event"

    .prologue
    .line 815
    const/4 v4, -0x1

    .line 816
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 817
    .local v10, historySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 818
    .local v25, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 819
    .local v15, ntargets:I
    const/16 v29, 0x0

    .line 820
    .local v29, x:F
    const/16 v30, 0x0

    .line 821
    .local v30, y:F
    const/4 v12, 0x0

    .local v12, k:I
    :goto_14
    add-int/lit8 v31, v10, 0x1

    move/from16 v0, v31

    if-ge v12, v0, :cond_12c

    .line 822
    if-ge v12, v10, :cond_112

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v8

    .line 823
    .local v8, eventX:F
    :goto_22
    if-ge v12, v10, :cond_118

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v9

    .line 825
    .local v9, eventY:F
    :goto_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterX:F

    move/from16 v31, v0

    sub-float v27, v8, v31

    .line 826
    .local v27, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterY:F

    move/from16 v31, v0

    sub-float v28, v9, v31

    .line 827
    .local v28, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v31

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v26, v0

    .line 828
    .local v26, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v31, v0

    cmpl-float v31, v26, v31

    if-lez v31, :cond_11e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v31, v0

    div-float v16, v31, v26

    .line 829
    .local v16, scale:F
    :goto_64
    mul-float v13, v27, v16

    .line 830
    .local v13, limitX:F
    mul-float v14, v28, v16

    .line 831
    .local v14, limitY:F
    move/from16 v0, v28

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 833
    .local v6, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v31, v0

    if-nez v31, :cond_88

    .line 834
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/phone/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 837
    :cond_88
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v31, v0

    if-eqz v31, :cond_124

    .line 839
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mSnapMargin:F

    move/from16 v32, v0

    sub-float v18, v31, v32

    .line 840
    .local v18, snapRadius:F
    mul-float v17, v18, v18

    .line 842
    .local v17, snapDistance2:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_a1
    if-ge v11, v15, :cond_124

    .line 843
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 845
    .local v19, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    int-to-double v0, v11

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x3fe0

    sub-double v31, v31, v33

    const-wide/high16 v33, 0x4000

    mul-double v31, v31, v33

    const-wide v33, 0x400921fb54442d18L

    mul-double v31, v31, v33

    int-to-double v0, v15

    move-wide/from16 v33, v0

    div-double v23, v31, v33

    .line 846
    .local v23, targetMinRad:D
    int-to-double v0, v11

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x3fe0

    add-double v31, v31, v33

    const-wide/high16 v33, 0x4000

    mul-double v31, v31, v33

    const-wide v33, 0x400921fb54442d18L

    mul-double v31, v31, v33

    int-to-double v0, v15

    move-wide/from16 v33, v0

    div-double v21, v31, v33

    .line 847
    .local v21, targetMaxRad:D
    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v31

    if-eqz v31, :cond_10f

    .line 848
    cmpl-double v31, v6, v23

    if-lez v31, :cond_e7

    cmpg-double v31, v6, v21

    if-lez v31, :cond_fd

    :cond_e7
    const-wide v31, 0x401921fb54442d18L

    add-double v31, v31, v6

    cmpl-double v31, v31, v23

    if-lez v31, :cond_122

    const-wide v31, 0x401921fb54442d18L

    add-double v31, v31, v6

    cmpg-double v31, v31, v21

    if-gtz v31, :cond_122

    :cond_fd
    const/4 v5, 0x1

    .line 852
    .local v5, angleMatches:Z
    :goto_fe
    if-eqz v5, :cond_10f

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v31

    cmpl-float v31, v31, v17

    if-lez v31, :cond_10f

    .line 853
    move v4, v11

    .line 842
    .end local v5           #angleMatches:Z
    :cond_10f
    add-int/lit8 v11, v11, 0x1

    goto :goto_a1

    .line 822
    .end local v6           #angleRad:D
    .end local v8           #eventX:F
    .end local v9           #eventY:F
    .end local v11           #i:I
    .end local v13           #limitX:F
    .end local v14           #limitY:F
    .end local v16           #scale:F
    .end local v17           #snapDistance2:F
    .end local v18           #snapRadius:F
    .end local v19           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    .end local v21           #targetMaxRad:D
    .end local v23           #targetMinRad:D
    .end local v26           #touchRadius:F
    .end local v27           #tx:F
    .end local v28           #ty:F
    :cond_112
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    goto/16 :goto_22

    .line 823
    .restart local v8       #eventX:F
    :cond_118
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    goto/16 :goto_2a

    .line 828
    .restart local v9       #eventY:F
    .restart local v26       #touchRadius:F
    .restart local v27       #tx:F
    .restart local v28       #ty:F
    :cond_11e
    const/high16 v16, 0x3f80

    goto/16 :goto_64

    .line 848
    .restart local v6       #angleRad:D
    .restart local v11       #i:I
    .restart local v13       #limitX:F
    .restart local v14       #limitY:F
    .restart local v16       #scale:F
    .restart local v17       #snapDistance2:F
    .restart local v18       #snapRadius:F
    .restart local v19       #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    .restart local v21       #targetMaxRad:D
    .restart local v23       #targetMinRad:D
    :cond_122
    const/4 v5, 0x0

    goto :goto_fe

    .line 858
    .end local v11           #i:I
    .end local v17           #snapDistance2:F
    .end local v18           #snapRadius:F
    .end local v19           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    .end local v21           #targetMaxRad:D
    .end local v23           #targetMinRad:D
    :cond_124
    move/from16 v29, v13

    .line 859
    move/from16 v30, v14

    .line 821
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_14

    .line 862
    .end local v6           #angleRad:D
    .end local v8           #eventX:F
    .end local v9           #eventY:F
    .end local v13           #limitX:F
    .end local v14           #limitY:F
    .end local v16           #scale:F
    .end local v26           #touchRadius:F
    .end local v27           #tx:F
    .end local v28           #ty:F
    :cond_12c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v31, v0

    if-nez v31, :cond_135

    .line 895
    :goto_134
    return-void

    .line 866
    :cond_135
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v4, v0, :cond_1d4

    .line 867
    const/16 v31, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 868
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 874
    :goto_151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v4, :cond_1ce

    .line 876
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_18e

    .line 877
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v31, v0

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 878
    .restart local v19       #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v31, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v31

    if-eqz v31, :cond_18e

    .line 879
    sget-object v31, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 883
    .end local v19           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_18e
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v4, v0, :cond_1ce

    .line 884
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 885
    .restart local v19       #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v31, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v31

    if-eqz v31, :cond_1b1

    .line 886
    sget-object v31, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 888
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v31

    if-eqz v31, :cond_1ce

    .line 889
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v20

    .line 890
    .local v20, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 894
    .end local v19           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    .end local v20           #targetContentDescription:Ljava/lang/String;
    :cond_1ce
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mActiveTarget:I

    goto/16 :goto_134

    .line 870
    :cond_1d4
    const/16 v31, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 871
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto/16 :goto_151
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 800
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 801
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .registers 13
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    const/4 v7, 0x0

    .line 406
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 407
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/phone/multiwaveview/PointCloud;->glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

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

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 416
    return-void
.end method

.method private hideTargets(ZZ)V
    .registers 20
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 487
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 488
    if-eqz p1, :cond_91

    const/16 v3, 0xc8

    .line 489
    .local v3, duration:I
    :goto_11
    if-eqz p1, :cond_94

    const/16 v2, 0xc8

    .line 491
    .local v2, delay:I
    :goto_15
    if-eqz p2, :cond_96

    const/high16 v9, 0x3f80

    .line 493
    .local v9, targetScale:F
    :goto_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 494
    .local v6, length:I
    sget-object v5, Lcom/android/phone/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 495
    .local v5, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_24
    if-ge v4, v6, :cond_9a

    .line 496
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 497
    .local v8, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v10, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v10}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v11, v3

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "ease"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    const/4 v14, 0x2

    const-string v15, "alpha"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "scaleX"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "scaleY"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "delay"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xa

    const-string v15, "onUpdate"

    aput-object v15, v13, v14

    const/16 v14, 0xb

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v15, v13, v14

    invoke-static {v8, v11, v12, v13}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 495
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 488
    .end local v2           #delay:I
    .end local v3           #duration:I
    .end local v4           #i:I
    .end local v5           #interpolator:Landroid/animation/TimeInterpolator;
    .end local v6           #length:I
    .end local v8           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    .end local v9           #targetScale:F
    :cond_91
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 489
    .restart local v3       #duration:I
    :cond_94
    const/4 v2, 0x0

    goto :goto_15

    .line 491
    .restart local v2       #delay:I
    :cond_96
    const v9, 0x3f4ccccd

    goto :goto_19

    .line 507
    .restart local v4       #i:I
    .restart local v5       #interpolator:Landroid/animation/TimeInterpolator;
    .restart local v6       #length:I
    .restart local v9       #targetScale:F
    :cond_9a
    if-eqz p2, :cond_116

    const/high16 v7, 0x3f80

    .line 509
    .local v7, ringScaleTarget:F
    :goto_9e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    int-to-long v12, v3

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "scaleX"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "scaleY"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "onComplete"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13, v14}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 518
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 519
    return-void

    .line 507
    .end local v7           #ringScaleTarget:F
    :cond_116
    const/high16 v7, 0x3f00

    goto :goto_9e
.end method

.method private hideUnselected(I)V
    .registers 5
    .parameter "active"

    .prologue
    .line 476
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 477
    if-eq v0, p1, :cond_17

    .line 478
    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 476
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 481
    :cond_1a
    return-void
.end method

.method private highlightSelected(I)V
    .registers 4
    .parameter "activeTarget"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 472
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->hideUnselected(I)V

    .line 473
    return-void
.end method

.method private internalSetTargetResources(I)V
    .registers 10
    .parameter "resourceId"

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 580
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    iput-object v5, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 581
    iput p1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetResourceId:I

    .line 583
    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 584
    .local v3, maxWidth:I
    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v2

    .line 585
    .local v2, maxHeight:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 586
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v0, :cond_34

    .line 587
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 588
    .local v4, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 589
    invoke-virtual {v4}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 591
    .end local v4           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_34
    iget v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_3c

    iget v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_44

    .line 592
    :cond_3c
    iput v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    .line 593
    iput v2, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    .line 594
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->requestLayout()V

    .line 599
    :goto_43
    return-void

    .line 596
    :cond_44
    iget v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/phone/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 597
    iget v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/phone/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_43
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
    .line 1125
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1126
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1127
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1128
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v2, :cond_22

    .line 1129
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1132
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1133
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
    .line 565
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 566
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 567
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 568
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 569
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v1, :cond_2d

    .line 570
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 571
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/android/phone/multiwaveview/TargetDrawable;

    if-eqz v6, :cond_2b

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_22
    invoke-direct {v5, v4, v7}, Lcom/android/phone/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 572
    .local v5, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 571
    .end local v5           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_2b
    const/4 v7, 0x0

    goto :goto_22

    .line 574
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_2d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 575
    return-object v2
.end method

.method private resolveMeasured(II)I
    .registers 6
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 326
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 335
    move v0, v1

    .line 337
    :goto_d
    return v0

    .line 328
    :sswitch_e
    move v0, p2

    .line 329
    goto :goto_d

    .line 331
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 332
    goto :goto_d

    .line 326
    nop

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 923
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1c

    .line 924
    if-eqz p1, :cond_a

    .line 925
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->vibrate()V

    .line 927
    :cond_a
    iput p1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGrabbedState:I

    .line 928
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1c

    .line 929
    if-nez p1, :cond_1d

    .line 930
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 934
    :goto_17
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 937
    :cond_1c
    return-void

    .line 932
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_17
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .registers 12
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 395
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/phone/multiwaveview/PointCloud;->glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

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

    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 402
    return-void
.end method

.method private showTargets(Z)V
    .registers 14
    .parameter "animate"

    .prologue
    .line 522
    iget-object v5, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 523
    iput-boolean p1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 524
    if-eqz p1, :cond_84

    const/16 v0, 0x32

    .line 525
    .local v0, delay:I
    :goto_b
    if-eqz p1, :cond_86

    const/16 v1, 0xc8

    .line 526
    .local v1, duration:I
    :goto_f
    iget-object v5, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 527
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v3, :cond_88

    .line 528
    iget-object v5, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 529
    .local v4, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v5, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v4, v5}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 530
    iget-object v5, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

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

    iget-object v10, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 524
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_84
    const/4 v0, 0x0

    goto :goto_b

    .line 525
    .restart local v0       #delay:I
    :cond_86
    const/4 v1, 0x0

    goto :goto_f

    .line 538
    .restart local v1       #duration:I
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_88
    iget-object v5, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

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

    iget-object v11, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "onComplete"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    iget-object v11, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v5, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 548
    return-void
.end method

.method private square(F)F
    .registers 3
    .parameter "d"

    .prologue
    .line 1070
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .registers 9
    .parameter "duration"
    .parameter "alpha"

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 739
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_4e

    if-eqz v0, :cond_4e

    .line 740
    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/phone/multiwaveview/Tweener;

    if-eqz v1, :cond_15

    .line 741
    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/phone/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 743
    :cond_15
    int-to-long v1, p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ease"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/android/phone/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "alpha"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/high16 v5, 0x437f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

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

    iput-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/phone/multiwaveview/Tweener;

    .line 747
    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/phone/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 749
    :cond_4e
    return-void
.end method

.method private startWaveAnimation()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 703
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 704
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/phone/multiwaveview/PointCloud;->waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 705
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/phone/multiwaveview/PointCloud;->waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 706
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/phone/multiwaveview/PointCloud;->waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/android/phone/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/android/phone/multiwaveview/GlowPadView$5;

    invoke-direct {v6, p0}, Lcom/android/phone/multiwaveview/GlowPadView$5;-><init>(Lcom/android/phone/multiwaveview/GlowPadView;)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 719
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .registers 3

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 699
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/phone/multiwaveview/PointCloud;->waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 700
    return-void
.end method

.method private switchToState(IFF)V
    .registers 10
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 351
    packed-switch p1, :pswitch_data_5e

    .line 390
    :cond_9
    :goto_9
    return-void

    .line 353
    :pswitch_a
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 354
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/android/phone/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 355
    invoke-direct {p0, v1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 356
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 357
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_9

    .line 361
    :pswitch_20
    invoke-direct {p0, v1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_9

    .line 365
    :pswitch_24
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 366
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 367
    invoke-direct {p0, v5}, Lcom/android/phone/multiwaveview/GlowPadView;->showTargets(Z)V

    .line 368
    const/16 v0, 0xc8

    invoke-direct {p0, v0, v3}, Lcom/android/phone/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 369
    invoke-direct {p0, v5}, Lcom/android/phone/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 370
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 371
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->announceTargets()V

    goto :goto_9

    .line 376
    :pswitch_47
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 377
    invoke-direct {p0, v1, v1, v3, v4}, Lcom/android/phone/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_9

    .line 382
    :pswitch_50
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 383
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/android/phone/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_9

    .line 387
    :pswitch_59
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->doFinish()V

    goto :goto_9

    .line 351
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_20
        :pswitch_24
        :pswitch_47
        :pswitch_50
        :pswitch_59
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 940
    iget v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v3

    .line 941
    .local v0, tx:F
    iget v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v3

    .line 942
    .local v1, ty:F
    iget-boolean v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v3, :cond_19

    invoke-direct {p0, v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_23

    .line 943
    :cond_19
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/android/phone/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 944
    invoke-direct {p0, v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 945
    iput-boolean v2, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mDragging:Z

    .line 948
    :goto_22
    return v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private updateGlowPosition(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/phone/multiwaveview/PointCloud;->glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

    invoke-virtual {v0, p1}, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->setX(F)V

    .line 785
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/phone/multiwaveview/PointCloud;->glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

    invoke-virtual {v0, p2}, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->setY(F)V

    .line 786
    return-void
.end method

.method private updatePointCloudPosition(FF)V
    .registers 4
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/multiwaveview/PointCloud;->setCenter(FF)V

    .line 1049
    return-void
.end method

.method private updateTargetPositions(FF)V
    .registers 13
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1034
    iget-object v5, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1035
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1036
    .local v3, size:I
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v3

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 1037
    .local v0, alpha:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_3b

    .line 1038
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 1039
    .local v4, targetIcon:Lcom/android/phone/multiwaveview/TargetDrawable;
    int-to-float v6, v2

    mul-float v1, v0, v6

    .line 1040
    .local v1, angle:F
    invoke-virtual {v4, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1041
    invoke-virtual {v4, p2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1042
    iget v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->setX(F)V

    .line 1043
    iget v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->setY(F)V

    .line 1037
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1045
    .end local v1           #angle:F
    .end local v4           #targetIcon:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_3b
    return-void
.end method

.method private vibrate()V
    .registers 4

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_c

    .line 560
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 562
    :cond_c
    return-void
.end method


# virtual methods
.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetResourceId()I
    .registers 2

    .prologue
    .line 616
    iget v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetResourceId:I

    return v0
.end method

.method public init()V
    .registers 3

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 553
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/GlowPadView;->showTargets(Z)V

    .line 554
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 555
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 1053
    iget-object v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/phone/multiwaveview/PointCloud;

    invoke-virtual {v3, p1}, Lcom/android/phone/multiwaveview/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1054
    iget-object v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1055
    iget-object v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1056
    .local v1, ntargets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v1, :cond_23

    .line 1057
    iget-object v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 1058
    .local v2, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    if-eqz v2, :cond_20

    .line 1059
    invoke-virtual {v2, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1056
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1062
    .end local v2           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_23
    iget-object v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1063
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 899
    iget-object v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 900
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 901
    .local v0, action:I
    packed-switch v0, :pswitch_data_2e

    .line 912
    :goto_13
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 913
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 915
    .end local v0           #action:I
    :cond_19
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 903
    .restart local v0       #action:I
    :pswitch_1e
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 906
    :pswitch_23
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 909
    :pswitch_28
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 901
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
    .registers 16
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v9, 0x4000

    .line 996
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 997
    sub-int v5, p4, p2

    .line 998
    .local v5, width:I
    sub-int v0, p5, p3

    .line 1002
    .local v0, height:I
    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v7, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1003
    .local v4, placementWidth:F
    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v7, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1004
    .local v3, placementHeight:F
    iget v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHorizontalInset:I

    int-to-float v6, v6

    int-to-float v7, v5

    iget v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    div-float/2addr v7, v9

    add-float v1, v6, v7

    .line 1006
    .local v1, newWaveCenterX:F
    iget v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVerticalInset:I

    int-to-float v6, v6

    int-to-float v7, v0

    iget v8, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    div-float/2addr v7, v9

    add-float v2, v6, v7

    .line 1009
    .local v2, newWaveCenterY:F
    iget-boolean v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mInitialLayout:Z

    if-eqz v6, :cond_4d

    .line 1010
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 1014
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 1017
    :cond_4d
    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1018
    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1020
    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1021
    iget-object v6, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1023
    invoke-direct {p0, v1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 1024
    invoke-direct {p0, v1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    .line 1025
    invoke-direct {p0, v1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1027
    iput v1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterX:F

    .line 1028
    iput v2, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterY:F

    .line 1030
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 343
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 344
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/android/phone/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 345
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 346
    .local v0, computedHeight:I
    sub-int v4, v1, v3

    sub-int v5, v0, v2

    invoke-direct {p0, v4, v5}, Lcom/android/phone/multiwaveview/GlowPadView;->computeInsets(II)V

    .line 347
    invoke-virtual {p0, v1, v0}, Lcom/android/phone/multiwaveview/GlowPadView;->setMeasuredDimension(II)V

    .line 348
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 754
    .local v0, action:I
    const/4 v1, 0x0

    .line 755
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_32

    .line 779
    :goto_8
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->invalidate()V

    .line 780
    if-eqz v1, :cond_2c

    const/4 v2, 0x1

    :goto_e
    return v2

    .line 757
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 758
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 759
    const/4 v1, 0x1

    .line 760
    goto :goto_8

    .line 763
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 764
    const/4 v1, 0x1

    .line 765
    goto :goto_8

    .line 768
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 769
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 770
    const/4 v1, 0x1

    .line 771
    goto :goto_8

    .line 774
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 775
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 776
    const/4 v1, 0x1

    goto :goto_8

    .line 780
    :cond_2c
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_e

    .line 755
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1c
        :pswitch_17
        :pswitch_24
    .end packed-switch
.end method

.method public ping()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 679
    iget v4, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mFeedbackCount:I

    if-lez v4, :cond_34

    .line 680
    const/4 v0, 0x1

    .line 681
    .local v0, doWaveAnimation:Z
    iget-object v3, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    .line 684
    .local v3, waveAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;
    invoke-virtual {v3}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v4

    if-lez v4, :cond_2f

    invoke-virtual {v3, v5}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 685
    invoke-virtual {v3, v5}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    .line 686
    .local v1, t:J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v1, v4

    if-gez v4, :cond_2f

    .line 687
    const/4 v0, 0x0

    .line 691
    .end local v1           #t:J
    :cond_2f
    if-eqz v0, :cond_34

    .line 692
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->startWaveAnimation()V

    .line 695
    .end local v0           #doWaveAnimation:Z
    .end local v3           #waveAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;
    :cond_34
    return-void
.end method

.method public reset(Z)V
    .registers 5
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 728
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 729
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 730
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/phone/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 731
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 732
    invoke-direct {p0, p1, v2}, Lcom/android/phone/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 733
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 734
    invoke-static {}, Lcom/android/phone/multiwaveview/Tweener;->reset()V

    .line 735
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 646
    iput p1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    .line 647
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 648
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 650
    :cond_b
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;

    .line 1067
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 625
    iput p1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    .line 626
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 627
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 629
    :cond_b
    return-void
.end method

.method public setTargetResources(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_7

    .line 609
    iput p1, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mNewTargetResources:I

    .line 613
    :goto_6
    return-void

    .line 611
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    goto :goto_6
.end method

.method public setVibrateEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 667
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_15

    .line 668
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 672
    :goto_14
    return-void

    .line 670
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_14
.end method
