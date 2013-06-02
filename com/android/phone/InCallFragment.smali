.class public Lcom/android/phone/InCallFragment;
.super Landroid/app/Fragment;
.source "InCallFragment.java"

# interfaces
.implements Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallFragment$18;,
        Lcom/android/phone/InCallFragment$SubChangeListener;,
        Lcom/android/phone/InCallFragment$SdReceiver;,
        Lcom/android/phone/InCallFragment$InCallFragmentListener;,
        Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    }
.end annotation


# static fields
.field public static final CAN_VOICE_RECORD:Z


# instance fields
.field dtmfphoto:Lcom/android/phone/InCallContactPhoto;

.field private isAssociatedWithActivecall:Z

.field private mActiveCall:Landroid/widget/Button;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallCard:Lcom/android/phone/CallCard_DSDA;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mCallTimeView:Landroid/widget/TextView;

.field private mCallTypeImage:Landroid/widget/ImageView;

.field private mCallTypeView:Landroid/widget/TextView;

.field mCallingViaIcon:Landroid/widget/ImageView;

.field mCallingViaMessage:Landroid/widget/TextView;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

.field private mDialPadView_LeftName:Landroid/widget/TextView;

.field private mDialPadView_LeftNumber:Landroid/widget/TextView;

.field private mDialPadView_SocialStatus:Landroid/widget/TextView;

.field protected mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mEjectSdError:Z

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field protected mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHangUpDialingCallHint:Landroid/widget/TextView;

.field private mHideImmediately:Z

.field private mHwVibrate:Z

.field private mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

.field private mInCallControls:Landroid/view/View;

.field protected mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

.field private mIsEmergencyNumber:Z

.field private mIsRecording:Z

.field protected mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

.field private mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field protected mMmiStartedDialog:Landroid/app/Dialog;

.field mMoreButton:Landroid/widget/CompoundButton;

.field mMoreView:Landroid/view/View;

.field private mParent:Lcom/android/phone/InCallScreen_DSDA;

.field public mParentView:Landroid/view/View;

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mProviderOverLay:Landroid/view/ViewGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRecordButton:Landroid/widget/CompoundButton;

.field private mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

.field private mRegisteredForLineControlInfo:Z

.field private mRegisteredForPhoneStates:Z

.field private mRemoteCallEnd:Z

.field private mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

.field private mSdReceiver:Lcom/android/phone/InCallFragment$SdReceiver;

.field private mSubChangeListener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

.field private mSubscription:I

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mTabContainer:Landroid/widget/RelativeLayout;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 237
    const-string v0, "ro.config.hw_voicerecord"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 148
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mIsEmergencyNumber:Z

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    .line 191
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->isAssociatedWithActivecall:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mHideImmediately:Z

    .line 254
    new-instance v0, Lcom/android/phone/InCallFragment$SdReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallFragment$SdReceiver;-><init>(Lcom/android/phone/InCallFragment;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mSdReceiver:Lcom/android/phone/InCallFragment$SdReceiver;

    .line 255
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mEjectSdError:Z

    .line 264
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mRemoteCallEnd:Z

    .line 270
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mHwVibrate:Z

    .line 271
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mVibrator:Landroid/os/SystemVibrator;

    .line 383
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mPauseInProgress:Z

    .line 1926
    new-instance v0, Lcom/android/phone/InCallFragment$6;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallFragment$6;-><init>(Lcom/android/phone/InCallFragment;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    .line 3764
    new-instance v0, Lcom/android/phone/InCallFragment$16;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallFragment$16;-><init>(Lcom/android/phone/InCallFragment;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallFragment;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/InCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->reStartTone()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallTouchUi_DSDA;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mHwVibrate:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/InCallFragment;)Landroid/os/SystemVibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/InCallFragment;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/InCallFragment;)Lcom/android/phone/CallCard_DSDA;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->updateInCallTouchUiButtons(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/InCallFragment;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->onMMICancel(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallFragment$InCallFragmentListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/InCallFragment;)Landroid/media/voicerecorder/BaseVoiceRecorder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/phone/InCallFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/phone/InCallFragment;->mEjectSdError:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/InCallFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InCallFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/InCallFragment;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/InCallFragment;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;C)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallFragment;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .registers 4

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 3350
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3353
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 3357
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3358
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const-class v2, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3359
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->startActivity(Landroid/content/Intent;)V

    .line 3360
    return-void
.end method

.method private checkOtaspStateOnResume()Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 3593
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v1, :cond_8

    .line 3697
    :goto_7
    return v0

    .line 3597
    :cond_8
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v1, :cond_1c

    .line 3601
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "checkOtaspStateOnResume: app.cdmaOta* objects(s) not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3609
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v2

    .line 3616
    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v2, v1, :cond_2c

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v2, v1, :cond_58

    :cond_2c
    const/4 v1, 0x1

    .line 3620
    :goto_2d
    if-eqz v1, :cond_64

    .line 3627
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    check-cast v0, Lcom/android/phone/OtaUtils_DSDA;

    check-cast v0, Lcom/android/phone/OtaUtils_DSDA;

    invoke-virtual {v0, p0}, Lcom/android/phone/OtaUtils_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 3628
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    check-cast v0, Lcom/android/phone/OtaUtils_DSDA;

    check-cast v0, Lcom/android/phone/OtaUtils_DSDA;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/phone/OtaUtils_DSDA;->updateUiWidgets(Lcom/android/phone/InCallScreen_DSDA;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;)V

    .line 3632
    sget-object v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v2, v0, :cond_5a

    .line 3634
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    :cond_56
    :goto_56
    move v0, v1

    .line 3697
    goto :goto_7

    :cond_58
    move v1, v0

    .line 3616
    goto :goto_2d

    .line 3635
    :cond_5a
    sget-object v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v2, v0, :cond_56

    .line 3638
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_56

    .line 3653
    :cond_64
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 3655
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_56

    .line 3656
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2, v0}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_56
.end method

.method private createWildPromptView()Landroid/view/View;
    .registers 10

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x4160

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x5

    .line 1519
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1520
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1521
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1523
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1527
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1528
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1529
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1530
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1532
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1534
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    .line 1535
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1536
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1537
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1538
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1539
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 1540
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    const v2, 0x1080018

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1542
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1545
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1547
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1549
    return-object v0
.end method

.method private dismissProgressIndication()V
    .registers 2

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 1885
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1888
    :cond_c
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .registers 4

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 3364
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3367
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 3368
    :cond_18
    return-void
.end method

