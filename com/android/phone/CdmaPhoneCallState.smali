.class public Lcom/android/phone/CdmaPhoneCallState;
.super Ljava/lang/Object;
.source "CdmaPhoneCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    }
.end annotation


# instance fields
.field private cdmaFlashHold:Z

.field private mAddCallMenuStateAfterCW:Z

.field private mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mThreeWayCallOrigStateDialing:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->cdmaFlashHold:Z

    return-void
.end method


# virtual methods
.method public CdmaPhoneCallStateInit()V
    .registers 2

    .prologue
    .line 83
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 84
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 87
    return-void
.end method

.method public IsThreeWayCallOrigStateDialing()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    return v0
.end method

.method public getAddCallMenuStateAfterCallWaiting()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    return v0
.end method

.method public getCdmaFlashHold()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->cdmaFlashHold:Z

    return v0
.end method

.method public getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    return-object v0
.end method

.method public getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    return-object v0
.end method

.method public resetCdmaPhoneCallState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 157
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 158
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 159
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 162
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->cdmaFlashHold:Z

    .line 164
    return-void
.end method

.method public setAddCallMenuStateAfterCallWaiting(Z)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 144
    return-void
.end method

.method public setCdmaFlashHold(Z)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/phone/CdmaPhoneCallState;->cdmaFlashHold:Z

    .line 173
    return-void
.end method

.method public setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 101
    iput-object p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 112
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_18

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 116
    :cond_18
    return-void
.end method

.method public setThreeWayCallOrigState(Z)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 130
    return-void
.end method
