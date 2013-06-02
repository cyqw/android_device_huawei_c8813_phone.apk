.class public Lcom/android/phone/InCallControlState_DSDA;
.super Lcom/android/phone/InCallControlState;
.source "InCallControlState_DSDA.java"


# instance fields
.field private mInCallFragment:Lcom/android/phone/InCallFragment;

.field private mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

.field private mUserHold:Z

.field private mUserMute:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 2
    .parameter "cm"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/phone/InCallControlState;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getMute()Z
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/InCallControlState_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getMute(I)Z

    move-result v0

    return v0
.end method

.method protected getUiScreen()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/InCallControlState_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method protected getUserHold()Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/phone/InCallControlState_DSDA;->mUserHold:Z

    return v0
.end method

.method protected getUserMute()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/phone/InCallControlState_DSDA;->mUserMute:Z

    return v0
.end method

.method protected isBluetoothAudioConnectedOrPending()Z
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/InCallControlState_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    return v0
.end method

.method protected isBluetoothAvailable()Z
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/InCallControlState_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v0

    return v0
.end method

.method protected isDialerOpened()Z
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/InCallControlState_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isDialerOpened()Z

    move-result v0

    return v0
.end method

.method protected isManageConferenceMode()Z
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/InCallControlState_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isManageConferenceMode()Z

    move-result v0

    return v0
.end method

.method protected okToShowDialpad()Z
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/InCallControlState_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->okToShowDialpad()Z

    move-result v0

    return v0
.end method

.method public setInCallInstance(Lcom/android/phone/InCallFragment;)V
    .registers 3
    .parameter "f"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/phone/InCallControlState_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    .line 24
    invoke-virtual {p1}, Lcom/android/phone/InCallFragment;->getmParent()Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallControlState_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 25
    return-void
.end method

.method protected setUserHold(Z)V
    .registers 2
    .parameter "userHold"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/InCallControlState_DSDA;->mUserHold:Z

    .line 66
    return-void
.end method

.method protected setUserMute(Z)V
    .registers 2
    .parameter "userMute"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/phone/InCallControlState_DSDA;->mUserMute:Z

    .line 70
    return-void
.end method