.method private getCallName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2295
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v0

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2296
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v0

    const v2, 0x7f09002a

    invoke-virtual {v0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2301
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v2, v3, :cond_46

    .line 2304
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 2305
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_46

    .line 2306
    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2318
    :goto_45
    return-object v0

    .line 2310
    :cond_46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    invoke-static {v1}, Lcom/android/phone/InCallFragment;->isValidFileName(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 2311
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 2314
    :cond_57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 2315
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 2318
    :cond_62
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method

.method private getToastStringPath(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2436
    if-nez p2, :cond_a

    .line 2437
    const v0, 0x7f0e0295

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2440
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/InCallFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private handleMissingVoiceMailNumber()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 3305
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 3306
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3308
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3309
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3312
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3313
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3314
    const v4, 0x7f0e0039

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3315
    if-ne v2, v5, :cond_66

    .line 3316
    const v2, 0x7f0e003b

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3320
    :goto_30
    const v2, 0x7f0e0029

    new-instance v4, Lcom/android/phone/InCallFragment$9;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/InCallFragment$9;-><init>(Lcom/android/phone/InCallFragment;Landroid/os/Message;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e003c

    new-instance v4, Lcom/android/phone/InCallFragment$8;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/InCallFragment$8;-><init>(Lcom/android/phone/InCallFragment;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InCallFragment$7;-><init>(Lcom/android/phone/InCallFragment;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3342
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 3345
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3346
    return-void

    .line 3318
    :cond_66
    const v2, 0x7f0e003a

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_30
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .registers 10
    .parameter "r"
    .parameter "ch"

    .prologue
    .line 4592
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4598
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_16

    .line 4600
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4601
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    if-eq v4, v5, :cond_17

    .line 4671
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_16
    :goto_16
    return-void

    .line 4606
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    :cond_17
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 4612
    .local v3, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v4

    if-nez v4, :cond_16

    .line 4614
    sget-object v4, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_90

    goto :goto_16

    .line 4616
    :pswitch_33
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->stopLocalToneIfNeeded()V

    .line 4617
    iget-boolean v4, p0, Lcom/android/phone/InCallFragment;->mPauseInProgress:Z

    if-eqz v4, :cond_41

    .line 4623
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallFragment;->showPausePromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 4625
    :cond_41
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/InCallFragment;->mPauseInProgress:Z

    .line 4626
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->startLocalToneIfNeeded(C)V

    goto :goto_16

    .line 4638
    :pswitch_4a
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->stopLocalToneIfNeeded()V

    .line 4639
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 4640
    .local v2, postDialStr:Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_16

    .line 4645
    .end local v2           #postDialStr:Ljava/lang/String;
    :pswitch_57
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->stopLocalToneIfNeeded()V

    .line 4646
    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_16

    .line 4650
    :pswitch_60
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->stopLocalToneIfNeeded()V

    .line 4653
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_16

    iget-boolean v4, p0, Lcom/android/phone/InCallFragment;->mHwVibrate:Z

    if-eqz v4, :cond_16

    .line 4654
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mVibrator:Landroid/os/SystemVibrator;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Landroid/os/SystemVibrator;->vibrate(J)V

    goto :goto_16

    .line 4661
    :pswitch_80
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->stopLocalToneIfNeeded()V

    .line 4662
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallFragment;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 4663
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/InCallFragment;->mPauseInProgress:Z

    goto :goto_16

    .line 4614
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_33
        :pswitch_4a
        :pswitch_57
        :pswitch_60
        :pswitch_80
    .end packed-switch
.end method

.method private static final hideVG(Landroid/view/ViewGroup;)V
    .registers 2
    .parameter "vg"

    .prologue
    .line 4921
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4922
    return-void
.end method

.method private initChildControls()V
    .registers 3

    .prologue
    .line 969
    new-instance v0, Lcom/android/phone/InCallControlState_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, v1}, Lcom/android/phone/InCallControlState_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    .line 970
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    invoke-virtual {v0, p0}, Lcom/android/phone/InCallControlState_DSDA;->setInCallInstance(Lcom/android/phone/InCallFragment;)V

    .line 973
    new-instance v0, Lcom/android/phone/ManageConferenceUtils_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, v1}, Lcom/android/phone/ManageConferenceUtils_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    .line 974
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v0, p0}, Lcom/android/phone/ManageConferenceUtils_DSDA;->SetInCallInstance(Lcom/android/phone/InCallFragment;)V

    .line 975
    return-void
.end method

.method private initInCallFragment(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 859
    const v1, 0x7f090096

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mMoreView:Landroid/view/View;

    .line 860
    const v1, 0x7f0900ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mMoreButton:Landroid/widget/CompoundButton;

    .line 861
    const v1, 0x7f09009f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mRecordButton:Landroid/widget/CompoundButton;

    .line 865
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 868
    iput-object p1, p0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    .line 871
    const v1, 0x7f09008f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    .line 874
    const v1, 0x7f09008d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallCard_DSDA;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    .line 876
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallCard_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 879
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->initInCallTouchUi(Landroid/view/View;)V

    .line 883
    const v1, 0x7f090094

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 884
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 885
    const v1, 0x7f090069

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 888
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v1}, Lcom/android/phone/InCallFragment;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 889
    const v1, 0x7f09006d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/InCallContactPhoto;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 890
    const v1, 0x7f090071

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    .line 896
    :cond_82
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v1, :cond_92

    .line 897
    const-string v1, "InCallFragment"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 900
    :cond_92
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    .line 902
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v1, p0}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 905
    const v1, 0x7f090090

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mProviderOverLay:Landroid/view/ViewGroup;

    .line 906
    const v1, 0x7f090092

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mCallingViaMessage:Landroid/widget/TextView;

    .line 907
    const v1, 0x7f090091

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mCallingViaIcon:Landroid/widget/ImageView;

    .line 912
    const v1, 0x7f090039

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    .line 913
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_de

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f7

    .line 915
    :cond_de
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/InCallFragment$1;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallFragment$1;-><init>(Lcom/android/phone/InCallFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 963
    :goto_eb
    const v1, 0x7f09003a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mHangUpDialingCallHint:Landroid/widget/TextView;

    .line 965
    return-void

    .line 956
    :cond_f7
    const-string v1, "InCallFragment"

    const-string v2, "Call is neither CDMA nor GSM hence the active call button is hidden"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_eb
.end method

.method private initInCallTouchUi(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 1169
    const v0, 0x7f09008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallTouchUi_DSDA;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    .line 1170
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    invoke-virtual {v0, p0}, Lcom/android/phone/InCallTouchUi_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 1172
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControls:Landroid/view/View;

    .line 1173
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    .line 1178
    new-instance v0, Lcom/android/phone/RespondViaSmsManager_DSDA;

    invoke-direct {v0}, Lcom/android/phone/RespondViaSmsManager_DSDA;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    .line 1179
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    invoke-virtual {v0, p0}, Lcom/android/phone/RespondViaSmsManager_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 1180
    return-void
.end method

.method private initVoiceRecord()V
    .registers 5

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, v1, v2, v3}, Landroid/media/voicerecorder/VoiceRecorderFactory;->createVoiceRecorder_DSDA(Lcom/android/internal/telephony/CallManager;Lcom/android/phone/InCallScreen_DSDA;ILcom/android/internal/telephony/Phone;)Landroid/media/voicerecorder/BaseVoiceRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    .line 2269
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->registerForNotifications()V

    .line 2270
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v0, p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->setOnVoiceRecorderListener(Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;)V

    .line 2272
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_hh_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 2274
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2275
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2276
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mSdReceiver:Lcom/android/phone/InCallFragment$SdReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/InCallScreen_DSDA;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2277
    return-void
.end method

.method private internalAnswerCall()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2902
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    .line 2904
    if-eqz v0, :cond_46

    .line 2905
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2906
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2907
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2908
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4b

    .line 2911
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->hasActiveSIPCall(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2920
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 2969
    :goto_2b
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 2971
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallFragment;->setEndButton(Z)V

    .line 2975
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 2980
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v1

    if-ne v0, v1, :cond_46

    .line 2981
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->resetmRingingSubscription()V

    .line 2987
    :cond_46
    return-void

    .line 2922
    :cond_47
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2b

    .line 2924
    :cond_4b
    const/4 v2, 0x3

    if-ne v0, v2, :cond_62

    .line 2926
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->hasActiveCDMACall(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2936
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_2b

    .line 2938
    :cond_5e
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2b

    .line 2940
    :cond_62
    if-eq v0, v4, :cond_67

    const/4 v2, 0x4

    if-ne v0, v2, :cond_85

    .line 2946
    :cond_67
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    .line 2947
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    .line 2949
    if-eqz v0, :cond_81

    if-eqz v2, :cond_81

    .line 2954
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_2b

    .line 2960
    :cond_81
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2b

    .line 2964
    :cond_85
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private internalHangup()V
    .registers 4

    .prologue
    .line 2842
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 2847
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;I)Z

    .line 2862
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_18

    .line 2864
    const-string v0, "InCallFragment"

    const-string v1, "internalHangup(): phone is already IDLE!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    if-eqz v0, :cond_22

    .line 2889
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->setEndButton(Z)V

    .line 2892
    :cond_22
    return-void
.end method

.method private internalRespondViaSms()V
    .registers 3

    .prologue
    .line 2994
    const-string v0, "internalRespondViaSms()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 2995
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 2997
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmRespondViaSmsManager()Lcom/android/phone/RespondViaSmsManager_DSDA;

    move-result-object v0

    if-nez v0, :cond_16

    .line 2998
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "got internalRespondViaSms(), but mRespondViaSmsManager was never initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3005
    :cond_16
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3007
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmRespondViaSmsManager()Lcom/android/phone/RespondViaSmsManager_DSDA;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/RespondViaSmsManager_DSDA;->showRespondViaSmsPopup(Lcom/android/internal/telephony/Call;)V

    .line 3012
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->internalSilenceRinger()V

    .line 3014
    return-void
.end method

.method private internalSwapCalls()V
    .registers 4

    .prologue
    .line 3065
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v1

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-eq v1, v2, :cond_d

    .line 3096
    :cond_c
    :goto_c
    return-void

    .line 3073
    :cond_d
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    .line 3080
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 3085
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3090
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 3091
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 3092
    .local v0, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_c

    .line 3093
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    goto :goto_c
.end method

.method private invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4745
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 4763
    :cond_4
    :goto_4
    return-void

    .line 4750
    :cond_5
    :try_start_5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4751
    invoke-virtual {v0, p2, p5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4753
    if-eqz v0, :cond_4

    .line 4754
    invoke-virtual {v0, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4755
    const-string v1, "InCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke method::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_4

    .line 4758
    :catch_2c
    move-exception v0

    .line 4759
    const-string v1, "InCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Occur an exception when call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 4924
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static isValidFileName(Ljava/lang/CharSequence;)Z
    .registers 2
    .parameter

    .prologue
    .line 2285
    const-string v0, "^[^\\\\/:*?<>\"|]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1158
    const-string v0, "InCallFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    return-void
.end method

.method static newInstance(I)Lcom/android/phone/InCallFragment;
    .registers 4
    .parameter "subscription"

    .prologue
    .line 440
    new-instance v1, Lcom/android/phone/InCallFragment;

    invoke-direct {v1}, Lcom/android/phone/InCallFragment;-><init>()V

    .line 443
    .local v1, f:Lcom/android/phone/InCallFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 444
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "subscription"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    invoke-virtual {v1, v0}, Lcom/android/phone/InCallFragment;->setArguments(Landroid/os/Bundle;)V

    .line 447
    return-object v1
.end method

.method private okToShowHint()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1338
    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-nez v5, :cond_1c

    move v0, v3

    .line 1339
    .local v0, altSub:I
    :goto_7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    .line 1340
    .local v2, isRinging:Z
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDialingCallImpl(I)Z

    move-result v1

    .line 1341
    .local v1, hasAltDialing:Z
    if-eqz v1, :cond_1e

    if-eqz v2, :cond_1e

    :goto_1b
    return v3

    .end local v0           #altSub:I
    .end local v1           #hasAltDialing:Z
    .end local v2           #isRinging:Z
    :cond_1c
    move v0, v4

    .line 1338
    goto :goto_7

    .restart local v0       #altSub:I
    .restart local v1       #hasAltDialing:Z
    .restart local v2       #isRinging:Z
    :cond_1e
    move v3, v4

    .line 1341
    goto :goto_1b
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .registers 13
    .parameter

    .prologue
    .line 4011
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4013
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v1

    .line 4014
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    if-eqz v3, :cond_14

    .line 4015
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcom/android/phone/CallCard_DSDA;->setElapsedTime(J)V

    .line 4018
    :cond_14
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v5

    .line 4019
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 4022
    invoke-static {v6}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v7

    .line 4024
    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-eq v1, v7, :cond_2c

    .line 4026
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 4378
    :cond_2b
    :goto_2b
    return-void

    .line 4031
    :cond_2c
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .line 4036
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v2, :cond_a8

    const/4 v2, 0x1

    :goto_37
    iput-boolean v2, p0, Lcom/android/phone/InCallFragment;->mRemoteCallEnd:Z

    .line 4041
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hide_call_lost_dialog"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5c

    .line 4042
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 4043
    const/4 v3, 0x0

    .line 4044
    instance-of v4, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_aa

    .line 4045
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    .line 4049
    :goto_54
    if-eqz v2, :cond_b3

    .line 4050
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/InCallFragment;->mIsEmergencyNumber:Z

    .line 4057
    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->phoneIsInUse()Z

    move-result v2

    if-nez v2, :cond_b7

    const/4 v2, 0x1

    .line 4058
    :goto_63
    const/4 v3, 0x0

    .line 4059
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_b9

    const/4 v4, 0x1

    .line 4060
    :goto_6c
    if-eqz v4, :cond_89

    .line 4064
    if-eqz v2, :cond_bb

    .line 4065
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "call_auto_retry"

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 4067
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneApp;->setCDMACallReallyConnected(Z)V

    .line 4078
    :cond_89
    :goto_89
    iget-object v8, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v8, v8, v7

    sget-object v9, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v8, v9, :cond_cc

    iget-object v8, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v8, :cond_cc

    iget-object v8, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v8, v8, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v8, :cond_cc

    .line 4082
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4088
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    goto :goto_2b

    .line 4036
    :cond_a8
    const/4 v2, 0x0

    goto :goto_37

    .line 4046
    :cond_aa
    instance-of v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_2b4

    .line 4047
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_54

    .line 4052
    :cond_b3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/InCallFragment;->mIsEmergencyNumber:Z

    goto :goto_5c

    .line 4057
    :cond_b7
    const/4 v2, 0x0

    goto :goto_63

    .line 4059
    :cond_b9
    const/4 v4, 0x0

    goto :goto_6c

    .line 4069
    :cond_bb
    iget v8, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hasCallOnSubscription(I)Z

    move-result v8

    if-nez v8, :cond_89

    .line 4071
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneApp;->setCDMACallReallyConnected(Z)V

    goto :goto_89

    .line 4090
    :cond_cc
    iget-object v8, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v8, v8, v7

    sget-object v9, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v8, v9, :cond_2b

    iget-object v8, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v8, :cond_e2

    iget-object v8, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v8, v8, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v8, :cond_2b

    .line 4103
    :cond_e2
    iget-object v8, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v8}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->clearDigits()V

    .line 4108
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v8, :cond_18d

    .line 4112
    invoke-static {}, Lcom/android/phone/CallNotifier;->getSuppSvcNotification()Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    move-result-object v8

    .line 4113
    if-eqz v8, :cond_108

    .line 4114
    iget v9, v8, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_108

    iget v8, v8, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const/16 v9, 0xa

    if-ne v8, v9, :cond_108

    .line 4116
    const v0, 0x7f0e0298

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    .line 4117
    invoke-static {}, Lcom/android/phone/CallNotifier;->clearSuppSvcNotification()V

    goto/16 :goto_2b

    .line 4123
    :cond_108
    iget v8, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v9

    if-ne v8, v9, :cond_11b

    .line 4124
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->resetmRingingSubscription()V

    .line 4153
    :cond_11b
    if-eqz v4, :cond_13c

    .line 4154
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 4155
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_1ce

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v5, v8, :cond_1ce

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v5, v8, :cond_1ce

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v5, v8, :cond_1ce

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v5, v8, :cond_1ce

    .line 4160
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->showCallLostDialog()V

    .line 4195
    :cond_13c
    :goto_13c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4196
    if-eqz v1, :cond_171

    .line 4205
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 4206
    if-eqz v1, :cond_171

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_171

    .line 4207
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_153
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_171

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 4208
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_153

    .line 4217
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 4218
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4237
    :cond_171
    iput-object v5, p0, Lcom/android/phone/InCallFragment;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 4241
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v5, v1, :cond_17b

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v1, :cond_209

    :cond_17b
    if-eqz v2, :cond_209

    const/4 v1, 0x1

    .line 4263
    :goto_17e
    if-eqz v1, :cond_20c

    .line 4270
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_2b

    .line 4127
    :cond_18d
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v8, :cond_19a

    .line 4128
    const v0, 0x7f0e0017

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2b

    .line 4130
    :cond_19a
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v8, :cond_1a7

    .line 4131
    const v0, 0x7f0e0016

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2b

    .line 4133
    :cond_1a7
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v8, :cond_1b4

    .line 4134
    const v0, 0x7f0e0018

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2b

    .line 4136
    :cond_1b4
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v8, :cond_1c1

    .line 4137
    const v0, 0x7f0e0019

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2b

    .line 4139
    :cond_1c1
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v8, :cond_11b

    .line 4140
    const v0, 0x7f0e001a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2b

    .line 4161
    :cond_1ce
    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v8, :cond_1d6

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_13c

    :cond_1d6
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v5, v4, :cond_13c

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v5, v4, :cond_13c

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v5, v4, :cond_13c

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v5, v4, :cond_13c

    .line 4167
    iget-object v4, v1, Lcom/android/phone/MSimInCallUiState;->mSimNeedToShowCallLostDialog:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_1f6

    .line 4169
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->showCallLostDialog()V

    .line 4170
    iget-object v1, v1, Lcom/android/phone/MSimInCallUiState;->mSimNeedToShowCallLostDialog:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v7

    goto/16 :goto_13c

    .line 4172
    :cond_1f6
    if-nez v3, :cond_202

    .line 4174
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->showCallLostDialog()V

    .line 4175
    iget-object v1, v1, Lcom/android/phone/MSimInCallUiState;->mSimNeedToShowCallLostDialog:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v7

    goto/16 :goto_13c

    .line 4179
    :cond_202
    iget-object v1, v1, Lcom/android/phone/MSimInCallUiState;->mSimNeedToShowCallLostDialog:[Z

    const/4 v3, 0x1

    aput-boolean v3, v1, v7

    goto/16 :goto_13c

    .line 4241
    :cond_209
    const/4 v1, 0x0

    goto/16 :goto_17e

    .line 4279
    :cond_20c
    if-eqz v2, :cond_227

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->hasDisconnectedFgCall(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-nez v0, :cond_222

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->hasDisconnectedBgCall(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-eqz v0, :cond_227

    .line 4283
    :cond_222
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4290
    :cond_227
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 4295
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    .line 4297
    if-nez v0, :cond_258

    .line 4302
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_240

    .line 4303
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4306
    :cond_240
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_24c

    .line 4307
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 4310
    :cond_24c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_258

    .line 4311
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 4317
    :cond_258
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->unHoldOrUnMuteCall(Lcom/android/internal/telephony/CallManager;I)V

    .line 4321
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->refreshTabs()V

    .line 4334
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_290

    .line 4335
    if-nez v2, :cond_290

    .line 4339
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4348
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 4349
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 4350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->requestUpdateInCallTouchUi(Z)V

    .line 4351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->setEndButton(Z)V

    goto/16 :goto_2b

    .line 4365
    :cond_290
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v0, :cond_2b1

    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mIsRecording:Z

    if-nez v0, :cond_2b1

    const/16 v0, 0xc8

    .line 4369
    :goto_29a
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4370
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2b

    .line 4365
    :cond_2b1
    const/16 v0, 0x7d0

    goto :goto_29a

    :cond_2b4
    move-object v2, v3

    goto/16 :goto_54
.end method

.method private onHoldClick()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 3019
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-eq v5, v7, :cond_e

    .line 3057
    :goto_d
    return-void

    .line 3024
    :cond_e
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    invoke-virtual {v5}, Lcom/android/phone/InCallControlState_DSDA;->getUserHold()Z

    move-result v4

    .line 3025
    .local v4, userHold:Z
    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    if-nez v4, :cond_41

    move v5, v6

    :goto_19
    invoke-virtual {v7, v5}, Lcom/android/phone/InCallControlState_DSDA;->setUserHold(Z)V

    .line 3029
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    .line 3030
    .local v0, hasActiveCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 3033
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_43

    if-nez v1, :cond_43

    .line 3035
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3037
    const/4 v3, 0x1

    .line 3038
    .local v3, newHoldState:Z
    const/4 v2, 0x1

    .line 3055
    .local v2, holdButtonEnabled:Z
    :goto_3d
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    goto :goto_d

    .line 3025
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_41
    const/4 v5, 0x0

    goto :goto_19

    .line 3039
    .restart local v0       #hasActiveCall:Z
    .restart local v1       #hasHoldingCall:Z
    :cond_43
    if-nez v0, :cond_55

    if-eqz v1, :cond_55

    .line 3041
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3043
    const/4 v3, 0x0

    .line 3044
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x1

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_3d

    .line 3047
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_55
    const/4 v3, 0x0

    .line 3048
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x0

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_3d
.end method

.method private onMMICancel(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 2239
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 2250
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 2251
    :cond_f
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "r"

    .prologue
    .line 4771
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 4773
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4775
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1a

    .line 4776
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4777
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 4802
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_19
    :goto_19
    return-void

    .line 4799
    :cond_1a
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    if-eqz v2, :cond_19

    .line 4800
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    invoke-virtual {v2}, Lcom/android/phone/RespondViaSmsManager_DSDA;->dismissPopup()V

    goto :goto_19
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter "r"

    .prologue
    const/4 v6, 0x0

    .line 3915
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v4, :cond_6

    .line 3992
    :cond_5
    :goto_5
    return-void

    .line 3919
    :cond_6
    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 3922
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 3924
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    if-eq v4, v5, :cond_1c

    .line 3926
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    goto :goto_5

    .line 3934
    :cond_1c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isGsmCallRemoteAnswered()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 3935
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/phone/PhoneApp;->setGsmCallRemoteAnswered(Z)V

    .line 3936
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v4

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-eq v4, v5, :cond_6e

    .line 3937
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    .line 3938
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 3940
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 3941
    .local v0, fragment:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_6e

    .line 3942
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen_DSDA;->getMatchingTabToaFragment(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 3943
    .local v3, tab:Landroid/app/ActionBar$Tab;
    if-eqz v3, :cond_6e

    .line 3945
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 3958
    .end local v0           #fragment:Lcom/android/phone/InCallFragment;
    .end local v3           #tab:Landroid/app/ActionBar$Tab;
    :cond_6e
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-nez v4, :cond_7e

    .line 3959
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3976
    :cond_7e
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    .line 3982
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v4, :cond_8a

    .line 3983
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3988
    :cond_8a
    sget-boolean v4, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen_DSDA;->isForegroundActivity()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3989
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen_DSDA;->refreshTabs()V

    goto/16 :goto_5
.end method

.method private onShowHideDialpad()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3102
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3103
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    .line 3107
    :goto_e
    return-void

    .line 3105
    :cond_f
    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->showDialpadInternal(Z)V

    goto :goto_e
.end method

.method private onShowHideMore()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 5188
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMoreView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 5189
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->hideMoreInternal(Z)V

    .line 5199
    :goto_c
    return-void

    .line 5191
    :cond_d
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    .line 5197
    :cond_19
    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->showMoreInternal(Z)V

    goto :goto_c
.end method

.method private reStartTone()V
    .registers 3

    .prologue
    .line 2460
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getState()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 2462
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->startTone(C)V

    .line 2464
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->stopTone()V

    .line 2468
    :cond_11
    return-void
.end method

.method private registerForLineControlInfo()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v6, 0x1

    .line 4692
    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mRegisteredForLineControlInfo:Z

    if-nez v0, :cond_40

    .line 4693
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 4694
    if-ne v0, v1, :cond_3e

    .line 4695
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    .line 4696
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    aput-object v0, v4, v2

    .line 4697
    const/16 v0, 0x7d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    .line 4698
    const/4 v0, 0x0

    aput-object v0, v4, v1

    .line 4700
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/Class;

    .line 4701
    const-class v0, Landroid/os/Handler;

    aput-object v0, v5, v2

    .line 4702
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v6

    .line 4704
    const-class v0, Ljava/lang/Object;

    aput-object v0, v5, v1

    .line 4707
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "registerForLineControlInfo"

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/InCallFragment;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 4713
    :cond_3e
    iput-boolean v6, p0, Lcom/android/phone/InCallFragment;->mRegisteredForLineControlInfo:Z

    .line 4715
    :cond_40
    return-void
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 1613
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1614
    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aput-object p1, v0, v1

    .line 1619
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_fc

    .line 1743
    :goto_1b
    return-void

    .line 1621
    :pswitch_1c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1622
    const-string v0, "InCallFragment"

    const-string v1, "MANAGE_CONFERENCE: no active conference call!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_1b

    .line 1627
    :cond_37
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;

    move-result-object v0

    .line 1630
    if-eqz v0, :cond_47

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v4, :cond_4d

    .line 1632
    :cond_47
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_1b

    .line 1641
    :cond_4d
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v1}, Lcom/android/phone/ManageConferenceUtils_DSDA;->initManageConferencePanel()V

    .line 1643
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v1, v0}, Lcom/android/phone/ManageConferenceUtils_DSDA;->updateManageConferencePanel(Ljava/util/List;)V

    .line 1647
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v0, v4}, Lcom/android/phone/ManageConferenceUtils_DSDA;->setPanelVisible(Z)V

    .line 1656
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 1658
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Lcom/android/phone/ManageConferenceUtils_DSDA;->startConferenceTime(J)V

    .line 1661
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1b

    .line 1672
    :pswitch_7d
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v0, v3}, Lcom/android/phone/ManageConferenceUtils_DSDA;->setPanelVisible(Z)V

    .line 1673
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUtils_DSDA;->stopConferenceTime()V

    .line 1676
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1b

    .line 1681
    :pswitch_8d
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1682
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1686
    :goto_98
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v0, v3}, Lcom/android/phone/ManageConferenceUtils_DSDA;->setPanelVisible(Z)V

    .line 1687
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUtils_DSDA;->stopConferenceTime()V

    goto/16 :goto_1b

    .line 1684
    :cond_a4
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_98

    .line 1691
    :pswitch_aa
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1693
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1697
    :pswitch_ba
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1699
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1727
    :pswitch_ca
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const-string v2, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen_DSDA;->setIntent(Landroid/content/Intent;)V

    .line 1731
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_f6

    .line 1732
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_ef

    .line 1733
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v4}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1739
    :cond_ef
    :goto_ef
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1736
    :cond_f6
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    goto :goto_ef

    .line 1619
    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_7d
        :pswitch_8d
        :pswitch_aa
        :pswitch_ba
        :pswitch_ca
    .end packed-switch
.end method

.method private showCallLostDialog()V
    .registers 4

    .prologue
    .line 4392
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4418
    :cond_e
    :goto_e
    return-void

    .line 4398
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_call_lost_dialog"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 4400
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mIsEmergencyNumber:Z

    if-nez v0, :cond_e

    .line 4408
    :cond_29
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_e

    .line 4413
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0026

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 4417
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_e
.end method

.method private showDialpadInternal(Z)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f09006f

    .line 1057
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMoreView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 1058
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->hideMoreInternal(Z)V

    .line 1063
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v0}, Lcom/android/phone/InCallFragment;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1064
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1065
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen_DSDA;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1066
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1067
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1069
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v3, 0x7f09006d

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallContactPhoto;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 1070
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    if-eqz v0, :cond_6e

    .line 1071
    if-le v1, v2, :cond_6e

    .line 1072
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard_DSDA;->getCallerinfo(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1074
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1075
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftName:Landroid/widget/TextView;

    .line 1076
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftName:Landroid/widget/TextView;

    const v1, 0x7f0e0025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    const v1, 0x7f02009b

    invoke-static {v0, v1}, Lcom/android/phone/InCallFragment;->showImage(Landroid/widget/ImageView;I)V

    .line 1110
    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->openDialer(Z)V

    .line 1114
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1115
    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimShowDialpad:[Z

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1118
    return-void

    .line 1080
    :cond_81
    if-eqz v1, :cond_92

    iget-boolean v0, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_92

    .line 1081
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f7

    .line 1082
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/android/phone/InCallFragment;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1088
    :cond_92
    :goto_92
    if-eqz v1, :cond_6e

    .line 1089
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftName:Landroid/widget/TextView;

    .line 1090
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftName:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f090071

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    .line 1093
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f090075

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadView_SocialStatus:Landroid/widget/TextView;

    .line 1096
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadView_SocialStatus:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f09006e

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    .line 1099
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3}, Lcom/android/phone/InCallFragment;->showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 1100
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftName:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3}, Lcom/android/phone/InCallFragment;->showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 1101
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadView_SocialStatus:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/android/phone/InCallFragment;->showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V

    goto/16 :goto_6e

    .line 1084
    :cond_f7
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f02009f

    invoke-static {v0, v2}, Lcom/android/phone/InCallFragment;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_92
.end method

.method private showExitingECMDialog()V
    .registers 5

    .prologue
    .line 3492
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 3494
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3502
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 3503
    new-instance v1, Lcom/android/phone/InCallFragment$14;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/InCallFragment$14;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/phone/MSimInCallUiState;)V

    .line 3507
    new-instance v2, Lcom/android/phone/InCallFragment$15;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InCallFragment$15;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/phone/MSimInCallUiState;)V

    .line 3513
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e01d2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0e0029

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3518
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3520
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3521
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 3375
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3380
    if-eqz p2, :cond_40

    .line 3381
    new-instance v1, Lcom/android/phone/InCallFragment$10;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallFragment$10;-><init>(Lcom/android/phone/InCallFragment;)V

    .line 3385
    new-instance v0, Lcom/android/phone/InCallFragment$11;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallFragment$11;-><init>(Lcom/android/phone/InCallFragment;)V

    .line 3404
    :goto_14
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0029

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3412
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3415
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3416
    return-void

    .line 3390
    :cond_40
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v0

    .line 3391
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3392
    new-instance v1, Lcom/android/phone/InCallFragment$12;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/InCallFragment$12;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Phone;)V

    .line 3396
    new-instance v0, Lcom/android/phone/InCallFragment$13;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/InCallFragment$13;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Phone;)V

    goto :goto_14
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 4907
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4908
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4909
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 4903
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4904
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4905
    return-void
