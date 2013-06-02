.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;


# instance fields
.field private mAddButton:Landroid/widget/ImageButton;

.field private mAddButtonTips:Landroid/widget/TextView;

.field private mApp:Lcom/android/phone/PhoneApp;

.field protected mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mCdmaMergeButton:Landroid/view/ViewGroup;

.field private mContactsButton:Landroid/widget/ImageButton;

.field protected mDialpadButton:Landroid/widget/CompoundButton;

.field protected mEndButton:Landroid/widget/ImageButton;

.field protected mExtraButtonRow:Landroid/view/ViewStub;

.field private mHandler:Landroid/os/Handler;

.field protected mHoldButton:Landroid/widget/CompoundButton;

.field private mHoldButtonTips:Landroid/widget/TextView;

.field private mHold_swap:Landroid/widget/RelativeLayout;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

.field private mIncomingCallWidgetIsFadingOut:Z

.field private mIncomingCallWidgetShouldBeReset:Z

.field private mInternalRespondViaSmsCanceled:Z

.field private mLastIncomingCallActionTime:J

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field protected mMergeButton:Landroid/widget/ImageButton;

.field private mMergeButtonTips:Landroid/widget/TextView;

.field private mMoreButton:Landroid/widget/CompoundButton;

.field private mMoreView:Landroid/view/View;

.field protected mMuteButton:Landroid/widget/CompoundButton;

.field private mNoteButton:Landroid/widget/ImageButton;

.field private mRecordButton:Landroid/widget/CompoundButton;

.field private mShowInCallControlsDuringHidingAnimation:Z

.field protected mSwapButton:Landroid/widget/ImageButton;

.field private mSwapButtonTips:Landroid/widget/TextView;

.field private recordRelativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 168
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    .line 174
    new-instance v0, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 198
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/InCallTouchUi;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/PhoneApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallTouchUi;Lcom/android/internal/telephony/CallManager;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/multiwaveview/GlowPadView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/InCallTouchUi;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/phone/InCallTouchUi;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    return p1
.end method

