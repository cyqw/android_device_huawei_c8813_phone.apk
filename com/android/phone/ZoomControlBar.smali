.class public Lcom/android/phone/ZoomControlBar;
.super Lcom/android/phone/ZoomControl;
.source "ZoomControlBar.java"


# instance fields
.field private mBar:Landroid/view/View;

.field private mIconWidth:I

.field private mSliderLength:I

.field private mSliderPosition:I

.field private mStartChanging:Z

.field private mTotalIconWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/ZoomControlBar;->mSliderPosition:I

    .line 43
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/ZoomControlBar;->mBar:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/android/phone/ZoomControlBar;->mBar:Landroid/view/View;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    iget-object v0, p0, Lcom/android/phone/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/phone/ZoomControlBar;->addView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method private getSliderPosition(I)I
    .registers 5
    .parameter "x"

    .prologue
    .line 60
    iget v1, p0, Lcom/android/phone/ZoomControlBar;->mOrientation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_17

    .line 61
    iget v1, p0, Lcom/android/phone/ZoomControlBar;->mWidth:I

    iget v2, p0, Lcom/android/phone/ZoomControlBar;->mTotalIconWidth:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p1

    .line 65
    .local v0, pos:I
    :goto_d
    if-gez v0, :cond_10

    const/4 v0, 0x0

    .line 66
    :cond_10
    iget v1, p0, Lcom/android/phone/ZoomControlBar;->mSliderLength:I

    if-le v0, v1, :cond_16

    iget v0, p0, Lcom/android/phone/ZoomControlBar;->mSliderLength:I

    .line 67
    :cond_16
    return v0

    .line 63
    .end local v0           #pos:I
    :cond_17
    iget v1, p0, Lcom/android/phone/ZoomControlBar;->mTotalIconWidth:I

    sub-int v0, p1, v1

    .restart local v0       #pos:I
    goto :goto_d
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/ZoomControlBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, p0, Lcom/android/phone/ZoomControlBar;->mWidth:I

    if-nez v5, :cond_e

    :cond_c
    move v3, v4

    .line 111
    :goto_d
    return v3

    .line 81
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 83
    .local v0, action:I
    packed-switch v0, :pswitch_data_52

    goto :goto_d

    .line 92
    :pswitch_16
    invoke-virtual {p0, v3}, Lcom/android/phone/ZoomControlBar;->setActivated(Z)V

    .line 93
    iput-boolean v4, p0, Lcom/android/phone/ZoomControlBar;->mStartChanging:Z

    .line 95
    :pswitch_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/android/phone/ZoomControlBar;->getSliderPosition(I)I

    move-result v2

    .line 96
    .local v2, pos:I
    iget-boolean v4, p0, Lcom/android/phone/ZoomControlBar;->mStartChanging:Z

    if-nez v4, :cond_36

    .line 99
    iget v4, p0, Lcom/android/phone/ZoomControlBar;->mSliderPosition:I

    sub-int v1, v4, v2

    .line 100
    .local v1, delta:I
    const/16 v4, 0xa

    if-gt v1, v4, :cond_34

    const/16 v4, -0xa

    if-ge v1, v4, :cond_36

    .line 102
    :cond_34
    iput-boolean v3, p0, Lcom/android/phone/ZoomControlBar;->mStartChanging:Z

    .line 105
    .end local v1           #delta:I
    :cond_36
    iget-boolean v4, p0, Lcom/android/phone/ZoomControlBar;->mStartChanging:Z

    if-eqz v4, :cond_47

    .line 106
    const-wide/high16 v4, 0x3ff0

    int-to-double v6, v2

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/android/phone/ZoomControlBar;->mSliderLength:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/ZoomControlBar;->performZoom(D)V

    .line 107
    iput v2, p0, Lcom/android/phone/ZoomControlBar;->mSliderPosition:I

    .line 109
    :cond_47
    invoke-virtual {p0}, Lcom/android/phone/ZoomControlBar;->requestLayout()V

    goto :goto_d

    .line 87
    .end local v2           #pos:I
    :pswitch_4b
    invoke-virtual {p0, v4}, Lcom/android/phone/ZoomControlBar;->setActivated(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/phone/ZoomControlBar;->closeZoomControl()V

    goto :goto_d

    .line 83
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_16
        :pswitch_4b
        :pswitch_1b
        :pswitch_4b
        :pswitch_4b
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
    const/4 v8, 0x0

    .line 117
    iget v4, p0, Lcom/android/phone/ZoomControlBar;->mZoomMax:I

    if-nez v4, :cond_6

    .line 141
    :goto_5
    return-void

    .line 118
    :cond_6
    sub-int v0, p5, p3

    .line 119
    .local v0, height:I
    iget-object v4, p0, Lcom/android/phone/ZoomControlBar;->mBar:Landroid/view/View;

    iget v5, p0, Lcom/android/phone/ZoomControlBar;->mTotalIconWidth:I

    iget v6, p0, Lcom/android/phone/ZoomControlBar;->mWidth:I

    iget v7, p0, Lcom/android/phone/ZoomControlBar;->mTotalIconWidth:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v8, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 124
    iget v4, p0, Lcom/android/phone/ZoomControlBar;->mSliderPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4f

    .line 125
    iget v2, p0, Lcom/android/phone/ZoomControlBar;->mSliderPosition:I

    .line 129
    .local v2, sliderPosition:I
    :goto_1b
    iget v4, p0, Lcom/android/phone/ZoomControlBar;->mOrientation:I

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_5c

    .line 130
    iget-object v4, p0, Lcom/android/phone/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/phone/ZoomControlBar;->mIconWidth:I

    invoke-virtual {v4, v8, v8, v5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 131
    iget-object v4, p0, Lcom/android/phone/ZoomControlBar;->mZoomOut:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/phone/ZoomControlBar;->mWidth:I

    iget v6, p0, Lcom/android/phone/ZoomControlBar;->mIconWidth:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/phone/ZoomControlBar;->mWidth:I

    invoke-virtual {v4, v5, v8, v6, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 132
    iget-object v4, p0, Lcom/android/phone/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v1, v4, v2

    .line 138
    .local v1, pos:I
    :goto_3c
    iget-object v4, p0, Lcom/android/phone/ZoomControlBar;->mZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 139
    .local v3, sliderWidth:I
    iget-object v4, p0, Lcom/android/phone/ZoomControlBar;->mZoomSlider:Landroid/widget/ImageView;

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v1, v5

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v8, v6, v0}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_5

    .line 127
    .end local v1           #pos:I
    .end local v2           #sliderPosition:I
    .end local v3           #sliderWidth:I
    :cond_4f
    iget v4, p0, Lcom/android/phone/ZoomControlBar;->mSliderLength:I

    int-to-double v4, v4

    iget v6, p0, Lcom/android/phone/ZoomControlBar;->mZoomIndex:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/android/phone/ZoomControlBar;->mZoomMax:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    .restart local v2       #sliderPosition:I
    goto :goto_1b

    .line 134
    :cond_5c
    iget-object v4, p0, Lcom/android/phone/ZoomControlBar;->mZoomOut:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/phone/ZoomControlBar;->mIconWidth:I

    invoke-virtual {v4, v8, v8, v5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 135
    iget-object v4, p0, Lcom/android/phone/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/phone/ZoomControlBar;->mWidth:I

    iget v6, p0, Lcom/android/phone/ZoomControlBar;->mIconWidth:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/phone/ZoomControlBar;->mWidth:I

    invoke-virtual {v4, v5, v8, v6, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 136
    iget-object v4, p0, Lcom/android/phone/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v1, v4, v2

    .restart local v1       #pos:I
    goto :goto_3c
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/ZoomControlBar;->mWidth:I

    .line 73
    iget-object v0, p0, Lcom/android/phone/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/phone/ZoomControlBar;->mIconWidth:I

    .line 74
    iget v0, p0, Lcom/android/phone/ZoomControlBar;->mIconWidth:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/phone/ZoomControlBar;->mTotalIconWidth:I

    .line 75
    iget v0, p0, Lcom/android/phone/ZoomControlBar;->mWidth:I

    iget v1, p0, Lcom/android/phone/ZoomControlBar;->mTotalIconWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/ZoomControlBar;->mSliderLength:I

    .line 76
    return-void
.end method

.method public setActivated(Z)V
    .registers 3
    .parameter "activated"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/phone/ZoomControl;->setActivated(Z)V

    .line 51
    iget-object v0, p0, Lcom/android/phone/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 52
    return-void
.end method

.method public setZoomIndex(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/phone/ZoomControl;->setZoomIndex(I)V

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/ZoomControlBar;->mSliderPosition:I

    .line 147
    invoke-virtual {p0}, Lcom/android/phone/ZoomControlBar;->requestLayout()V

    .line 148
    return-void
.end method
