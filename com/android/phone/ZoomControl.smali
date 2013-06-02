.class public abstract Lcom/android/phone/ZoomControl;
.super Landroid/widget/RelativeLayout;
.source "ZoomControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ZoomControl$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/phone/ZoomControl$OnZoomChangedListener;

.field protected mOrientation:I

.field protected mZoomIn:Landroid/widget/ImageView;

.field protected mZoomIndex:I

.field protected mZoomMax:I

.field protected mZoomOut:Landroid/widget/ImageView;

.field protected mZoomSlider:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const v0, 0x7f020088

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f02008e

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f02008b

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    .line 57
    return-void
.end method

.method private changeZoomIndex(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/ZoomControl;->mListener:Lcom/android/phone/ZoomControl$OnZoomChangedListener;

    if-eqz v0, :cond_14

    .line 108
    iget v0, p0, Lcom/android/phone/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_a

    iget p1, p0, Lcom/android/phone/ZoomControl;->mZoomMax:I

    .line 109
    :cond_a
    if-gez p1, :cond_d

    const/4 p1, 0x0

    .line 110
    :cond_d
    iget-object v0, p0, Lcom/android/phone/ZoomControl;->mListener:Lcom/android/phone/ZoomControl$OnZoomChangedListener;

    invoke-interface {v0, p1}, Lcom/android/phone/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 111
    iput p1, p0, Lcom/android/phone/ZoomControl;->mZoomIndex:I

    .line 113
    :cond_14
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .registers 4
    .parameter "context"
    .parameter "iconResourceId"

    .prologue
    .line 65
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/phone/ZoomControl;->addView(Landroid/view/View;)V

    .line 68
    return-object v0
.end method

.method public closeZoomControl()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 73
    return-void
.end method

.method protected performZoom(D)V
    .registers 6
    .parameter "zoomPercentage"

    .prologue
    .line 101
    iget v1, p0, Lcom/android/phone/ZoomControl;->mZoomMax:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 102
    .local v0, index:I
    iget v1, p0, Lcom/android/phone/ZoomControl;->mZoomIndex:I

    if-ne v1, v0, :cond_a

    .line 104
    :goto_9
    return-void

    .line 103
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/phone/ZoomControl;->changeZoomIndex(I)Z

    goto :goto_9
.end method

.method public setActivated(Z)V
    .registers 3
    .parameter "activated"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/phone/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/phone/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 121
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/android/phone/ZoomControl$OnZoomChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/ZoomControl;->mListener:Lcom/android/phone/ZoomControl$OnZoomChangedListener;

    .line 85
    return-void
.end method

.method public setZoomIndex(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 88
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/android/phone/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_1f

    .line 89
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1f
    iput p1, p0, Lcom/android/phone/ZoomControl;->mZoomIndex:I

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/ZoomControl;->invalidate()V

    .line 93
    return-void
.end method

.method public setZoomMax(I)V
    .registers 2
    .parameter "zoomMax"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/phone/ZoomControl;->mZoomMax:I

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/ZoomControl;->requestLayout()V

    .line 81
    return-void
.end method