.end method

.method private showMoreInternal(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 5203
    if-eqz p1, :cond_e

    .line 5204
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMoreView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/phone/CallCard$Fade;->show(Landroid/view/View;)V

    .line 5208
    :goto_7
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMoreButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 5209
    return-void

    .line 5206
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMoreView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method private showPausePromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1416
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1418
    const v2, 0x7f0e0034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1419
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_22

    .line 1422
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 1426
    :cond_22
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 1429
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1431
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1432
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1433
    return-void
.end method

.method private showProgressIndication(II)V
    .registers 3
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    .line 2183
    return-void
.end method

.method private showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 3192
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_70

    .line 3282
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showStatusIndication: unexpected status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3196
    :pswitch_25
    const-string v0, "InCallFragment"

    const-string v1, "showStatusIndication: nothing to display"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    :cond_2c
    :goto_2c
    :pswitch_2c
    return-void

    .line 3208
    :pswitch_2d
    const v0, 0x7f0e0189

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3216
    :pswitch_34
    const v0, 0x7f0e018a

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3222
    :pswitch_3b
    const v0, 0x7f0e018b

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3230
    :pswitch_42
    const v0, 0x7f0e018c

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3244
    :pswitch_49
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2c

    .line 3245
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v1, 0x7f0e018e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2c

    .line 3256
    :pswitch_61
    const v0, 0x7f0e018d

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3263
    :pswitch_68
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->handleMissingVoiceMailNumber()V

    goto :goto_2c

    .line 3278
    :pswitch_6c
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->showExitingECMDialog()V

    goto :goto_2c

    .line 3192
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2d
        :pswitch_34
        :pswitch_3b
        :pswitch_42
        :pswitch_49
        :pswitch_61
        :pswitch_68
        :pswitch_2c
        :pswitch_6c
    .end packed-switch
.end method

.method private static final showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter "view"
    .parameter "resource"
    .parameter "vg"

    .prologue
    const/4 v0, 0x0

    .line 4911
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4912
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4913
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4914
    return-void
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1441
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1443
    const v3, 0x7f0e0033

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1444
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_6d

    .line 1449
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 1450
    const/4 v0, 0x1

    .line 1453
    :goto_29
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1454
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v4, 0x7f0e0036

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen_DSDA;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/phone/InCallFragment$2;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallFragment$2;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1462
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    const v3, 0x7f0e0037

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/phone/InCallFragment$3;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallFragment$3;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1468
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1469
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1472
    if-eqz v0, :cond_6c

    .line 1473
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1475
    :cond_6c
    return-void

    :cond_6d
    move v0, v1

    goto :goto_29
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter

    .prologue
    .line 1478
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 1480
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_15

    .line 1481
    const-string v1, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1482
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1483
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 1486
    :cond_15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0035

    new-instance v2, Lcom/android/phone/InCallFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallFragment$5;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InCallFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InCallFragment$4;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 1511
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1513
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1515
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1516
    return-void
.end method

.method private startTone(C)V
    .registers 5
    .parameter "c"

    .prologue
    .line 2396
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2397
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2398
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 2399
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startTone(C)V

    .line 2404
    :goto_1a
    return-void

    .line 2401
    :cond_1b
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    goto :goto_1a
.end method

.method private stopTimer()V
    .registers 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/CallCard_DSDA;->stopTimer()V

    .line 1155
    :cond_9
    return-void
.end method

.method private stopTone()V
    .registers 4

    .prologue
    .line 2412
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2413
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2415
    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 2417
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2419
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 2420
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 2421
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 2426
    :cond_2f
    :goto_2f
    return-void

    .line 2424
    :cond_30
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    goto :goto_2f
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 992
    const/4 v3, 0x0

    .line 996
    .local v3, updateSuccessful:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .line 1002
    .local v1, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v5, v6, :cond_28

    iget-object v5, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v5, v6, :cond_2b

    .line 1007
    :cond_28
    sget-object v4, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    .line 1051
    :goto_2a
    return-object v4

    .line 1016
    :cond_2b
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v4, :cond_70

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_70

    move v0, v4

    .line 1023
    .local v0, hasPendingMmiCodes:Z
    :goto_40
    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v1, v5}, Lcom/android/phone/MSimInCallUiState;->isProgressIndicationActive(I)Z

    move-result v2

    .line 1028
    .local v2, showProgressIndication:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v5

    if-nez v5, :cond_68

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v5

    if-nez v5, :cond_68

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v5

    if-nez v5, :cond_68

    if-nez v0, :cond_68

    if-eqz v2, :cond_72

    .line 1032
    :cond_68
    iput-boolean v4, p0, Lcom/android/phone/InCallFragment;->mHideImmediately:Z

    .line 1036
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 1037
    sget-object v4, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    goto :goto_2a

    .line 1016
    .end local v0           #hasPendingMmiCodes:Z
    .end local v2           #showProgressIndication:Z
    :cond_70
    const/4 v0, 0x0

    goto :goto_40

    .line 1044
    .restart local v0       #hasPendingMmiCodes:Z
    .restart local v2       #showProgressIndication:Z
    :cond_72
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-boolean v4, v4, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-eqz v4, :cond_84

    iget-boolean v4, p0, Lcom/android/phone/InCallFragment;->mRemoteCallEnd:Z

    if-eqz v4, :cond_84

    .line 1045
    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v4}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1046
    sget-object v4, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    goto :goto_2a

    .line 1050
    :cond_84
    const-string v4, "InCallFragment"

    const-string v5, "syncWithPhoneState: phone is idle (shouldn\'t be here)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    sget-object v4, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    goto :goto_2a
