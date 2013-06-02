.class public Lcom/android/phone/CallCard_DSDA;
.super Lcom/android/phone/MSimCallCard;
.source "CallCard_DSDA.java"


# instance fields
.field private mActiveCallButton:Landroid/widget/Button;

.field private mInCallFragment:Lcom/android/phone/InCallFragment;

.field private mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
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
    .line 90
    iget-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method protected getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/phone/MSimCallCard;->onFinishInflate()V

    .line 64
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 67
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mActiveCallButton:Landroid/widget/Button;

    .line 69
    return-void
.end method

.method protected setButtonHeight(I)V
    .registers 4
    .parameter "reservedVerticalSpace"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/phone/CallCard_DSDA;->mActiveCallButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 75
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/android/phone/CallCard_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallTouchUi;->getCompleteTouchUiHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 77
    iget-object v1, p0, Lcom/android/phone/CallCard_DSDA;->mActiveCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V
    .registers 3
    .parameter "inCallFragment"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/phone/CallCard_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    .line 41
    if-nez p1, :cond_8

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 46
    :goto_7
    return-void

    .line 44
    :cond_8
    invoke-virtual {p1}, Lcom/android/phone/InCallFragment;->getmParent()Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    goto :goto_7
.end method

.method public updateCallTimeView(J)V
    .registers 4
    .parameter "timeElapsed"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallFragment;->updateActiveTimeInTab(J)V

    .line 108
    :cond_9
    return-void
.end method
