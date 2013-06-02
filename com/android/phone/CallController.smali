.class public Lcom/android/phone/CallController;
.super Landroid/os/Handler;
.source "CallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallController$1;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/android/phone/CallController;


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

.field private mEmergencyCallHelper_DSDA:Lcom/android/phone/EmergencyCallHelper_DSDA;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 3
    .parameter "app"

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    .line 134
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 135
    return-void
.end method

.method private checkForOtaspCall(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 1016
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->isOtaspCallIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1026
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_1a

    .line 1027
    const-string v1, "subscription"

    iget-object v2, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1028
    .local v0, sub:I
    invoke-static {p1, v0}, Lcom/android/phone/OtaUtils_DSDA;->setupOtaspCall(Landroid/content/Intent;I)V

    .line 1038
    .end local v0           #sub:I
    :cond_19
    :goto_19
    return-void

    .line 1030
    :cond_1a
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->setupOtaspCall(Landroid/content/Intent;)V

    goto :goto_19

    .line 1036
    :cond_1e
    sget-boolean v1, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v1, :cond_19

    const-string v1, "checkForOtaspCall: not an OTASP call."

    invoke-static {v1}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_19
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    .registers 5
    .parameter "state"

    .prologue
    .line 735
    packed-switch p1, :pswitch_data_28

    .line 760
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :pswitch_1c
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 757
    :goto_1e
    return-object v0

    .line 742
    :pswitch_1f
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1e

    .line 753
    :pswitch_22
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1e

    .line 757
    :pswitch_25
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1e

    .line 735
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method private handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V
    .registers 6
    .parameter "status"

    .prologue
    .line 821
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 829
    .local v0, inCallUiState:Lcom/android/phone/InCallUiState;
    sget-object v1, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_6c

    .line 905
    :pswitch_f
    const-string v1, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOutgoingCallError: unexpected status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 910
    :cond_2c
    :goto_2c
    :pswitch_2c
    return-void

    .line 843
    :pswitch_2d
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_2c

    .line 855
    :pswitch_33
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_2c

    .line 862
    :pswitch_39
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_2c

    .line 867
    :pswitch_3f
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_2c

    .line 874
    :pswitch_45
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_2c

    .line 890
    :pswitch_4b
    iget-object v1, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_2c

    .line 891
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e018e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2c

    .line 901
    :pswitch_65
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_2c

    .line 829
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_f
        :pswitch_2d
        :pswitch_33
        :pswitch_39
        :pswitch_3f
        :pswitch_45
        :pswitch_4b
        :pswitch_65
    .end packed-switch
.end method

.method private handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;I)V
    .registers 7
    .parameter "status"
    .parameter "sub"

    .prologue
    .line 918
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 926
    .local v0, inCallUiState:Lcom/android/phone/MSimInCallUiState;
    sget-object v1, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    .line 1003
    :pswitch_11
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    .line 1006
    :cond_16
    :goto_16
    :pswitch_16
    return-void

    .line 940
    :pswitch_17
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_16

    .line 952
    :pswitch_1d
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_16

    .line 959
    :pswitch_23
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_16

    .line 964
    :pswitch_29
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_16

    .line 971
    :pswitch_2f
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_16

    .line 987
    :pswitch_35
    iget-object v1, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_16

    .line 988
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0e018e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_16

    .line 998
    :pswitch_4f
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_16

    .line 926
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_16
        :pswitch_11
        :pswitch_17
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_2f
        :pswitch_35
        :pswitch_4f
    .end packed-switch
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;
    .registers 5
    .parameter

    .prologue
    .line 118
    const-class v1, Lcom/android/phone/CallController;

    monitor-enter v1

    .line 119
    :try_start_3
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    if-nez v0, :cond_12

    .line 120
    new-instance v0, Lcom/android/phone/CallController;

    invoke-direct {v0, p0}, Lcom/android/phone/CallController;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    .line 124
    :goto_e
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    monitor-exit v1

    return-object v0

    .line 122
    :cond_12
    const-string v0, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 125
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1046
    const-string v0, "CallController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void
.end method