.end method

.method private unregisterForLineControllInfo()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 4718
    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mRegisteredForLineControlInfo:Z

    if-eqz v0, :cond_2c

    .line 4719
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 4720
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 4722
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    .line 4724
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    aput-object v0, v4, v6

    .line 4726
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/Class;

    .line 4727
    const-class v0, Landroid/os/Handler;

    aput-object v0, v5, v6

    .line 4729
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unregisterForLineControlInfo"

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/InCallFragment;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 4737
    :cond_2a
    iput-boolean v6, p0, Lcom/android/phone/InCallFragment;->mRegisteredForLineControlInfo:Z

    .line 4740
    :cond_2c
    return-void
.end method

.method private unregisterForPhoneStates()V
    .registers 3

    .prologue
    .line 3804
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 3805
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 3806
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 3807
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 3808
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 3809
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 3810
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 3811
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 3812
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 3813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallFragment;->mRegisteredForPhoneStates:Z

    .line 3814
    return-void
.end method

.method private updateActiveCallButtonState()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 4813
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v0, :cond_9

    .line 4850
    :cond_8
    :goto_8
    return-void

    .line 4818
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 4822
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    .line 4825
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1c

    .line 4826
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    .line 4831
    :cond_1c
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v3

    .line 4832
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    .line 4833
    if-eqz v0, :cond_34

    .line 4834
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    .line 4840
    :cond_34
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_44
    move v0, v2

    .line 4843
    :goto_45
    if-eqz v0, :cond_69

    .line 4844
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    const v4, 0x7f0e03d2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen_DSDA;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v4, v2}, Lcom/android/phone/InCallFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4846
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    :cond_67
    move v0, v1

    .line 4840
    goto :goto_45

    .line 4848
    :cond_69
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8
.end method

