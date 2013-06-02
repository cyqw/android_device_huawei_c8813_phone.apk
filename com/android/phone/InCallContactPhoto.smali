.class public Lcom/android/phone/InCallContactPhoto;
.super Landroid/widget/ImageView;
.source "InCallContactPhoto.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mInsetImageView:Landroid/widget/ImageView;

.field private mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method private hideInset()V
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 200
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    :cond_b
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 212
    const-string v0, "InCallContactPhoto"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method private showInset(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "drawable"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 206
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    :cond_f
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bm"

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 118
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 11
    .parameter "inputDrawable"

    .prologue
    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 125
    .local v4, startTime:J
    const/4 v0, 0x0

    .line 128
    .local v0, blurredBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v6, :cond_27

    .line 130
    iput-object p1, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_4e

    move-object v6, p1

    .line 133
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 137
    .local v3, inputBitmap:Landroid/graphics/Bitmap;
    sget-boolean v6, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v6, :cond_1f

    const-string v6, "- blur+inset disabled; no special effect."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 164
    .end local v3           #inputBitmap:Landroid/graphics/Bitmap;
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_6d

    .line 165
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/android/phone/InCallContactPhoto;->showInset(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_27
    :goto_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 177
    .local v1, endTime:J
    sget-boolean v6, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v6, :cond_4d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageDrawable() done: *ELAPSED* = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 178
    :cond_4d
    return-void

    .line 156
    .end local v1           #endTime:J
    :cond_4e
    const-string v6, "InCallContactPhoto"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setImageDrawable: inputDrawable \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is not a BitmapDrawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 169
    :cond_6d
    sget-boolean v6, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v6, :cond_76

    const-string v6, "- null blurredBitmapDrawable; don\'t show the special effect."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 171
    :cond_76
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    goto :goto_27
.end method

.method public setImageResource(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 100
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 109
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 110
    return-void
.end method