.method private hideIncomingCallWidget(I)V
    .registers 6
    .parameter "whichHandler"

    .prologue
    .line 1405
    move v1, p1

    .line 1408
    .local v1, whichHandlerFinal:I
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v2}, Lcom/android/phone/multiwaveview/GlowPadView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    if-eqz v2, :cond_e

    .line 1458
    :cond_d
    :goto_d
    return-void

    .line 1417
    :cond_e
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    .line 1418
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v2}, Lcom/android/phone/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1419
    .local v0, animator:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1420
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1421
    new-instance v2, Lcom/android/phone/InCallTouchUi$3;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/InCallTouchUi$3;-><init>(Lcom/android/phone/InCallTouchUi;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1457
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_d
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1676
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    return-void
.end method

.method private setupExtraButtons()V
    .registers 3

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 976
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-nez v0, :cond_19

    .line 977
    const-string v0, "InCallTouchUi"

    const-string v1, "CDMA Merge button is null even after ViewStub being inflated."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :goto_18
    return-void

    .line 980
    :cond_19
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 984
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 985
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    goto :goto_18
.end method

.method private showAudioModePopup()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1153
    new-instance v7, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 1157
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const/high16 v10, 0x7f11

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1159
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1160
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1165
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 1168
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 1175
    .local v3, menu:Landroid/view/Menu;
    const v7, 0x7f090108

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1176
    .local v4, speakerItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1182
    const v7, 0x7f090109

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1183
    .local v1, earpieceItem:Landroid/view/MenuItem;
    const v7, 0x7f09010a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1184
    .local v6, wiredHeadsetItem:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 1185
    .local v5, usingHeadset:Z
    if-nez v5, :cond_7a

    move v7, v8

    :goto_57
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1186
    if-nez v5, :cond_5d

    move v9, v8

    :cond_5d
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1187
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1188
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1193
    const v7, 0x7f09010b

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1194
    .local v0, bluetoothItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1198
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 1203
    iput-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 1204
    return-void

    .end local v0           #bluetoothItem:Landroid/view/MenuItem;
    :cond_7a
    move v7, v9

    .line 1185
    goto :goto_57
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 1470
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1471
    if-eqz v0, :cond_e

    .line 1472
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1474
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->setAlpha(F)V

    .line 1481
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 1484
    if-eqz v1, :cond_66

    const v0, 0x7f080007

    .line 1490
    :goto_22
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v2}, Lcom/android/phone/multiwaveview/GlowPadView;->getTargetResourceId()I

    move-result v2

    if-eq v0, v2, :cond_44

    .line 1491
    if-eqz v1, :cond_6a

    .line 1494
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v1, v0}, Lcom/android/phone/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 1495
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 1497
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 1509
    :goto_41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 1511
    :cond_44
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    if-eqz v0, :cond_54

    .line 1516
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v0, v3}, Lcom/android/phone/multiwaveview/GlowPadView;->reset(Z)V

    .line 1518
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->init()V

    .line 1520
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 1523
    :cond_54
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v0, v3}, Lcom/android/phone/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 1535
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1536
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1543
    return-void

    .line 1484
    :cond_66
    const v0, 0x7f08000a

    goto :goto_22

    .line 1501
    :cond_6a
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v1, v0}, Lcom/android/phone/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 1502
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 1504
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_41
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .registers 16
    .parameter "inCallControlState"

    .prologue
    const/4 v9, 0x1

    const/16 v11, 0xff

    const/4 v10, 0x0

    .line 1040
    const/4 v8, 0x0

    .line 1043
    .local v8, showToggleStateIndication:Z
    const/4 v5, 0x0

    .line 1046
    .local v5, showMoreIndicator:Z
    const/4 v7, 0x0

    .line 1047
    .local v7, showSpeakerOnIcon:Z
    const/4 v6, 0x0

    .line 1048
    .local v6, showSpeakerOffIcon:Z
    const/4 v4, 0x0

    .line 1049
    .local v4, showHandsetIcon:Z
    const/4 v3, 0x0

    .line 1051
    .local v3, showBluetoothIcon:Z
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v12, :cond_7a

    .line 1053
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v12, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 1060
    const/4 v5, 0x1

    .line 1061
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v9, :cond_72

    .line 1062
    const/4 v3, 0x1

    .line 1100
    :goto_19
    const/4 v0, 0x0

    .line 1101
    .local v0, HIDDEN:I
    const/16 v1, 0xff

    .line 1103
    .local v1, VISIBLE:I
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 1105
    .local v2, layers:Landroid/graphics/drawable/LayerDrawable;
    const v9, 0x7f090102

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v8, :cond_a3

    move v9, v11

    :goto_2e
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1108
    const v9, 0x7f090103

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v5, :cond_a5

    move v9, v11

    :goto_3b
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1111
    const v9, 0x7f090104

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v3, :cond_a7

    move v9, v11

    :goto_48
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1114
    const v9, 0x7f090105

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v4, :cond_a9

    move v9, v11

    :goto_55
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1117
    const v9, 0x7f090106

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v7, :cond_ab

    move v9, v11

    :goto_62
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1120
    const v9, 0x7f090107

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v6, :cond_ad

    :goto_6e
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1122
    return-void

    .line 1063
    .end local v0           #HIDDEN:I
    .end local v1           #VISIBLE:I
    .end local v2           #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_72
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v9, :cond_78

    .line 1064
    const/4 v7, 0x1

    goto :goto_19

    .line 1066
    :cond_78
    const/4 v4, 0x1

    goto :goto_19

    .line 1072
    :cond_7a
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v12, :cond_95

    .line 1074
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v12, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 1078
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-boolean v13, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v12, v13}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1081
    const/4 v8, 0x1

    .line 1083
    iget-boolean v7, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 1084
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-nez v12, :cond_93

    move v6, v9

    :goto_92
    goto :goto_19

    :cond_93
    move v6, v10

    goto :goto_92

    .line 1089
    :cond_95
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 1090
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1093
    const/4 v8, 0x1

    .line 1094
    const/4 v6, 0x1

    goto/16 :goto_19

    .restart local v0       #HIDDEN:I
    .restart local v1       #VISIBLE:I
    .restart local v2       #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_a3
    move v9, v10

    .line 1105
    goto :goto_2e

    :cond_a5
    move v9, v10

    .line 1108
    goto :goto_3b

    :cond_a7
    move v9, v10

    .line 1111
    goto :goto_48

    :cond_a9
    move v9, v10

    .line 1114
    goto :goto_55

    :cond_ab
    move v9, v10

    .line 1117
    goto :goto_62

    :cond_ad
    move v11, v10

    .line 1120
    goto :goto_6e