.method private updateDialpadVisibility()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1758
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_15

    .line 1759
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    .line 1769
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->clearDigits()V

    .line 1779
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1781
    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mHideImmediately:Z

    if-eqz v0, :cond_27

    .line 1782
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1783
    iput-boolean v2, p0, Lcom/android/phone/InCallFragment;->mHideImmediately:Z

    .line 1800
    :cond_26
    :goto_26
    return-void

    .line 1785
    :cond_27
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-static {v0, v3}, Lcom/android/phone/CallCard$Fade;->hide(Landroid/view/View;I)V

    goto :goto_26

    .line 1792
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1793
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_47

    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_26

    .line 1795
    :cond_47
    const-string v0, "- updateDialpadVisibility: dialpad dismissed, show mInCallPanel..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1796
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/phone/CallCard$Fade;->show(Landroid/view/View;)V

    goto :goto_26
.end method

.method private updateInCallTouchUi()V
    .registers 4

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    if-eqz v0, :cond_d

    .line 1808
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallTouchUi_DSDA;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 1816
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->requestUpdateInCallTouchUi(Z)V

    .line 1819
    return-void
.end method

.method private updateInCallTouchUiButtons(Z)V
    .registers 5
    .parameter "refreshButtonStates"

    .prologue
    .line 5171
    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v2

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    .line 5172
    .local v0, isActiveSub:Z
    :goto_d
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/InCallTouchUi_DSDA;->enableOrDisableFunctionalButtons(ZZ)V

    .line 5173
    return-void

    .line 5171
    .end local v0           #isActiveSub:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private updateManageConferencePanelIfNecessary()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1562
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;

    move-result-object v0

    .line 1563
    if-nez v0, :cond_24

    .line 1565
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1566
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->syncWithPhoneState()Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    move-result-object v0

    .line 1567
    sget-object v1, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    if-eq v0, v1, :cond_23

    .line 1570
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v0, v1, v4}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 1597
    :cond_23
    :goto_23
    return-void

    .line 1576
    :cond_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1577
    const/4 v2, 0x1

    if-gt v1, v2, :cond_5c

    .line 1579
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1580
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->syncWithPhoneState()Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    move-result-object v0

    .line 1581
    sget-object v1, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    if-eq v0, v1, :cond_23

    .line 1582
    const-string v1, "InCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- syncWithPhoneState failed! status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v0, v1, v4}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    goto :goto_23

    .line 1594
    :cond_5c
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v2}, Lcom/android/phone/ManageConferenceUtils_DSDA;->getNumCallersInConference()I

    move-result v2

    if-eq v1, v2, :cond_23

    .line 1595
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v1, v0}, Lcom/android/phone/ManageConferenceUtils_DSDA;->updateManageConferencePanel(Ljava/util/List;)V

    goto :goto_23
.end method

.method private updateProgressIndication()V
    .registers 5

    .prologue
    const v3, 0x7f0e0198

    .line 1842
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1843
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->dismissProgressIndication()V

    .line 1877
    :goto_10
    return-void

    .line 1850
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1851
    sget-object v1, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimInCallUiState;->getProgressIndication(I)Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5c

    .line 1871
    const-string v1, "InCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressIndication: unexpected value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v3}, Lcom/android/phone/MSimInCallUiState;->getProgressIndication(I)Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->dismissProgressIndication()V

    goto :goto_10

    .line 1854
    :pswitch_4a
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->dismissProgressIndication()V

    goto :goto_10

    .line 1859
    :pswitch_4e
    const v0, 0x7f0e0199

    invoke-direct {p0, v3, v0}, Lcom/android/phone/InCallFragment;->showProgressIndication(II)V

    goto :goto_10

    .line 1865
    :pswitch_55
    const v0, 0x7f0e019a

    invoke-direct {p0, v3, v0}, Lcom/android/phone/InCallFragment;->showProgressIndication(II)V

    goto :goto_10

    .line 1851
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4e
        :pswitch_55
    .end packed-switch
.end method

.method private updateProviderOverlay()V
    .registers 9

    .prologue
    const/16 v7, 0x79

    const/4 v6, 0x0

    .line 1900
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1903
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimProviderOverlayVisible:[Z

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_58

    .line 1904
    const v1, 0x7f0e01dd

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1905
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/phone/MSimInCallUiState;->mSimProviderLabel:[Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v3, v3, v4

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/android/phone/MSimInCallUiState;->mSimProviderAddress:[Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1909
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mCallingViaMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1911
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCallingViaIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimProviderIcon:[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1913
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mProviderOverLay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1917
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1918
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1919
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1924
    :goto_57
    return-void

    .line 1921
    :cond_58
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mProviderOverLay:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_57
.end method

.method private voiceRecordClick()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2357
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_52

    .line 2363
    :try_start_9
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->setupPathFileName()Ljava/lang/String;

    move-result-object v0

    .line 2366
    if-nez v0, :cond_1d

    .line 2367
    const-string v0, "InCallFragment"

    const-string v1, "voiceRecordClick()->resultPath is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecordButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2388
    :goto_1c
    return-void

    .line 2370
    :cond_1d
    const-string v1, "InCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voiceRecordClick()->resultPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->start(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_3a} :catch_3b

    goto :goto_1c

    .line 2375
    :catch_3b
    move-exception v0

    .line 2376
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v1, 0x7f0e0296

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2379
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecordButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1c

    .line 2385
    :cond_52
    const-string v0, "InCallFragment"

    const-string v1, "voiceRecordClick()->stop recording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->stop(I)V

    goto :goto_1c
.end method


# virtual methods
.method protected bailOutAfterErrorDialog()V
    .registers 6

    .prologue
    .line 3419
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_c

    .line 3420
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3421
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3437
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3438
    .local v1, phoneApp:Lcom/android/phone/PhoneApp;
    if-nez v1, :cond_13

    .line 3456
    :cond_12
    :goto_12
    return-void

    .line 3441
    :cond_13
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 3443
    .local v0, inCallUiState:Lcom/android/phone/MSimInCallUiState;
    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimInCallUiState;->clearPendingCallStatusCode(I)V

    .line 3452
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->phoneIsInUse()Z

    move-result v2

    if-nez v2, :cond_12

    .line 3453
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    goto :goto_12
.end method

.method protected delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "phone"

    .prologue
    .line 4422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/InCallFragment;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;Z)V

    .line 4423
    return-void
.end method

.method protected delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;Z)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4437
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4444
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 4447
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_28

    .line 4448
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_1f

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v3}, Lcom/android/phone/MSimInCallUiState;->isProgressIndicationActive(I)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_1f
    move v0, v2

    .line 4453
    :goto_20
    if-ne v2, v0, :cond_38

    .line 4455
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallFragment;->setEndButton(Z)V

    .line 4545
    :goto_25
    return-void

    :cond_26
    move v0, v1

    .line 4448
    goto :goto_20

    .line 4450
    :cond_28
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v0}, Lcom/android/phone/MSimInCallUiState;->isProgressIndicationActive()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_34
    move v0, v2

    goto :goto_20

    :cond_36
    move v0, v1

    goto :goto_20

    .line 4463
    :cond_38
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 4492
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hwfeature_endtocall_log"

    invoke-static {v0, v3, v1}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_93

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v3, :cond_93

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v3, :cond_93

    invoke-virtual {p0, p1}, Lcom/android/phone/InCallFragment;->isPhoneStateRestricted(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_93

    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-eqz v0, :cond_93

    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-nez v0, :cond_cc

    move v0, v2

    :goto_69
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasCallOnSubscription(I)Z

    move-result v0

    if-nez v0, :cond_93

    .line 4501
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;

    move-result-object v0

    .line 4502
    const/high16 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Show Call Log (or Dialtacts) after disconnect. Current intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4508
    :try_start_90
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_93
    .catch Landroid/content/ActivityNotFoundException; {:try_start_90 .. :try_end_93} :catch_ce

    .line 4528
    :cond_93
    :goto_93
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v0, v3, v1}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 4531
    :cond_9e
    if-eqz p2, :cond_c4

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 4535
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 4536
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v5, 0x7f0e03d3

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/InCallScreen_DSDA;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4543
    :cond_c4
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_cc
    move v0, v1

    .line 4492
    goto :goto_69

    .line 4509
    :catch_ce
    move-exception v3

    .line 4516
    const-string v3, "InCallFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delayedCleanupAfterDisconnect: transition to call log failed; intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93