.method private placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;
    .registers 27
    .parameter "intent"

    .prologue
    .line 383
    const-string v3, "subscription"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 385
    .local v21, sub:I
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_6d

    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v14, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v14, Lcom/android/phone/MSimInCallUiState;

    .line 394
    .local v14, inCallUiState:Lcom/android/phone/InCallUiState;
    :goto_1c
    const/4 v9, 0x0

    .line 395
    .local v9, callType:I
    const/4 v4, 0x0

    .line 401
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v18

    .line 413
    .local v18, okToCallStatus:Lcom/android/phone/Constants$CallStatusCode;
    :try_start_36
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 420
    .local v5, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 421
    .local v22, uri:Landroid/net/Uri;
    if-eqz v22, :cond_74

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    .line 422
    .local v19, scheme:Ljava/lang/String;
    :goto_44
    const-string v3, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 431
    .local v20, sipPhoneUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v3, v0, v5, v1, v2}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 433
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    :try_end_67
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_36 .. :try_end_67} :catch_77

    move-result-object v18

    .line 447
    if-nez v5, :cond_84

    .line 448
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    .line 721
    .end local v5           #number:Ljava/lang/String;
    .end local v14           #inCallUiState:Lcom/android/phone/InCallUiState;
    .end local v19           #scheme:Ljava/lang/String;
    .end local v20           #sipPhoneUri:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :goto_6c
    return-object v3

    .line 388
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    .end local v9           #callType:I
    .end local v18           #okToCallStatus:Lcom/android/phone/Constants$CallStatusCode;
    :cond_6d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v14, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .restart local v14       #inCallUiState:Lcom/android/phone/InCallUiState;
    goto :goto_1c

    .line 421
    .restart local v4       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v9       #callType:I
    .restart local v18       #okToCallStatus:Lcom/android/phone/Constants$CallStatusCode;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_74
    const/16 v19, 0x0

    goto :goto_44

    .line 436
    .end local v5           #number:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_77
    move-exception v11

    .line 441
    .local v11, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_81

    move-object/from16 v3, v18

    .line 442
    goto :goto_6c

    .line 444
    :cond_81
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_6c

    .line 457
    .end local v11           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v19       #scheme:Ljava/lang/String;
    .restart local v20       #sipPhoneUri:Ljava/lang/String;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v16

    .line 458
    .local v16, isEmergencyNumber:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    .line 460
    .local v17, isPotentialEmergencyNumber:Z
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 462
    .local v15, isEmergencyIntent:Z
    if-eqz v17, :cond_d9

    if-nez v15, :cond_d9

    .line 463
    const-string v3, "CallController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Non-CALL_EMERGENCY Intent "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, " attempted to call potential emergency number "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "."

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_6c

    .line 467
    :cond_d9
    if-nez v17, :cond_111

    if-eqz v15, :cond_111

    .line 468
    const-string v3, "CallController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received CALL_EMERGENCY Intent "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, " with non-potential-emergency number "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, " -- failing call."

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_6c

    .line 482
    :cond_111
    if-eqz v16, :cond_121

    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_11f

    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_121

    .line 485
    :cond_11f
    sget-object v18, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 488
    :cond_121
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_176

    .line 491
    if-eqz v16, :cond_172

    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_172

    .line 492
    const-string v3, "CallController"

    const-string v7, "placeCall: Trying to make emergency call while POWER_OFF!"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    monitor-enter p0

    .line 501
    :try_start_137
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_15c

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper_DSDA:Lcom/android/phone/EmergencyCallHelper_DSDA;

    if-nez v3, :cond_14e

    .line 503
    new-instance v3, Lcom/android/phone/EmergencyCallHelper_DSDA;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lcom/android/phone/EmergencyCallHelper_DSDA;-><init>(Lcom/android/phone/CallController;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper_DSDA:Lcom/android/phone/EmergencyCallHelper_DSDA;

    .line 505
    :cond_14e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper_DSDA:Lcom/android/phone/EmergencyCallHelper_DSDA;

    move/from16 v0, v21

    invoke-virtual {v3, v5, v0}, Lcom/android/phone/EmergencyCallHelper_DSDA;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;I)V

    .line 512
    :goto_157
    monitor-exit p0
    :try_end_158
    .catchall {:try_start_137 .. :try_end_158} :catchall_16f

    .line 527
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_6c

    .line 507
    :cond_15c
    :try_start_15c
    new-instance v3, Lcom/android/phone/EmergencyCallHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    invoke-virtual {v3, v5}, Lcom/android/phone/EmergencyCallHelper;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V

    goto :goto_157

    .line 512
    :catchall_16f
    move-exception v3

    monitor-exit p0
    :try_end_171
    .catchall {:try_start_15c .. :try_end_171} :catchall_16f

    throw v3

    :cond_172
    move-object/from16 v3, v18

    .line 531
    goto/16 :goto_6c

    .line 542
    :cond_176
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_1af

    move-object v3, v14

    .line 543
    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    iget-object v3, v3, Lcom/android/phone/MSimInCallUiState;->mSimNeedToShowCallLostDialog:[Z

    const/4 v7, 0x0

    aput-boolean v7, v3, v21

    move-object v3, v14

    .line 544
    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/phone/MSimInCallUiState;->clearProgressIndication(I)V

    .line 556
    :goto_18a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 563
    .local v6, contactUri:Landroid/net/Uri;
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_1b6

    move-object v3, v14

    .line 564
    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    iget-object v3, v3, Lcom/android/phone/MSimInCallUiState;->mSimProviderGatewayUri:[Landroid/net/Uri;

    aget-object v8, v3, v21

    .line 569
    .local v8, simProviderGatewayUri:Landroid/net/Uri;
    :goto_199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    if-nez v16, :cond_1a3

    if-eqz v15, :cond_1b9

    :cond_1a3
    const/4 v7, 0x1

    :goto_1a4
    invoke-static/range {v3 .. v9}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I)I

    move-result v10

    .line 578
    .local v10, callStatus:I
    packed-switch v10, :pswitch_data_25a

    .line 721
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_6c

    .line 546
    .end local v6           #contactUri:Landroid/net/Uri;
    .end local v8           #simProviderGatewayUri:Landroid/net/Uri;
    .end local v10           #callStatus:I
    :cond_1af
    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    .line 547
    invoke-virtual {v14}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    goto :goto_18a

    .line 566
    .restart local v6       #contactUri:Landroid/net/Uri;
    :cond_1b6
    iget-object v8, v14, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    .restart local v8       #simProviderGatewayUri:Landroid/net/Uri;
    goto :goto_199

    .line 569
    :cond_1b9
    const/4 v7, 0x0

    goto :goto_1a4

    .line 591
    .restart local v10       #callStatus:I
    :pswitch_1bb
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_23d

    move-object v3, v14

    .line 592
    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    iget-object v3, v3, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v13, v3, v21

    .line 599
    .local v13, inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    :goto_1c6
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v13, v3, :cond_1d4

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v7, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 608
    :cond_1d4
    sget-boolean v3, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-eqz v3, :cond_1dd

    .line 611
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/phone/ipcallsetting/IPCallUtils;->setLogNumber(Ljava/lang/String;Landroid/content/Intent;)V

    .line 622
    :cond_1dd
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_240

    move-object v3, v14

    .line 623
    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    iget-object v3, v3, Lcom/android/phone/MSimInCallUiState;->mSimShowDialpad:[Z

    const/4 v7, 0x0

    aput-boolean v7, v3, v21

    .line 642
    :goto_1e9
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_244

    .line 643
    check-cast v14, Lcom/android/phone/MSimInCallUiState;

    .end local v14           #inCallUiState:Lcom/android/phone/InCallUiState;
    iget-object v3, v14, Lcom/android/phone/MSimInCallUiState;->mSimDialpadDigits:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v3, v21

    .line 656
    :goto_1f4
    const/4 v12, 0x0

    .line 657
    .local v12, exitedEcm:Z
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_205

    if-nez v16, :cond_205

    .line 658
    const-string v3, "CallController"

    const-string v7, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v12, 0x1

    .line 662
    :cond_205
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_237

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v7, :cond_237

    .line 670
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_248

    .line 672
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 688
    :goto_223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 691
    const/4 v3, 0x1

    const-wide/16 v23, 0xbb8

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/phone/CallController;->sendEmptyMessageDelayed(IJ)Z

    .line 697
    :cond_237
    if-eqz v12, :cond_24d

    .line 698
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_6c

    .line 594
    .end local v12           #exitedEcm:Z
    .end local v13           #inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    .restart local v14       #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_23d
    iget-object v13, v14, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .restart local v13       #inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    goto :goto_1c6

    .line 625
    :cond_240
    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/android/phone/InCallUiState;->showDialpad:Z

    goto :goto_1e9

    .line 645
    :cond_244
    const/4 v3, 0x0

    iput-object v3, v14, Lcom/android/phone/InCallUiState;->dialpadDigits:Ljava/lang/String;

    goto :goto_1f4

    .line 674
    .end local v14           #inCallUiState:Lcom/android/phone/InCallUiState;
    .restart local v12       #exitedEcm:Z
    :cond_248
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_223

    .line 700
    :cond_24d
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_6c

    .line 713
    .end local v12           #exitedEcm:Z
    .end local v13           #inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    .restart local v14       #inCallUiState:Lcom/android/phone/InCallUiState;
    :pswitch_251
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_6c

    .line 718
    :pswitch_255
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_6c

    .line 578
    nop

    :pswitch_data_25a
    .packed-switch 0x0
        :pswitch_1bb
        :pswitch_251
        :pswitch_255
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    .line 153
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1d
    :goto_1d
    return-void

    .line 142
    :pswitch_1e
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_1d

    .line 145
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_1d

    .line 139
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method

.method public placeCall(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    .line 198
    if-nez p1, :cond_11

    .line 199
    const-string v8, "CallController"

    const-string v9, "placeCall: called with null intent"

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "placeCall: called with null intent"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 206
    :cond_11
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v8, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 207
    .local v1, inCallUiState:Lcom/android/phone/InCallUiState;
    const-string v8, "subscription"

    iget-object v9, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 219
    .local v6, sub:I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 221
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_3a

    .line 222
    const-string v8, "CallController"

    const-string v9, "placeCall: intent had no data"

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "placeCall: intent had no data"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 226
    :cond_3a
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, scheme:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, number:Ljava/lang/String;
    const-string v8, "android.intent.action.CALL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8f

    const-string v8, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8f

    const-string v8, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8f

    .line 234
    const-string v8, "CallController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "placeCall: unexpected intent action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 241
    :cond_8f
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 242
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 243
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->checkForOtaspCall(Landroid/content/Intent;)V

    .line 254
    :cond_a0
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 262
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_da

    .line 263
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_d6

    move-object v8, v1

    .line 264
    check-cast v8, Lcom/android/phone/MSimInCallUiState;

    invoke-virtual {v8, p1, v6}, Lcom/android/phone/MSimInCallUiState;->setProviderOverlayInfo(Landroid/content/Intent;I)V

    .line 278
    :goto_b6
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v5

    .line 280
    .local v5, status:Lcom/android/phone/Constants$CallStatusCode;
    sget-object v8, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {v5}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_11e

    .line 317
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_113

    .line 318
    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;I)V

    .line 353
    .end local v1           #inCallUiState:Lcom/android/phone/InCallUiState;
    :goto_cc
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_117

    .line 354
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8, v6}, Lcom/android/phone/PhoneApp;->displayCallScreen(I)V

    .line 361
    :goto_d5
    return-void

    .line 266
    .end local v5           #status:Lcom/android/phone/Constants$CallStatusCode;
    .restart local v1       #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_d6
    invoke-virtual {v1, p1}, Lcom/android/phone/InCallUiState;->setProviderInfo(Landroid/content/Intent;)V

    goto :goto_b6

    .line 269
    :cond_da
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_e5

    move-object v8, v1

    .line 270
    check-cast v8, Lcom/android/phone/MSimInCallUiState;

    invoke-virtual {v8, v6}, Lcom/android/phone/MSimInCallUiState;->clearProviderOverlayInfo(I)V

    goto :goto_b6

    .line 272
    :cond_e5
    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearProviderInfo()V

    goto :goto_b6

    .line 287
    .restart local v5       #status:Lcom/android/phone/Constants$CallStatusCode;
    :pswitch_e9
    sget-object v8, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v5, v8, :cond_105

    .line 290
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_ff

    .line 291
    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .end local v1           #inCallUiState:Lcom/android/phone/InCallUiState;
    sget-object v8, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1, v8, v6}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    .line 308
    :goto_f8
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto :goto_cc

    .line 293
    .restart local v1       #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_ff
    sget-object v8, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1, v8}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_f8

    .line 299
    :cond_105
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_10f

    .line 300
    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .end local v1           #inCallUiState:Lcom/android/phone/InCallUiState;
    invoke-virtual {v1, v6}, Lcom/android/phone/MSimInCallUiState;->clearPendingCallStatusCode(I)V

    goto :goto_f8

    .line 302
    .restart local v1       #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_10f
    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    goto :goto_f8

    .line 320
    :cond_113
    invoke-direct {p0, v5}, Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_cc

    .line 356
    .end local v1           #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_117
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    goto :goto_d5

    .line 280
    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_e9
        :pswitch_e9
    .end packed-switch
.end method