.end method

.method private updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .registers 4
    .parameter "cm"

    .prologue
    .line 679
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 683
    .local v0, phoneType:I
    invoke-direct {p0, p1, v0}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;I)V

    .line 685
    return-void
.end method

.method private updateInCallControls(Lcom/android/internal/telephony/CallManager;I)V
    .registers 12
    .parameter "cm"
    .parameter "phoneType"

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x8

    .line 702
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 706
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    const/4 v2, 0x0

    .line 713
    .local v2, showExtraButtonRow:Z
    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v3, :cond_10a

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v3, :cond_15

    if-eq p2, v8, :cond_10a

    .line 715
    :cond_15
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 716
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 717
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 719
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAddButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 720
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMergeButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 766
    :goto_2e
    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v3, :cond_3a

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v3, :cond_3a

    .line 767
    if-eq p2, v4, :cond_3a

    if-ne p2, v6, :cond_181

    .line 783
    :cond_3a
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMoreView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_47

    .line 784
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 789
    :cond_47
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 793
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 794
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 797
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 798
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 801
    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 806
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/CompoundButton;

    sget-boolean v3, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    if-eqz v3, :cond_19c

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    if-eqz v3, :cond_19c

    move v3, v4

    :goto_78
    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 814
    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v3, :cond_19f

    .line 815
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 816
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 817
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 818
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 820
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 880
    :goto_9f
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v3, :cond_a8

    .line 881
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 884
    :cond_a8
    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v3, :cond_b7

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v3, :cond_b7

    .line 890
    const-string v3, "InCallTouchUi"

    const-string v6, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_b7
    if-ne p2, v8, :cond_c8

    .line 895
    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v3, :cond_c8

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v3, :cond_c8

    .line 901
    const-string v3, "InCallTouchUi"

    const-string v6, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_c8
    if-ne p2, v8, :cond_21b

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v3, :cond_21b

    move v1, v4

    .line 920
    .local v1, showCdmaMerge:Z
    :goto_cf
    if-eqz v1, :cond_21e

    .line 921
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 924
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-nez v3, :cond_dd

    .line 925
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->setupExtraButtons()V

    .line 927
    :cond_dd
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 928
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v3, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 940
    :cond_e7
    :goto_e7
    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v3, :cond_237

    .line 941
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 942
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    if-nez v3, :cond_f7

    .line 943
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->setupExtraButtons()V

    .line 945
    :cond_f7
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 946
    const/4 v2, 0x1

    .line 947
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 948
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 964
    :cond_109
    :goto_109
    return-void

    .line 722
    .end local v1           #showCdmaMerge:Z
    :cond_10a
    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v3, :cond_166

    .line 723
    if-ne p2, v8, :cond_12b

    .line 728
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 729
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 730
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 731
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAddButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMergeButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2e

    .line 736
    :cond_12b
    if-eq p2, v4, :cond_132

    if-eq p2, v6, :cond_132

    const/4 v3, 0x4

    if-ne p2, v3, :cond_14d

    .line 739
    :cond_132
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 740
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 741
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 743
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAddButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMergeButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2e

    .line 748
    :cond_14d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 758
    :cond_166
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 759
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 760
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 762
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAddButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 763
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mMergeButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2e

    .line 774
    :cond_181
    if-eq p2, v8, :cond_3a

    .line 779
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_19c
    move v3, v5

    .line 806
    goto/16 :goto_78

    .line 824
    :cond_19f
    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v3, :cond_1cb

    .line 826
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHold_swap:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_1b0

    .line 827
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHold_swap:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 830
    :cond_1b0
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 831
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 832
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 834
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 835
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9f

    .line 848
    :cond_1cb
    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v3, :cond_1fc

    .line 850
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHold_swap:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_1dc

    .line 851
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHold_swap:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 854
    :cond_1dc
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 855
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 856
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 857
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 859
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9f

    .line 865
    :cond_1fc
    if-ne p2, v8, :cond_205

    .line 866
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHold_swap:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_9f

    .line 868
    :cond_205
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 869
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 871
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonTips:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9f

    :cond_21b
    move v1, v5

    .line 917
    goto/16 :goto_cf

    .line 930
    .restart local v1       #showCdmaMerge:Z
    :cond_21e
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v3, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 931
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-eqz v3, :cond_22c

    .line 932
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 934
    :cond_22c
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    if-eqz v3, :cond_e7

    .line 935
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_e7

    .line 950
    :cond_237
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v3, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 951
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-eqz v3, :cond_245

    .line 952
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 954
    :cond_245
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    if-eqz v3, :cond_109

    .line 955
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_109
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .registers 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_f

    .line 1214
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 1216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 1218
    :cond_f
    return-void