.end method

.method protected dismissAllDialogs()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1362
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    .line 1363
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1365
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 1367
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_21

    .line 1368
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1370
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 1372
    :cond_21
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_31

    .line 1373
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1375
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 1377
    :cond_31
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_41

    .line 1378
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1380
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 1382
    :cond_41
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4c

    .line 1384
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1385
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 1387
    :cond_4c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5c

    .line 1388
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1390
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 1392
    :cond_5c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6c

    .line 1393
    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1395
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 1397
    :cond_6c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_77

    .line 1399
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1400
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 1403
    :cond_77
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_87

    .line 1404
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1406
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 1409
    :cond_87
    return-void
.end method

.method public getManageConferenceGroup(I)Landroid/view/ViewStub;
    .registers 4
    .parameter

    .prologue
    .line 5178
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method public getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .registers 3

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallControlState_DSDA;->update(I)V

    .line 3578
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    return-object v0
.end method

.method public getUpdatedTabView(Landroid/content/Context;ZZI)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x8

    .line 4930
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mTabContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_43

    .line 4931
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4932
    const v2, 0x7f040032

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4934
    const v0, 0x7f0900fc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mTabContainer:Landroid/widget/RelativeLayout;

    .line 4935
    const v0, 0x7f0900fd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    .line 4937
    const v0, 0x7f0900fe

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeView:Landroid/widget/TextView;

    .line 4938
    const v0, 0x7f0900ff

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    .line 4941
    :cond_43
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeView:Landroid/widget/TextView;

    invoke-static {p1, p4}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4943
    if-nez p3, :cond_5b

    .line 4945
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4946
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4947
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mTabContainer:Landroid/widget/RelativeLayout;

    .line 4999
    :goto_5a
    return-object v0

    .line 4950
    :cond_5b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 4952
    if-nez p4, :cond_63

    .line 4953
    :cond_63
    invoke-static {v2, p4}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    .line 4954
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    if-ne v0, p4, :cond_81

    const/4 v0, 0x1

    .line 4956
    :goto_72
    if-eqz p2, :cond_83

    .line 4959
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4960
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4999
    :goto_7e
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mTabContainer:Landroid/widget/RelativeLayout;

    goto :goto_5a

    :cond_81
    move v0, v1

    .line 4954
    goto :goto_72

    .line 4966
    :cond_83
    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hasDialingCallImpl(I)Z

    move-result v4

    .line 4967
    if-eqz v3, :cond_a3

    .line 4968
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4969
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    sget-object v2, Lcom/android/phone/PhoneApp$CallState;->RINGING:Lcom/android/phone/PhoneApp$CallState;

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getImageResourceForState(ILcom/android/phone/PhoneApp$CallState;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4970
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7e

    .line 4971
    :cond_a3
    if-eqz v4, :cond_bd

    .line 4972
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4973
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    sget-object v2, Lcom/android/phone/PhoneApp$CallState;->DIALING:Lcom/android/phone/PhoneApp$CallState;

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getImageResourceForState(ILcom/android/phone/PhoneApp$CallState;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4974
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7e

    .line 4975
    :cond_bd
    if-eqz v0, :cond_ee

    .line 4978
    invoke-static {v2, p4}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    .line 4980
    invoke-static {v2, p4}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    .line 4981
    if-eqz v0, :cond_e3

    if-nez v2, :cond_e3

    .line 4983
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4984
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    sget-object v2, Lcom/android/phone/PhoneApp$CallState;->HOLD:Lcom/android/phone/PhoneApp$CallState;

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getImageResourceForState(ILcom/android/phone/PhoneApp$CallState;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4985
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7e

    .line 4987
    :cond_e3
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4988
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7e

    .line 4992
    :cond_ee
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4993
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    sget-object v2, Lcom/android/phone/PhoneApp$CallState;->HOLD:Lcom/android/phone/PhoneApp$CallState;

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getImageResourceForState(ILcom/android/phone/PhoneApp$CallState;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4994
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7e
.end method

.method public getmCallCard()Lcom/android/phone/CallCard;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    return-object v0
.end method

.method public getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    return-object v0
.end method

.method public getmInCallControlState()Lcom/android/phone/InCallControlState;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    return-object v0
.end method

.method public getmInCallPanel()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    return-object v0
.end method

.method public getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    return-object v0
.end method

.method public getmParent()Lcom/android/phone/InCallScreen_DSDA;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method public getmRespondViaSmsManager()Lcom/android/phone/RespondViaSmsManager_DSDA;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    return-object v0
.end method

.method public getmSubscription()I
    .registers 2

    .prologue
    .line 407
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    return v0
.end method

.method handleCallKey()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2767
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    .line 2768
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 2769
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    .line 2772
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2773
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4a

    .line 2777
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 2779
    if-eqz v0, :cond_34

    .line 2781
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalAnswerCall()V

    .line 2838
    :cond_33
    :goto_33
    return v5

    .line 2783
    :cond_34
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_42

    if-eqz v1, :cond_42

    .line 2787
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;I)V

    goto :goto_33

    .line 2788
    :cond_42
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_33

    .line 2791
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalSwapCalls()V

    goto :goto_33

    .line 2793
    :cond_4a
    if-eq v3, v5, :cond_4f

    const/4 v4, 0x3

    if-ne v3, v4, :cond_71

    .line 2795
    :cond_4f
    if-eqz v0, :cond_55

    .line 2810
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalAnswerCall()V

    goto :goto_33

    .line 2811
    :cond_55
    if-eqz v1, :cond_5d

    if-eqz v2, :cond_5d

    .line 2813
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalSwapCalls()V

    goto :goto_33

    .line 2814
    :cond_5d
    if-eqz v2, :cond_6b

    .line 2818
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_33

    .line 2829
    :cond_6b
    const-string v0, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    goto :goto_33

    .line 2833
    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleOnscreenButtonClick(I)V
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x1400

    .line 2648
    sparse-switch p1, :sswitch_data_aa

    .line 2731
    const-string v0, "InCallFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    :goto_1d
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 2754
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 2755
    return-void

    .line 2651
    :sswitch_26
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalAnswerCall()V

    goto :goto_1d

    .line 2654
    :sswitch_2a
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->hangupRingingCall()V

    goto :goto_1d

    .line 2657
    :sswitch_2e
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalRespondViaSms()V

    goto :goto_1d

    .line 2662
    :sswitch_32
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->onHoldClick()V

    goto :goto_1d

    .line 2665
    :sswitch_36
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalSwapCalls()V

    goto :goto_1d

    .line 2668
    :sswitch_3a
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalHangup()V

    goto :goto_1d

    .line 2672
    :sswitch_3e
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalHangup()V

    goto :goto_1d

    .line 2676
    :sswitch_42
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->onShowHideDialpad()V

    goto :goto_1d

    .line 2679
    :sswitch_46
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->onMuteClick()V

    goto :goto_1d

    .line 2686
    :sswitch_4a
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;I)V

    goto :goto_1d

    .line 2691
    :sswitch_52
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;I)V

    goto :goto_1d

    .line 2695
    :sswitch_5a
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2696
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    goto :goto_1d

    .line 2701
    :sswitch_63
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->onShowHideMore()V

    goto :goto_1d

    .line 2704
    :sswitch_67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2705
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2706
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1d

    .line 2709
    :sswitch_75
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->voiceRecordClick()V

    goto :goto_1d

    .line 2713
    :sswitch_79
    :try_start_79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2714
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2715
    const-string v1, "com.huawei.android.dsm.notepad"

    const-string v2, "com.huawei.android.dsm.notepad.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2716
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_8d} :catch_8e

    goto :goto_1d

    .line 2717
    :catch_8e
    move-exception v0

    .line 2719
    :try_start_8f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2720
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2721
    const-string v1, "vnd.android.cursor.dir/vnd.google.note"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2722
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a4} :catch_a6

    goto/16 :goto_1d

    .line 2723
    :catch_a6
    move-exception v0

    goto/16 :goto_1d

    .line 2648
    nop

    :sswitch_data_aa
    .sparse-switch
        0x7f090008 -> :sswitch_26
        0x7f090009 -> :sswitch_2a
        0x7f09000a -> :sswitch_2e
        0x7f090080 -> :sswitch_5a
        0x7f090083 -> :sswitch_52
        0x7f090097 -> :sswitch_46
        0x7f09009a -> :sswitch_32
        0x7f09009c -> :sswitch_36
        0x7f09009f -> :sswitch_75
        0x7f0900a1 -> :sswitch_67
        0x7f0900a3 -> :sswitch_4a
        0x7f0900a5 -> :sswitch_52
        0x7f0900a7 -> :sswitch_79
        0x7f0900ab -> :sswitch_42
        0x7f0900ac -> :sswitch_63
        0x7f0900ad -> :sswitch_3a
        0x7f0900d8 -> :sswitch_3e
    .end sparse-switch
.end method

.method hangupRingingCall()V
    .registers 3

    .prologue
    .line 3730
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 3733
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 3734
    return-void
.end method

