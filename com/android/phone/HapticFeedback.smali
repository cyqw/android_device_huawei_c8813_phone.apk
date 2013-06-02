.class public Lcom/android/phone/HapticFeedback;
.super Ljava/lang/Object;
.source "HapticFeedback.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEnabled:Z

.field private mHapticPattern:[J

.field private mSettingEnabled:Z

.field private mSystemSettings:Landroid/provider/Settings$System;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadHapticSystemPattern(Landroid/content/res/Resources;)Z
    .registers 8
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 155
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    .line 157
    const v4, 0x1070022

    :try_start_7
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_a} :catch_18

    move-result-object v2

    .line 163
    .local v2, pattern:[I
    if-eqz v2, :cond_10

    array-length v4, v2

    if-nez v4, :cond_21

    .line 164
    :cond_10
    const-string v4, "HapticFeedback"

    const-string v5, "Haptic pattern is null or empty."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v2           #pattern:[I
    :goto_17
    return v3

    .line 158
    :catch_18
    move-exception v1

    .line 159
    .local v1, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "HapticFeedback"

    const-string v5, "Vibrate pattern missing."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 169
    .end local v1           #nfe:Landroid/content/res/Resources$NotFoundException;
    .restart local v2       #pattern:[I
    :cond_21
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    array-length v3, v2

    if-ge v0, v3, :cond_34

    .line 171
    iget-object v3, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    aget v4, v2, v0

    int-to-long v4, v4

    aput-wide v4, v3, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 173
    :cond_34
    const/4 v3, 0x1

    goto :goto_17
.end method


# virtual methods
.method public checkSystemSetting()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-boolean v2, p0, Lcom/android/phone/HapticFeedback;->mEnabled:Z

    if-nez v2, :cond_6

    .line 125
    :goto_5
    return-void

    .line 118
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/android/phone/HapticFeedback;->mSystemSettings:Landroid/provider/Settings$System;

    iget-object v2, p0, Lcom/android/phone/HapticFeedback;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, val:I
    if-eqz v1, :cond_22

    const/4 v2, 0x1

    :goto_14
    iput-boolean v2, p0, Lcom/android/phone/HapticFeedback;->mSettingEnabled:Z
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_5

    .line 120
    .end local v1           #val:I
    :catch_17
    move-exception v0

    .line 121
    .local v0, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "HapticFeedback"

    const-string v4, "Could not retrieve system setting."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    iput-boolean v3, p0, Lcom/android/phone/HapticFeedback;->mSettingEnabled:Z

    goto :goto_5

    .end local v0           #nfe:Landroid/content/res/Resources$NotFoundException;
    .restart local v1       #val:I
    :cond_22
    move v2, v3

    .line 119
    goto :goto_14
.end method

.method public init(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 93
    iput-boolean p2, p0, Lcom/android/phone/HapticFeedback;->mEnabled:Z

    .line 94
    if-eqz p2, :cond_2a

    .line 98
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HapticFeedback;->loadHapticSystemPattern(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_2c

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    .line 103
    :cond_1d
    new-instance v0, Landroid/provider/Settings$System;

    invoke-direct {v0}, Landroid/provider/Settings$System;-><init>()V

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mSystemSettings:Landroid/provider/Settings$System;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mContentResolver:Landroid/content/ContentResolver;

    .line 106
    :cond_2a
    return-void

    .line 101
    nop

    :array_2c
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public vibrate()V
    .registers 4

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/phone/HapticFeedback;->mEnabled:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/phone/HapticFeedback;->mSettingEnabled:Z

    if-nez v0, :cond_9

    .line 147
    :cond_8
    :goto_8
    return-void

    .line 142
    :cond_9
    iget-object v0, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 143
    iget-object v0, p0, Lcom/android/phone/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_8

    .line 145
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_8
.end method