.end method

.method public getCompleteTouchUiHeight()I
    .registers 2

    .prologue
    .line 1324
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchUiHeight()I
    .registers 4

    .prologue
    .line 1304
    const/4 v0, 0x0

    .line 1307
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1310
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1316
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1318
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
    .line 1697
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method protected getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .registers 2

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    return-object v0
.end method

.method protected handleAudioButtonClick()V
    .registers 3

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 1136
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_c

    .line 1137
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 1142
    :goto_b
    return-void

    .line 1139
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->toggleSpeaker()V

    goto :goto_b
.end method

.method protected handleOnscreenButtonClick(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1682
    return-void
.end method

.method protected isForegroundActivity()Z
    .registers 2

    .prologue
    .line 1709
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen;

    check-cast v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method protected okToShowInCallTouchUi()Z
    .registers 2

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 594
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 596
    .local v0, id:I
    sparse-switch v0, :sswitch_data_46

    .line 639
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_29
    return-void

    .line 599
    :sswitch_2a
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHold_swap:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3a

    .line 600
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHold_swap:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 606
    :cond_3a
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->handleOnscreenButtonClick(I)V

    goto :goto_29

    .line 629
    :sswitch_3e
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->handleOnscreenButtonClick(I)V

    goto :goto_29

    .line 635
    :sswitch_42
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->handleAudioButtonClick()V

    goto :goto_29

    .line 596
    :sswitch_data_46
    .sparse-switch
        0x7f090080 -> :sswitch_3e
        0x7f090083 -> :sswitch_3e
        0x7f090097 -> :sswitch_3e
        0x7f09009a -> :sswitch_3e
        0x7f09009c -> :sswitch_3e
        0x7f09009f -> :sswitch_3e
        0x7f0900a1 -> :sswitch_3e
        0x7f0900a3 -> :sswitch_3e
        0x7f0900a5 -> :sswitch_2a
        0x7f0900a7 -> :sswitch_3e
        0x7f0900aa -> :sswitch_42
        0x7f0900ab -> :sswitch_3e
        0x7f0900ac -> :sswitch_3e
        0x7f0900ad -> :sswitch_3e
    .end sparse-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 1278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 1279
    return-void
.end method

.method public onFinishFinalAnimation()V
    .registers 1

    .prologue
    .line 1344
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 207
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 212
    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/GlowPadView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    .line 213
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v0, p0}, Lcom/android/phone/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/phone/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 216
    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    .line 221
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    .line 224
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 227
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 229
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 232
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    .line 235
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 238
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    .line 241
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButtonTips:Landroid/widget/TextView;

    .line 245
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonTips:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButtonTips:Landroid/widget/TextView;

    .line 247
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonTips:Landroid/widget/TextView;

    .line 249
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactsButton:Landroid/widget/ImageButton;

    .line 250
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    .line 252
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoteButton:Landroid/widget/ImageButton;

    .line 255
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHold_swap:Landroid/widget/RelativeLayout;

    .line 257
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/CompoundButton;

    .line 259
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    sget-boolean v0, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    if-nez v0, :cond_16e

    .line 263
    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->recordRelativeLayout:Landroid/widget/RelativeLayout;

    .line 264
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->recordRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 268
    :cond_16e
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreView:Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    .line 291
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 1336
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1557
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1564
    packed-switch p2, :pswitch_data_26

    .line 1582
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGrabbedStateChange: unexpected grabbedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :pswitch_22
    invoke-virtual {p0, v3, v3}, Lcom/android/phone/InCallTouchUi;->updateIncomingCallWidgetHint(II)V

    .line 1596
    :cond_25
    return-void

    .line 1564
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public onIncomingRing()V
    .registers 1

    .prologue
    .line 1609
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 9
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 646
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 648
    .local v2, id:I
    sparse-switch v2, :sswitch_data_48

    .line 669
    const-string v4, "InCallTouchUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLongClick() with unexpected View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Ignoring it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_26
    return v3

    .line 656
    :sswitch_27
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 657
    .local v1, description:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 662
    .local v0, cheatSheet:Landroid/widget/Toast;
    const/16 v4, 0x51

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 664
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 666
    .end local v0           #cheatSheet:Landroid/widget/Toast;
    :cond_45
    const/4 v3, 0x1

    goto :goto_26

    .line 648
    nop

    :sswitch_data_48
    .sparse-switch
        0x7f090097 -> :sswitch_27
        0x7f09009a -> :sswitch_27
        0x7f09009c -> :sswitch_27
        0x7f0900a3 -> :sswitch_27
        0x7f0900a5 -> :sswitch_27
        0x7f0900aa -> :sswitch_27
        0x7f0900ab -> :sswitch_27
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1243
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_26

    .line 1244
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :goto_25
    return v3

    .line 1248
    :cond_26
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_6c

    .line 1262
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1250
    :pswitch_5a
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_25

    .line 1256
    :pswitch_60
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_25

    .line 1259
    :pswitch_66
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_25

    .line 1248
    :pswitch_data_6c
    .packed-switch 0x7f090108
        :pswitch_5a
        :pswitch_60
        :pswitch_60
        :pswitch_66
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 1340
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1355
    invoke-direct {p0, p2}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget(I)V

    .line 1361
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 1370
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 1371
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :goto_2e
    return-void

    .line 1375
    :cond_2f
    packed-switch p2, :pswitch_data_64

    .line 1389
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :goto_4a
    invoke-virtual {p0, v3, v3}, Lcom/android/phone/InCallTouchUi;->updateIncomingCallWidgetHint(II)V

    goto :goto_2e

    .line 1377
    :pswitch_4e
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->handleOnscreenButtonClick(I)V

    goto :goto_4a

    .line 1381
    :pswitch_55
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->handleOnscreenButtonClick(I)V

    goto :goto_4a

    .line 1385
    :pswitch_5c
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->handleOnscreenButtonClick(I)V

    goto :goto_4a

    .line 1375
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_55
        :pswitch_5c
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .registers 2

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_10

    .line 1232
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1234
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 1236
    :cond_10
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 203
    return-void
