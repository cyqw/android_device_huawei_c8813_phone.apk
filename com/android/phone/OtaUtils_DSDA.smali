.class public Lcom/android/phone/OtaUtils_DSDA;
.super Lcom/android/phone/OtaUtils;
.source "OtaUtils_DSDA.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInCallFragment:Lcom/android/phone/InCallFragment;

.field private mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

.field private mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .parameter "context"
    .parameter "interactive"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Z)V

    .line 41
    iput-object p1, p0, Lcom/android/phone/OtaUtils_DSDA;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 171
    const-string v0, "OtaUtils_DSDA"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public static setupOtaspCall(Landroid/content/Intent;I)V
    .registers 7
    .parameter "intent"
    .parameter "sub"

    .prologue
    .line 107
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 109
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_f

    .line 112
    const-string v2, "OtaUtils_DSDA"

    const-string v3, "setupOtaspCall: OtaUtils already exists; replacing with new instance..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_f
    new-instance v2, Lcom/android/phone/OtaUtils_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/phone/OtaUtils_DSDA;-><init>(Landroid/content/Context;Z)V

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    .line 119
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v2, v3}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 121
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .line 122
    .local v1, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v2, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object v3, v2, p1

    .line 124
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v2, :cond_35

    .line 125
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 127
    :cond_35
    return-void
.end method


# virtual methods
.method public clearUiWidgets()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    .line 100
    iput-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallPanel:Landroid/view/ViewGroup;

    .line 101
    iput-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallTouchUi:Landroid/view/ViewGroup;

    .line 102
    iput-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mCallCard:Lcom/android/phone/CallCard;

    .line 103
    iput-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    .line 104
    return-void
.end method

.method protected endInCallScreenSession()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->endInCallScreenSession()V

    .line 238
    return-void
.end method

.method protected finishActivity()V
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallScreen_DSDA;->endInCallScreenSession(IZ)V

    .line 232
    return-void
.end method

.method protected getInCallScreen()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method protected handleOtaCallEnd()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->handleOtaCallEnd()V

    .line 263
    return-void
.end method

.method protected initOtaInCallScreen()V
    .registers 4

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0900db

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    .line 182
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0900dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0900dd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    .line 186
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const/high16 v2, 0x101

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    .line 188
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 189
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0900de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    .line 192
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0900da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    .line 194
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v1, v1, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0900e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v1, v1, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0900e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v1, v1, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0900e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    .line 201
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0900e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    .line 202
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils_DSDA;->setOnclickListeners()V

    .line 203
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0900df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 206
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v0, :cond_d6

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initOtaInCallScreen: couldn\'t find otaDtmfDialerView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_d6
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    iput-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    .line 214
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 218
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->startDialerSession()V

    .line 220
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 221
    return-void
.end method

.method protected isForegroundActivity()Z
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method protected requestCloseOtaFailureNotice(J)V
    .registers 4
    .parameter "noticeTime"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen_DSDA;->requestCloseOtaFailureNotice(J)V

    .line 247
    return-void
.end method

.method protected requestCloseSpcErrorNotice(J)V
    .registers 4
    .parameter "noticeTime"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen_DSDA;->requestCloseSpcErrorNotice(J)V

    .line 251
    return-void
.end method

.method public setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V
    .registers 2
    .parameter "f"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    .line 48
    return-void
.end method

.method protected setOnclickListeners()V
    .registers 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f0900e1

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    .line 156
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f0900e3

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    .line 159
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f0900e4

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f0900e8

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f0900e9

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method protected setSpeaker(Z)V
    .registers 4
    .parameter "state"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInteractive:Z

    if-nez v0, :cond_a

    .line 132
    const-string v0, "non-interactive mode, ignoring setSpeaker."

    invoke-static {v0}, Lcom/android/phone/OtaUtils_DSDA;->log(Ljava/lang/String;)V

    .line 149
    :goto_9
    return-void

    .line 138
    :cond_a
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_18

    .line 140
    const-string v0, "no change. returning"

    invoke-static {v0}, Lcom/android/phone/OtaUtils_DSDA;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 144
    :cond_18
    if-eqz p1, :cond_3b

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 146
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->disconnectBluetoothAudio()V

    .line 148
    :cond_3b
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_9
.end method

.method protected updateScreen()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    .line 226
    return-void
.end method

.method public updateUiWidgets(Lcom/android/phone/InCallScreen_DSDA;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;)V
    .registers 8
    .parameter "inCallScreen"
    .parameter "inCallPanel"
    .parameter "inCallTouchUi"
    .parameter "callCard"

    .prologue
    .line 66
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInteractive:Z

    if-nez v1, :cond_c

    .line 67
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "updateUiWidgets() called in non-interactive mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_c
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v1, :cond_16

    .line 71
    const-string v1, "updateUiWidgets(): widgets already set up, nothing to do..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils_DSDA;->log(Ljava/lang/String;)V

    .line 96
    :goto_15
    return-void

    .line 75
    :cond_16
    iput-object p1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    .line 76
    iput-object p2, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallPanel:Landroid/view/ViewGroup;

    .line 77
    iput-object p3, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallTouchUi:Landroid/view/ViewGroup;

    .line 78
    iput-object p4, p0, Lcom/android/phone/OtaUtils_DSDA;->mCallCard:Lcom/android/phone/CallCard;

    .line 79
    new-instance v1, Lcom/android/phone/OtaUtils$OtaWidgetData;

    invoke-direct {v1, p0}, Lcom/android/phone/OtaUtils$OtaWidgetData;-><init>(Lcom/android/phone/OtaUtils;)V

    iput-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    .line 85
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v1, v1, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f09008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 87
    .local v0, otaCallCardStub:Landroid/view/ViewStub;
    if-eqz v0, :cond_37

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 94
    :cond_37
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils_DSDA;->readXmlSettings()V

    .line 95
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils_DSDA;->initOtaInCallScreen()V

    goto :goto_15
.end method
