.class public Lcom/android/phone/ContactsAsyncHelper$ImageTracker;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageTracker"
.end annotation


# instance fields
.field private displayMode:I

.field private mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->displayMode:I

    .line 132
    return-void
.end method


# virtual methods
.method public getPhotoState()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->displayMode:I

    return v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_f

    .line 178
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v1, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 181
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z
    .registers 3
    .parameter "ci"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z
    .registers 5
    .parameter "connection"

    .prologue
    .line 149
    if-nez p1, :cond_a

    .line 151
    iget-object v2, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    .line 161
    :goto_7
    return v2

    .line 151
    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    .line 153
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, o:Ljava/lang/Object;
    const/4 v1, 0x1

    .line 158
    .local v1, runQuery:Z
    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_19

    .line 159
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    :cond_19
    move v2, v1

    .line 161
    goto :goto_7
.end method

.method public setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V
    .registers 2
    .parameter "ci"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 169
    return-void
.end method

.method public setPhotoState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 188
    iput p1, p0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->displayMode:I

    .line 189
    return-void
.end method
