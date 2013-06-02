.class public Lcom/android/phone/multiwaveview/TargetDrawable;
.super Ljava/lang/Object;
.source "TargetDrawable.java"


# static fields
.field public static final STATE_ACTIVE:[I

.field public static final STATE_FOCUSED:[I

.field public static final STATE_INACTIVE:[I


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mPositionX:F

.field private mPositionY:F

.field private final mResourceId:I

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    return-void

    .line 32
    :array_18
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
    .end array-data

    .line 34
    :array_20
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
    .end array-data

    .line 36
    :array_28
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .registers 5
    .parameter "res"
    .parameter "resId"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 41
    iput v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 42
    iput v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mPositionX:F

    .line 43
    iput v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mPositionY:F

    .line 44
    iput v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mScaleX:F

    .line 45
    iput v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mScaleY:F

    .line 46
    iput v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mAlpha:F

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 82
    iput p2, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mResourceId:I

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/multiwaveview/TargetDrawable;)V
    .registers 4
    .parameter "other"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 41
    iput v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 42
    iput v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mPositionX:F

    .line 43
    iput v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mPositionY:F

    .line 44
    iput v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mScaleX:F

    .line 45
    iput v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mScaleY:F

    .line 46
    iput v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mAlpha:F

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 97
    iget v0, p1, Lcom/android/phone/multiwaveview/TargetDrawable;->mResourceId:I

    iput v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mResourceId:I

    .line 99
    iget-object v0, p1, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_30

    iget-object v0, p1, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_25
    iput-object v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 101
    sget-object v0, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 102
    return-void

    .line 99
    :cond_30
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private resizeDrawables()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 154
    iget-object v5, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_3f

    .line 155
    iget-object v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 156
    .local v1, d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 157
    .local v4, maxWidth:I
    const/4 v3, 0x0

    .line 158
    .local v3, maxHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_2b

    .line 159
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    .local v0, childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 161
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 163
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2b
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 164
    const/4 v2, 0x0

    :goto_2f
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_54

    .line 165
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 168
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_3f
    iget-object v5, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_54

    .line 169
    iget-object v5, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    :cond_54
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/high16 v4, -0x4100

    .line 239
    iget-object v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mEnabled:Z

    if-nez v0, :cond_b

    .line 249
    :cond_a
    :goto_a
    return-void

    .line 242
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 243
    iget v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mScaleY:F

    iget v2, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mPositionX:F

    iget v3, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 244
    iget v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mTranslationY:F

    iget v2, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 246
    iget-object v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 247
    iget-object v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getX()F
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .registers 6
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v2, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_13

    .line 113
    iget-object v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 115
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    const/4 v1, 0x1

    .line 117
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_13
    return v1
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mEnabled:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setAlpha(F)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 191
    iput p1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mAlpha:F

    .line 192
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .registers 5
    .parameter "res"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 89
    if-nez p2, :cond_15

    move-object v0, v1

    .line 91
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_a
    iput-object v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 93
    sget-object v1, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 94
    return-void

    .line 89
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_15
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4
.end method

.method public setPositionX(F)V
    .registers 2
    .parameter "x"

    .prologue
    .line 215
    iput p1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mPositionX:F

    .line 216
    return-void
.end method

.method public setPositionY(F)V
    .registers 2
    .parameter "y"

    .prologue
    .line 219
    iput p1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mPositionY:F

    .line 220
    return-void
.end method

.method public setState([I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_d

    .line 106
    iget-object v0, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 107
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 109
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_d
    return-void
.end method

.method public setX(F)V
    .registers 2
    .parameter "x"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 176
    return-void
.end method

.method public setY(F)V
    .registers 2
    .parameter "y"

    .prologue
    .line 179
    iput p1, p0, Lcom/android/phone/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 180
    return-void
.end method
