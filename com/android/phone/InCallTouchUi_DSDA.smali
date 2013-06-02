.class public Lcom/android/phone/InCallTouchUi_DSDA;
.super Lcom/android/phone/InCallTouchUi;
.source "InCallTouchUi_DSDA.java"


# instance fields
.field private mInCallFragment:Lcom/android/phone/InCallFragment;

.field private mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallTouchUi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected enableOrDisableFunctionalButtons(ZZ)V
    .registers 5
    .parameter "isEnable"
    .parameter "refreshButtonStates"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 126
    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    .line 127
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallTouchUi_DSDA;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 129
    :cond_31
    return-void
.end method

.method public getCompleteTouchUiHeight()I
    .registers 5

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi_DSDA;->getTouchUiHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 100
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mExtraButtonRow:Landroid/view/ViewStub;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi_DSDA;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 109
    :goto_1f
    return v0

    .line 105
    :cond_20
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi_DSDA;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 106
    .local v1, margin:I
    add-int/2addr v0, v1

    goto :goto_1f
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
    .line 68
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method protected getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    return-object v0
.end method

.method protected handleOnscreenButtonClick(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallFragment;->handleOnscreenButtonClick(I)V

    .line 53
    return-void
.end method

.method protected isForegroundActivity()Z
    .registers 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi_DSDA;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen_DSDA;

    check-cast v0, Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method protected okToShowInCallTouchUi()Z
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->okToShowInCallTouchUi()Z

    move-result v0

    return v0
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V
    .registers 3
    .parameter "inCallFragment"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    .line 40
    if-nez p1, :cond_8

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 45
    :goto_7
    return-void

    .line 43
    :cond_8
    invoke-virtual {p1}, Lcom/android/phone/InCallFragment;->getmParent()Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    goto :goto_7
.end method

.method protected switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V
    .registers 3
    .parameter "newMode"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallFragment;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 88
    return-void
.end method

.method protected toggleSpeaker()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->toggleSpeaker()V

    .line 77
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setInvalidateInCallControls(Z)V

    .line 79
    return-void
.end method

.method protected updateIncomingCallWidgetHint(II)V
    .registers 5
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/InCallFragment;->updateIncomingCallWidgetHint(II)V

    .line 65
    return-void
.end method