.end method

.method public setInternalRespondViaSmsCanceled(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    .line 171
    return-void
.end method

.method protected switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V
    .registers 3
    .parameter "newMode"

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen;

    check-cast v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 1706
    return-void
.end method

.method protected toggleSpeaker()V
    .registers 2

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen;

    check-cast v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    .line 1702
    return-void
.end method

.method public triggerPing()V
    .registers 5

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1626
    const-string v0, "- triggerPing: InCallScreen no longer in foreground; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1668
    :cond_b
    :goto_b
    return-void

    .line 1630
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    if-nez v0, :cond_18

    .line 1633
    const-string v0, "InCallTouchUi"

    const-string v1, "- triggerPing: null mIncomingCallWidget!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1638
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 1645
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->ping()V

    .line 1665
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b
.end method

.method protected updateIncomingCallWidgetHint(II)V
    .registers 5
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    const/4 v1, 0x0

    .line 1693
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    .line 1694
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .registers 16
    .parameter "cm"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_f

    .line 310
    const-string v8, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 448
    :cond_e
    :goto_e
    return-void

    .line 315
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    .line 318
    .local v7, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v6, 0x0

    .line 319
    .local v6, showIncomingCallControls:Z
    const/4 v5, 0x0

    .line 321
    .local v5, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 322
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 329
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_64

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v8

    if-nez v8, :cond_64

    .line 337
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_36

    .line 338
    const/4 v6, 0x1

    .line 350
    :cond_36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 352
    .local v2, now:J
    const/16 v0, 0x3e8

    .line 353
    .local v0, DELAY_TIME:I
    iget-wide v8, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    cmp-long v8, v2, v8

    if-gez v8, :cond_4b

    .line 354
    const/4 v6, 0x0

    .line 356
    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    if-eqz v8, :cond_4b

    .line 357
    const/4 v6, 0x1

    .line 361
    :cond_4b
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v8}, Lcom/android/phone/multiwaveview/GlowPadView;->getVisibility()I

    move-result v8

    if-ne v8, v13, :cond_56

    if-nez v6, :cond_56

    .line 362
    const/4 v5, 0x1

    .line 383
    .end local v0           #DELAY_TIME:I
    .end local v2           #now:J
    :cond_56
    :goto_56
    iput-boolean v12, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    .line 388
    if-eqz v6, :cond_6c

    if-eqz v5, :cond_6c

    .line 389
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 369
    :cond_64
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallTouchUi()Z

    move-result v8

    if-eqz v8, :cond_56

    .line 370
    const/4 v5, 0x1

    goto :goto_56

    .line 392
    :cond_6c
    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    if-eqz v8, :cond_71

    .line 397
    const/4 v5, 0x1

    .line 403
    :cond_71
    if-eqz v5, :cond_9a

    .line 404
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 405
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :goto_7b
    if-eqz v6, :cond_a0

    .line 411
    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 420
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v8, v12}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 439
    :goto_89
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_95

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v8, :cond_e

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v8, :cond_e

    .line 446
    :cond_95
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_e

    .line 407
    :cond_9a
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7b

    .line 423
    :cond_a0
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget(I)V

    .line 428
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_89
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .registers 16
    .parameter "cm"
    .parameter "sub"

    .prologue
    const/4 v12, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_d

    .line 458
    const-string v8, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 569
    :cond_c
    :goto_c
    return-void

    .line 463
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    .line 465
    .local v7, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v6, 0x0

    .line 466
    .local v6, showIncomingCallControls:Z
    const/4 v5, 0x0

    .line 468
    .local v5, showInCallControls:Z
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 469
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 476
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_59

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v8

    if-nez v8, :cond_59

    .line 485
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 486
    const/4 v6, 0x1

    .line 493
    :cond_38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 494
    .local v1, now:J
    iget-wide v8, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v10, 0x1f4

    add-long/2addr v8, v10

    cmp-long v8, v1, v8

    if-gez v8, :cond_4b

    .line 495
    const/4 v6, 0x0

    .line 497
    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    if-eqz v8, :cond_4b

    .line 498
    const/4 v6, 0x1

    .line 512
    .end local v1           #now:J
    :cond_4b
    :goto_4b
    iput-boolean v12, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    .line 518
    if-eqz v6, :cond_61

    if-eqz v5, :cond_61

    .line 519
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 504
    :cond_59
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallTouchUi()Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 505
    const/4 v5, 0x1

    goto :goto_4b

    .line 523
    :cond_61
    if-eqz v5, :cond_96

    .line 525
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 526
    .local v3, phoneType:I
    invoke-direct {p0, p1, v3}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;I)V

    .line 528
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 533
    .end local v3           #phoneType:I
    :goto_77
    if-eqz v6, :cond_9e

    .line 534
    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 543
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v8, v12}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 560
    :goto_85
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_91

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v8, :cond_c

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v8, :cond_c

    .line 567
    :cond_91
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_c

    .line 530
    :cond_96
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_77

    .line 545
    :cond_9e
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget(I)V

    .line 549
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_85
.end method
