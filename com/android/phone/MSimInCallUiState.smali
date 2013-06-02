.class public Lcom/android/phone/MSimInCallUiState;
.super Lcom/android/phone/InCallUiState;
.source "MSimInCallUiState.java"


# static fields
.field private static sInstance:Lcom/android/phone/MSimInCallUiState;


# instance fields
.field private mContext:Landroid/content/Context;

.field mSimDialpadDigits:[Ljava/lang/String;

.field mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

.field mSimLatestActiveCallOrigin:[Ljava/lang/String;

.field mSimNeedToShowCallLostDialog:[Z

.field private mSimPendingCallStatusCode:[Lcom/android/phone/Constants$CallStatusCode;

.field private mSimProgressIndication:[Lcom/android/phone/InCallUiState$ProgressIndicationType;

.field mSimProviderAddress:[Ljava/lang/String;

.field mSimProviderGatewayUri:[Landroid/net/Uri;

.field mSimProviderIcon:[Landroid/graphics/drawable/Drawable;

.field mSimProviderLabel:[Ljava/lang/CharSequence;

.field mSimProviderOverlayVisible:[Z

.field mSimShowDialpad:[Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 77
    invoke-direct {p0}, Lcom/android/phone/InCallUiState;-><init>()V

    .line 91
    new-array v0, v1, [Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 101
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimShowDialpad:[Z

    .line 111
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimDialpadDigits:[Ljava/lang/String;

    .line 168
    new-array v0, v1, [Lcom/android/phone/Constants$CallStatusCode;

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimPendingCallStatusCode:[Lcom/android/phone/Constants$CallStatusCode;

    .line 233
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimNeedToShowCallLostDialog:[Z

    .line 246
    new-array v0, v1, [Lcom/android/phone/InCallUiState$ProgressIndicationType;

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProgressIndication:[Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 280
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderOverlayVisible:[Z

    .line 281
    new-array v0, v1, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderLabel:[Ljava/lang/CharSequence;

    .line 282
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderIcon:[Landroid/graphics/drawable/Drawable;

    .line 283
    new-array v0, v1, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderGatewayUri:[Landroid/net/Uri;

    .line 285
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderAddress:[Ljava/lang/String;

    .line 329
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimLatestActiveCallOrigin:[Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/android/phone/MSimInCallUiState;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object v1, v0, v2

    .line 80
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object v1, v0, v3

    .line 81
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimPendingCallStatusCode:[Lcom/android/phone/Constants$CallStatusCode;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v2

    .line 82
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimPendingCallStatusCode:[Lcom/android/phone/Constants$CallStatusCode;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v3

    .line 83
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProgressIndication:[Lcom/android/phone/InCallUiState$ProgressIndicationType;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    aput-object v1, v0, v2

    .line 84
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProgressIndication:[Lcom/android/phone/InCallUiState$ProgressIndicationType;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    aput-object v1, v0, v3

    .line 87
    return-void
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/MSimInCallUiState;
    .registers 5
    .parameter

    .prologue
    .line 63
    const-class v1, Lcom/android/phone/MSimInCallUiState;

    monitor-enter v1

    .line 64
    :try_start_3
    sget-object v0, Lcom/android/phone/MSimInCallUiState;->sInstance:Lcom/android/phone/MSimInCallUiState;

    if-nez v0, :cond_12

    .line 65
    new-instance v0, Lcom/android/phone/MSimInCallUiState;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimInCallUiState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/MSimInCallUiState;->sInstance:Lcom/android/phone/MSimInCallUiState;

    .line 69
    :goto_e
    sget-object v0, Lcom/android/phone/MSimInCallUiState;->sInstance:Lcom/android/phone/MSimInCallUiState;

    monitor-exit v1

    return-object v0

    .line 67
    :cond_12
    const-string v0, "MSimInCallUiState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimInCallUiState;->sInstance:Lcom/android/phone/MSimInCallUiState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 70
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method


# virtual methods
.method public clearPendingCallStatusCode(I)V
    .registers 4
    .parameter "sub"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimPendingCallStatusCode:[Lcom/android/phone/Constants$CallStatusCode;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, p1

    .line 214
    return-void
.end method

.method public clearProgressIndication(I)V
    .registers 4
    .parameter "sub"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProgressIndication:[Lcom/android/phone/InCallUiState$ProgressIndicationType;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    aput-object v1, v0, p1

    .line 257
    return-void
.end method

.method public clearProviderOverlayInfo(I)V
    .registers 5
    .parameter "sub"

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderOverlayVisible:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 311
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderLabel:[Ljava/lang/CharSequence;

    aput-object v2, v0, p1

    .line 312
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderIcon:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, p1

    .line 313
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderGatewayUri:[Landroid/net/Uri;

    aput-object v2, v0, p1

    .line 314
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderAddress:[Ljava/lang/String;

    aput-object v2, v0, p1

    .line 315
    return-void
.end method

.method public getPendingCallStatusCode(I)Lcom/android/phone/Constants$CallStatusCode;
    .registers 3
    .parameter "sub"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimPendingCallStatusCode:[Lcom/android/phone/Constants$CallStatusCode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getProgressIndication(I)Lcom/android/phone/InCallUiState$ProgressIndicationType;
    .registers 3
    .parameter "sub"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProgressIndication:[Lcom/android/phone/InCallUiState$ProgressIndicationType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hasPendingCallStatusCode(I)Z
    .registers 4
    .parameter "sub"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimPendingCallStatusCode:[Lcom/android/phone/Constants$CallStatusCode;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isProgressIndicationActive(I)Z
    .registers 4
    .parameter "sub"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProgressIndication:[Lcom/android/phone/InCallUiState$ProgressIndicationType;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V
    .registers 6
    .parameter "status"
    .parameter "sub"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimPendingCallStatusCode:[Lcom/android/phone/Constants$CallStatusCode;

    aget-object v0, v0, p2

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v0, v1, :cond_34

    .line 197
    const-string v0, "MSimInCallUiState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingCallStatusCode: setting new code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but a previous code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimInCallUiState;->mSimPendingCallStatusCode:[Lcom/android/phone/Constants$CallStatusCode;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was already pending!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_34
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimPendingCallStatusCode:[Lcom/android/phone/Constants$CallStatusCode;

    aput-object p1, v0, p2

    .line 202
    return-void
.end method

.method public setProviderOverlayInfo(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "sub"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderLabel:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/phone/MSimInCallUiState;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, p2

    .line 293
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/phone/MSimInCallUiState;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, p2

    .line 294
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderGatewayUri:[Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, p2

    .line 295
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderAddress:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/MSimInCallUiState;->providerGatewayUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    .line 296
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderOverlayVisible:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 300
    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderLabel:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p2

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderGatewayUri:[Landroid/net/Uri;

    aget-object v0, v0, p2

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/phone/MSimInCallUiState;->mSimProviderAddress:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 302
    :cond_4b
    invoke-virtual {p0, p2}, Lcom/android/phone/MSimInCallUiState;->clearProviderOverlayInfo(I)V

    .line 304
    :cond_4e
    return-void
.end method