.method hideDialpadInternal(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v0}, Lcom/android/phone/InCallFragment;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1124
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1125
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen_DSDA;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1126
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1127
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1129
    if-le v1, v0, :cond_55

    .line 1130
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard_DSDA;->getCallerinfo(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallerInfo;

    .line 1131
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallContactPhoto;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 1132
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    if-eqz v0, :cond_3f

    .line 1133
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1136
    :cond_3f
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    .line 1137
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_55

    .line 1138
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/phone/InCallFragment;->hideVG(Landroid/view/ViewGroup;)V

    .line 1143
    :cond_55
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->closeDialer(Z)V

    .line 1147
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1148
    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimShowDialpad:[Z

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1151
    return-void
.end method

.method hideMoreInternal(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    const/16 v1, 0x8

    .line 5213
    if-eqz p1, :cond_10

    .line 5214
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMoreView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/phone/CallCard$Fade;->hide(Landroid/view/View;I)V

    .line 5218
    :goto_9
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMoreButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 5219
    return-void

    .line 5216
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMoreView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9
.end method

.method isDialerOpened()Z
    .registers 2

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isManageConferenceMode()Z
    .registers 4

    .prologue
    .line 3740
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 3741
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isPhoneStateRestricted(Lcom/android/internal/telephony/Phone;)Z
    .registers 5
    .parameter "phone"

    .prologue
    const/4 v1, 0x1

    .line 4559
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 4560
    .local v0, serviceState:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1c

    if-eq v0, v1, :cond_1c

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method okToShowInCallTouchUi()Z
    .registers 4

    .prologue
    .line 2637
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 2639
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_1a

    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_1c

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 456
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen_DSDA;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    .line 459
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    .line 460
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 461
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 462
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 3536
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3538
    packed-switch v1, :pswitch_data_7e

    .line 3552
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v0, v0, v2

    .line 3553
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v2, :cond_1b

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v2, :cond_52

    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_52

    .line 3557
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->onClickHandler(I)V

    .line 3569
    :goto_28
    const v1, 0x1129f

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_7b

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_39
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3573
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3574
    return-void

    .line 3540
    :pswitch_44
    const-string v0, "onClick: mButtonManageConferenceDone..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 3542
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 3543
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    goto :goto_28

    .line 3563
    :cond_52
    const-string v0, "InCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click from ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (View = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3569
    :cond_7b
    const-string v0, ""

    goto :goto_39

    .line 3538
    :pswitch_data_7e
    .packed-switch 0x7f0900c2
        :pswitch_44
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 484
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 486
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "subscription"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_14
    iput v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    .line 487
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 488
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v2, p0}, Lcom/android/phone/PhoneApp;->setInCallFragmentInstance(ILcom/android/phone/InCallFragment;)V

    .line 494
    sget-boolean v0, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    if-eqz v0, :cond_2e

    .line 495
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->initVoiceRecord()V

    .line 499
    :cond_2e
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->initChildControls()V

    .line 502
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->registerForLineControlInfo()V

    .line 504
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->registerForPhoneStates()V

    .line 510
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hw_vibrate_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_48

    .line 511
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mHwVibrate:Z

    .line 515
    :cond_48
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->setHasOptionsMenu(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    .line 520
    new-instance v0, Lcom/android/phone/InCallFragment$SubChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InCallFragment$SubChangeListener;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/phone/InCallFragment$1;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mSubChangeListener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

    .line 521
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mSubChangeListener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setSubscriptionListener(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V

    .line 523
    return-void

    :cond_61
    move v0, v1

    .line 486
    goto :goto_14
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 528
    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 529
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->initInCallFragment(Landroid/view/View;)V

    .line 530
    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 551
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 553
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->resetInCallFragmentInstance(I)V

    .line 556
    sget-boolean v0, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    if-eqz v0, :cond_1d

    .line 557
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mSdReceiver:Lcom/android/phone/InCallFragment$SdReceiver;

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->unregisterForNotifications()V

    .line 559
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    .line 565
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    if-eqz v0, :cond_29

    .line 566
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/InCallFragment;

    invoke-virtual {v2, v0}, Lcom/android/phone/CallCard_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 568
    :cond_29
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    if-eqz v0, :cond_35

    .line 569
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/InCallFragment;

    invoke-virtual {v2, v0}, Lcom/android/phone/InCallTouchUi_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 571
    :cond_35
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    if-eqz v0, :cond_41

    .line 572
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/InCallFragment;

    invoke-virtual {v2, v0}, Lcom/android/phone/RespondViaSmsManager_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 575
    :cond_41
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->clearInCallScreenReference()V

    .line 576
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    .line 579
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->unregisterForLineControllInfo()V

    .line 582
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->unregisterForPhoneStates()V

    .line 585
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 587
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    .line 590
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mSubChangeListener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->removeSubscriptionListenr(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V

    .line 591
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mSubChangeListener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

    .line 593
    return-void
.end method

.method public onDetach()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 468
    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    .line 469
    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    .line 470
    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 471
    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 473
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onFragmentDetached(Ljava/lang/String;)V

    .line 476
    :cond_19
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    if-eqz v0, :cond_22

    .line 477
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/RespondViaSmsManager_DSDA;->dismissPopup()V

    .line 480
    :cond_22
    return-void
.end method

.method protected onMMIInitiate(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter

    .prologue
    const v2, 0x7f090030

    .line 2198
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 2205
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2206
    :cond_13
    const-string v0, "Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 2228
    :goto_18
    return-void

    .line 2214
    :cond_19
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->dismissAllDialogs()V

    .line 2216
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 2220
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 2221
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2225
    :cond_35
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2226
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {v2, v0, v1, v3}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_18
.end method

.method onMuteClick()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3751
    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getMute(I)Z

    move-result v4

    if-nez v4, :cond_18

    move v0, v2

    .line 3754
    .local v0, newMuteState:Z
    :goto_b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v4

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-eq v4, v5, :cond_1a

    .line 3762
    :goto_17
    return-void

    .end local v0           #newMuteState:Z
    :cond_18
    move v0, v3

    .line 3751
    goto :goto_b

    .line 3757
    .restart local v0       #newMuteState:Z
    :cond_1a
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/InCallControlState_DSDA;->getUserMute()Z

    move-result v1

    .line 3758
    .local v1, userMute:Z
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    if-nez v1, :cond_2d

    :goto_24
    invoke-virtual {v4, v2}, Lcom/android/phone/InCallControlState_DSDA;->setUserMute(Z)V

    .line 3760
    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    goto :goto_17

    :cond_2d
    move v2, v3

    .line 3758
    goto :goto_24
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 840
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 841
    .local v0, id:I
    packed-switch v0, :pswitch_data_12

    .line 847
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 843
    :pswitch_c
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->voiceRecordClick()V

    .line 844
    const/4 v1, 0x1

    goto :goto_b

    .line 841
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 597
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 599
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 600
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimProviderOverlayVisible:[Z

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aput-boolean v3, v1, v2

    .line 603
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateProviderOverlay()V

    .line 607
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v1}, Lcom/android/phone/ManageConferenceUtils_DSDA;->stopConferenceTime()V

    .line 611
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 615
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 618
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    if-eqz v1, :cond_30

    .line 619
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v1}, Lcom/android/phone/CallCard_DSDA;->onPause()V

    .line 645
    :cond_30
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_54

    .line 647
    const-string v1, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v1, v2, v3}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 651
    :cond_54
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->dismissAllDialogs()V

    .line 656
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen_DSDA;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 657
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    const v3, 0x7f0e028a

    const/4 v2, 0x0

    .line 818
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 819
    const/4 v1, 0x1

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 821
    .local v0, menuItem:Landroid/view/MenuItem;
    sget-boolean v1, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    iget-boolean v1, v1, Lcom/android/phone/InCallControlState_DSDA;->canVoiceRecord:Z

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->okToShowInCallTouchUi()Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    iget-boolean v1, v1, Lcom/android/phone/InCallControlState_DSDA;->dialpadVisible:Z

    if-nez v1, :cond_47

    .line 823
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    if-eqz v1, :cond_3b

    .line 824
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 825
    const-string v1, "InCallFragment"

    const-string v2, "onPrepareOptionsMenu()->start recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const v1, 0x7f0e028c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 836
    :cond_3b
    :goto_3b
    return-void

    .line 828
    :cond_3c
    const-string v1, "InCallFragment"

    const-string v2, "onPrepareOptionsMenu()->stop recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_3b

    .line 833
    :cond_47
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 834
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public onResume()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 661
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 664
    const/4 v2, 0x0

    .line 665
    .local v2, inOtaCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 666
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->checkOtaspStateOnResume()Z

    move-result v2

    .line 669
    :cond_11
    if-nez v2, :cond_18

    .line 671
    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 676
    :cond_18
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    if-eqz v5, :cond_21

    .line 677
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v5}, Lcom/android/phone/CallCard_DSDA;->refreshTime()V

    .line 681
    :cond_21
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    .line 682
    .local v3, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v5, v3, Lcom/android/phone/MSimInCallUiState;->mSimShowDialpad:[Z

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_7c

    .line 683
    invoke-direct {p0, v7}, Lcom/android/phone/InCallFragment;->showDialpadInternal(Z)V

    .line 690
    :goto_32
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 702
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    if-eqz v5, :cond_3e

    .line 703
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    invoke-virtual {v5}, Lcom/android/phone/RespondViaSmsManager_DSDA;->dismissPopup()V

    .line 720
    :cond_3e
    const/4 v0, 0x0

    .line 722
    .local v0, handledStartupError:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .line 725
    .local v1, inCallUiState:Lcom/android/phone/MSimInCallUiState;
    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v1, v5}, Lcom/android/phone/MSimInCallUiState;->hasPendingCallStatusCode(I)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 727
    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v1, v5}, Lcom/android/phone/MSimInCallUiState;->getPendingCallStatusCode(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallFragment;->showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 732
    const/4 v0, 0x1

    .line 743
    :goto_57
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/InCallScreen_DSDA;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 749
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 752
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->syncWithPhoneState()Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    move-result-object v4

    .line 757
    .local v4, status:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    sget-object v5, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    if-eq v4, v5, :cond_9d

    .line 765
    if-eqz v0, :cond_86

    .line 770
    const-string v5, "InCallFragment"

    const-string v6, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_7b
    :goto_7b
    return-void

    .line 685
    .end local v0           #handledStartupError:Z
    .end local v1           #inCallUiState:Lcom/android/phone/MSimInCallUiState;
    .end local v4           #status:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    :cond_7c
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    goto :goto_32

    .line 736
    .restart local v0       #handledStartupError:Z
    .restart local v1       #inCallUiState:Lcom/android/phone/MSimInCallUiState;
    :cond_80
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v5}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->startDialerSession()V

    goto :goto_57

    .line 785
    .restart local v4       #status:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    :cond_86
    const-string v5, "InCallFragment"

    const-string v6, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->dismissAllDialogs()V

    .line 788
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v5, :cond_7b

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    goto :goto_7b

    .line 791
    :cond_9d
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 792
    iget-object v5, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v5, v6, :cond_b9

    iget-object v5, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v5, v6, :cond_7b

    .line 794
    :cond_b9
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v5, :cond_c4

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 795
    :cond_c4
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    goto :goto_7b
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 804
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 806
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->stopTimer()V

    .line 809
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    if-eqz v0, :cond_f

    .line 810
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/CallCard_DSDA;->resetElapsedTime()V

    .line 812
    :cond_f
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3824
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 3838
    sget-object v1, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_68

    .line 3879
    const v0, 0x7f0e0190

    .line 3887
    :goto_13
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1e

    .line 3888
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3890
    iput-object v3, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3893
    :cond_1e
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0029

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3897
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3900
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/phone/InCallFragment$17;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallFragment$17;-><init>(Lcom/android/phone/InCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3906
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3907
    return-void

    .line 3842
    :pswitch_50
    const v0, 0x7f0e0191

    .line 3843
    goto :goto_13

    .line 3848
    :pswitch_54
    const v0, 0x7f0e0192

    .line 3849
    goto :goto_13

    .line 3855
    :pswitch_58
    const v0, 0x7f0e0193

    .line 3856
    goto :goto_13

    .line 3861
    :pswitch_5c
    const v0, 0x7f0e0194

    .line 3862
    goto :goto_13

    .line 3867
    :pswitch_60
    const v0, 0x7f0e0195

    .line 3868
    goto :goto_13

    .line 3872
    :pswitch_64
    const v0, 0x7f0e0196

    .line 3873
    goto :goto_13

    .line 3838
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_50
        :pswitch_54
        :pswitch_58
        :pswitch_5c
        :pswitch_60
        :pswitch_64
    .end packed-switch
.end method

.method public onVoiceRecorderEvent(I)V
    .registers 9
    .parameter

    .prologue
    const v1, 0x7f0e0296

    const v6, 0x7f0e0292

    const v2, 0x7f0e0291

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2473
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v0, :cond_10

    .line 2607
    :cond_f
    :goto_f
    return-void

    .line 2478
    :cond_10
    sparse-switch p1, :sswitch_data_14c

    .line 2585
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2587
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2595
    :goto_27
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 2596
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecordButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2604
    :goto_34
    const/16 v0, 0x121

    if-eq p1, v0, :cond_f

    .line 2605
    iput-boolean v4, p0, Lcom/android/phone/InCallFragment;->mIsRecording:Z

    goto :goto_f

    .line 2483
    :sswitch_3b
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->startTone(C)V

    .line 2484
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->stopTone()V

    .line 2485
    iput-boolean v5, p0, Lcom/android/phone/InCallFragment;->mIsRecording:Z

    goto :goto_27

    .line 2492
    :sswitch_46
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2494
    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mEjectSdError:Z

    if-eqz v0, :cond_67

    .line 2495
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/phone/InCallFragment;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2498
    iput-boolean v4, p0, Lcom/android/phone/InCallFragment;->mEjectSdError:Z

    goto :goto_27

    .line 2502
    :cond_67
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2503
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen_DSDA;->sendBroadcast(Landroid/content/Intent;)V

    .line 2506
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/phone/InCallFragment;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_27

    .line 2516
    :sswitch_96
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2518
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 2527
    :sswitch_ac
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen_DSDA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2528
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2530
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2532
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v1, 0x7f0e0290

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallFragment;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 2541
    :sswitch_da
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2543
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/phone/InCallFragment;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 2552
    :sswitch_f6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2554
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/phone/InCallFragment;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 2563
    :sswitch_112
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2565
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v1, 0x7f0e0294

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 2574
    :sswitch_12b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2576
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v1, 0x7f0e0293

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 2598
    :cond_144
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecordButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_34

    .line 2478
    nop

    :sswitch_data_14c
    .sparse-switch
        0x5 -> :sswitch_da
        0x1c -> :sswitch_ac
        0x101 -> :sswitch_112
        0x102 -> :sswitch_12b
        0x103 -> :sswitch_96
        0x104 -> :sswitch_f6
        0x121 -> :sswitch_3b
        0x122 -> :sswitch_46
    .end sparse-switch
.end method

.method protected phoneIsInUse()Z
    .registers 3

    .prologue
    .line 4386
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected registerForPhoneStates()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3784
    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_59

    .line 3785
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3786
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3787
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3793
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3794
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3795
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3796
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3797
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3798
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallFragment;->mRegisteredForPhoneStates:Z

    .line 3801
    :cond_59
    return-void
.end method

.method public requestUpdateInCallTouchUi(Z)V
    .registers 6
    .parameter "refreshButtons"

    .prologue
    const/16 v3, 0xb

    const/4 v1, 0x1

    .line 5158
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v2, :cond_1b

    .line 5159
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5160
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 5161
    .local v0, msg:Landroid/os/Message;
    if-ne v1, p1, :cond_1c

    :goto_14
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 5162
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5164
    .end local v0           #msg:Landroid/os/Message;
    :cond_1b
    return-void

    .line 5161
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_14
.end method

.method requestUpdateScreen()V
    .registers 3

    .prologue
    const/16 v1, 0x7a

    .line 3183
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3184
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3185
    return-void
.end method

.method setEndButton(Z)V
    .registers 4
    .parameter

    .prologue
    .line 4888
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 4890
    if-eqz p1, :cond_18

    .line 4891
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4892
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 4897
    :goto_17
    return-void

    .line 4894
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4895
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_17
.end method

.method public setRejectCallHint()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1345
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->okToShowHint()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1346
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHangUpDialingCallHint:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1347
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHangUpDialingCallHint:Landroid/widget/TextView;

    const v1, 0x7f0e03d6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/InCallFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    :goto_29
    return-void

    .line 1350
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHangUpDialingCallHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_29
.end method

.method public setupPathFileName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2332
    const-string v0, "InCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupPathFileName()->mStoragePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    if-nez v1, :cond_22

    .line 2336
    const/4 v0, 0x0

    .line 2349
    :goto_21
    return-object v0

    .line 2342
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_69

    const-string v0, "From_"

    :goto_3b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->getCallName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2347
    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->getFormattedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2349
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 2342
    :cond_69
    const-string v0, "To_"

    goto :goto_3b
.end method

.method public switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5077
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    .line 5079
    sget-object v1, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_86

    .line 5121
    const-string v0, "InCallFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchInCallAudio: unexpected mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 5131
    return-void

    .line 5081
    :pswitch_2f
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 5083
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 5085
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->disconnectBluetoothAudio()V

    .line 5087
    :cond_46
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v0, v3, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_2b

    .line 5093
    :pswitch_4c
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 5102
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 5103
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v1, v4, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5105
    :cond_65
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->connectBluetoothAudio()V

    goto :goto_2b

    .line 5112
    :pswitch_69
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 5113
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->disconnectBluetoothAudio()V

    .line 5115
    :cond_78
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 5116
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v0, v4, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_2b

    .line 5079
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_4c
        :pswitch_69
    .end packed-switch
.end method

.method public toggleSpeaker()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 5047
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_36

    move v0, v1

    .line 5049
    .local v0, newSpeakerState:Z
    :goto_a
    if-eqz v0, :cond_2d

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 5051
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->disconnectBluetoothAudio()V

    .line 5053
    :cond_2d
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v2, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5060
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 5061
    return-void

    .line 5047
    .end local v0           #newSpeakerState:Z
    :cond_36
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public updateActiveTimeInTab(J)V
    .registers 5
    .parameter "timeElapsed"

    .prologue
    .line 5136
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 5137
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5139
    :cond_11
    return-void
.end method

.method updateAfterRadioTechnologyChange()V
    .registers 2

    .prologue
    .line 4676
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4679
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->unregisterForPhoneStates()V

    .line 4682
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->registerForPhoneStates()V

    .line 4687
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    .line 4688
    return-void
.end method

.method public updateAfterTabChange()V
    .registers 3

    .prologue
    .line 4858
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 4860
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isInvalidateInCallControls()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4862
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setInvalidateInCallControls(Z)V

    .line 4863
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 4866
    :cond_18
    return-void
.end method

.method updateIncomingCallWidgetHint(II)V
    .registers 6
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 3712
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3713
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/CallCard;->setIncomingCallWidgetHint(II)V

    .line 3714
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 3724
    :cond_18
    return-void
.end method

.method updateScreen()V
    .registers 5

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v0, :cond_5

    .line 1328
    :cond_4
    :goto_4
    return-void

    .line 1201
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1202
    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v0, v0, v1

    .line 1206
    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 1207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - phone state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - inCallScreenMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-boolean v1, v1, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-nez v1, :cond_4f

    .line 1220
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-boolean v1, v1, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    if-eqz v1, :cond_4

    .line 1232
    :cond_4f
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_61

    .line 1233
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_4

    .line 1234
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    goto :goto_4

    .line 1237
    :cond_61
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_91

    .line 1239
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1240
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_82

    .line 1242
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_4

    .line 1245
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto :goto_4

    .line 1248
    :cond_82
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_4

    .line 1250
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto/16 :goto_4

    .line 1254
    :cond_91
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_9a

    .line 1255
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateManageConferencePanelIfNecessary()V

    goto/16 :goto_4

    .line 1257
    :cond_9a
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_b3

    .line 1263
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMoreView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b3

    .line 1264
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMoreView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMoreButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1274
    :cond_b3
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 1276
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallCard_DSDA;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 1277
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateDialpadVisibility()V

    .line 1278
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateProviderOverlay()V

    .line 1279
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateProgressIndication()V

    .line 1282
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1283
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->dismissAllDialogs()V

    .line 1322
    :cond_d5
    :goto_d5
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->setRejectCallHint()V

    .line 1326
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    goto/16 :goto_4

    .line 1289
    :cond_dd
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;

    move-result-object v0

    .line 1290
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1291
    const/4 v2, 0x2

    if-eq v1, v2, :cond_f1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_135

    .line 1292
    :cond_f1
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getFgCallLatestConnection(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1293
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_123

    .line 1295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_109
    :goto_109
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1296
    if-eqz v0, :cond_109

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_109

    .line 1298
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_109

    .line 1301
    :cond_123
    if-eqz v1, :cond_d5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v2, :cond_d5

    .line 1303
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 1304
    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallFragment;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_d5

    .line 1306
    :cond_135
    const/4 v2, 0x1

    if-eq v1, v2, :cond_13b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15d

    .line 1308
    :cond_13b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13f
    :goto_13f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1309
    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_13f

    .line 1310
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 1311
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_13f

    .line 1315
    :cond_15d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
