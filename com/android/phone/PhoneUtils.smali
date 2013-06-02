.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$9;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;,
        Lcom/android/phone/PhoneUtils$ShowTip;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;
    }
.end annotation


# static fields
.field private static ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

.field protected static answerflag:Z

.field protected static hangupCall:Lcom/android/internal/telephony/Call;

.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

.field static mIncomingCallName:Ljava/lang/String;

.field static mIncomingCallNumber:Ljava/lang/String;

.field private static mIsHeadsetClicked:Z

.field private static mIsLongPressKeyHandSet:Z

.field private static mMmiTimeoutCbMsg:Landroid/os/Message;

.field private static mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

.field static sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static sConnectionMuteTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsNoiseSuppressionEnabled:Z

.field private static sIsSpeakerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 187
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 190
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    .line 203
    sput-object v2, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 205
    sput-object v2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 208
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    .line 212
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->mIsLongPressKeyHandSet:Z

    .line 215
    const-string v0, ""

    sput-object v0, Lcom/android/phone/PhoneUtils;->mIncomingCallName:Ljava/lang/String;

    .line 216
    const-string v0, ""

    sput-object v0, Lcom/android/phone/PhoneUtils;->mIncomingCallNumber:Ljava/lang/String;

    .line 242
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    .line 248
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->answerflag:Z

    .line 249
    sput-object v2, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 351
    new-instance v0, Lcom/android/phone/PhoneUtils$1;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$1;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    .line 2841
    new-instance v0, Lcom/android/phone/PhoneUtils$8;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$8;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    return-void
.end method

.method public static acceptCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .registers 6
    .parameter "cm"
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4832
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4838
    .local v1, ringingPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 4839
    .local v2, sub:I
    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4840
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_26

    const/4 v0, 0x1

    .line 4841
    .local v0, hasBgCall:Z
    :goto_19
    if-eqz v0, :cond_22

    .line 4842
    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 4846
    .end local v0           #hasBgCall:Z
    :cond_22
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 4848
    return-void

    .line 4840
    :cond_26
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic access$000()Ljava/util/Hashtable;
    .registers 1

    .prologue
    .line 161
    sget-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/Phone;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 161
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mIsLongPressKeyHandSet:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 161
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;
    .registers 1
    .parameter "x0"

    .prologue
    .line 161
    sput-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 161
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z
    .registers 6
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    .line 4085
    const/4 v0, 0x0

    .line 4086
    .local v0, activated:Z
    sget v3, Lcom/android/phone/PhoneApp;->mDockState:I

    if-eqz v3, :cond_24

    .line 4087
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 4088
    .local v1, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 4090
    .local v2, bthf:Lcom/android/phone/BluetoothHandsfree;
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_24

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_24

    .line 4091
    :cond_1c
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4092
    const/4 v0, 0x1

    .line 4095
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #bthf:Lcom/android/phone/BluetoothHandsfree;
    :cond_24
    return v0
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .registers 11
    .parameter "cm"
    .parameter "ringing"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1433
    sget-boolean v7, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v7, :cond_8e

    .line 1436
    :try_start_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1437
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->resetAndSetRingingSubscription(Lcom/android/internal/telephony/Call;)V

    .line 1438
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hangupDialingCallOnAltSub(Lcom/android/internal/telephony/Call;)V

    .line 1440
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1441
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-nez v7, :cond_26

    .line 1442
    const-string v6, "PhoneUtils"

    const-string v7, "end active call failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :goto_25
    return v5

    .line 1446
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    :cond_26
    invoke-static {v2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    .line 1447
    .local v4, sub:I
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6a

    move v3, v6

    .line 1448
    .local v3, phoneIsCdma:Z
    :goto_32
    if-eqz v3, :cond_3f

    .line 1449
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->setCDMACallReallyConnected(Z)V

    .line 1453
    :cond_3f
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    if-eqz v7, :cond_6c

    .line 1454
    sget-object v7, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    if-eqz v7, :cond_5b

    sget-object v7, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-eq v7, v8, :cond_65

    .line 1455
    :cond_5b
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 1456
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    .line 1457
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/phone/PhoneUtils;->answerflag:Z

    .line 1459
    :cond_65
    const/4 v7, 0x0

    sput-object v7, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #phoneIsCdma:Z
    .end local v4           #sub:I
    :cond_68
    :goto_68
    move v5, v6

    .line 1497
    goto :goto_25

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #sub:I
    :cond_6a
    move v3, v5

    .line 1447
    goto :goto_32

    .line 1461
    .restart local v3       #phoneIsCdma:Z
    :cond_6c
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 1462
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V
    :try_end_73
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_6 .. :try_end_73} :catch_74

    goto :goto_68

    .line 1465
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #phoneIsCdma:Z
    .end local v4           #sub:I
    :catch_74
    move-exception v1

    .line 1466
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "PhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "answerAndEndActive: caught "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1472
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_8e
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 1473
    const-string v6, "PhoneUtils"

    const-string v7, "end active call failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method static answerCall(Lcom/android/internal/telephony/Call;)Z
    .registers 19
    .parameter "ringing"

    .prologue
    .line 841
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 845
    .local v2, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/phone/Ringer;->stopRing()V

    .line 849
    sget-boolean v15, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v15, :cond_12

    .line 853
    invoke-static/range {p0 .. p0}, Lcom/android/phone/PhoneUtils;->resetAndSetRingingSubscription(Lcom/android/internal/telephony/Call;)V

    .line 860
    :cond_12
    sget-boolean v15, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    if-eqz v15, :cond_29

    .line 861
    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/phone/PhoneUtils;->answerflag:Z

    .line 862
    invoke-static/range {p0 .. p0}, Lcom/android/phone/PhoneUtils;->smartHangupAndAnswer(Lcom/android/internal/telephony/Call;)Z

    move-result v15

    sput-boolean v15, Lcom/android/phone/PhoneUtils;->answerflag:Z

    .line 863
    sget-boolean v15, Lcom/android/phone/PhoneUtils;->answerflag:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_29

    .line 864
    const/4 v1, 0x1

    .line 1015
    :cond_28
    :goto_28
    return v1

    .line 867
    :cond_29
    const/4 v1, 0x0

    .line 868
    .local v1, answered:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 869
    .local v11, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_f8

    const/4 v12, 0x1

    .line 870
    .local v12, phoneIsCdma:Z
    :goto_39
    const/4 v3, 0x0

    .line 872
    .local v3, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v12, :cond_4b

    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4b

    .line 875
    iget-object v10, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 876
    .local v10, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v10}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 880
    .end local v10           #notifier:Lcom/android/phone/CallNotifier;
    :cond_4b
    if-eqz p0, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v15

    if-eqz v15, :cond_28

    .line 882
    if-eqz v12, :cond_68

    .line 883
    :try_start_55
    iget-object v15, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v15}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v15

    sget-object v16, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_fb

    .line 887
    iget-object v15, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v16, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 911
    :cond_68
    :goto_68
    sget-boolean v15, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v15, :cond_6f

    .line 915
    invoke-static/range {p0 .. p0}, Lcom/android/phone/PhoneUtils;->hangupDialingCallOnAltSub(Lcom/android/internal/telephony/Call;)V

    .line 920
    :cond_6f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v9

    .line 924
    .local v9, isRealIncomingCall:Z
    sget-boolean v15, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v15, :cond_115

    .line 925
    iget-object v15, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/android/phone/PhoneUtils;->acceptCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 931
    :goto_82
    const/4 v1, 0x1

    .line 944
    sget-boolean v15, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v15, :cond_13f

    .line 945
    invoke-static {v11}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v14

    .line 950
    .local v14, sub:I
    if-eqz v12, :cond_99

    .line 951
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/PhoneApp;->setCDMACallReallyConnected(Z)V

    .line 956
    :cond_99
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 957
    .local v4, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v15

    if-nez v15, :cond_11e

    .line 958
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_ab
    :goto_ab
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 959
    .local v6, cn:Lcom/android/internal/telephony/Connection;
    sget-object v15, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v15, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_ab

    .line 961
    const/4 v15, 0x0

    invoke-static {v15, v14}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V
    :try_end_c3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_55 .. :try_end_c3} :catch_c4

    goto :goto_ab

    .line 1002
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #cn:Lcom/android/internal/telephony/Connection;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #isRealIncomingCall:Z
    .end local v14           #sub:I
    :catch_c4
    move-exception v7

    .line 1003
    .local v7, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v15, "PhoneUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "answerCall: caught "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    if-eqz v12, :cond_28

    .line 1007
    iget-object v15, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1009
    if-eqz v3, :cond_28

    .line 1010
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    goto/16 :goto_28

    .line 869
    .end local v3           #bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    .end local v7           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v12           #phoneIsCdma:Z
    :cond_f8
    const/4 v12, 0x0

    goto/16 :goto_39

    .line 892
    .restart local v3       #bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    .restart local v12       #phoneIsCdma:Z
    :cond_fb
    :try_start_fb
    iget-object v15, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v16, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 897
    iget-object v15, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 902
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    .line 903
    if-eqz v3, :cond_68

    .line 904
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    goto/16 :goto_68

    .line 927
    .restart local v9       #isRealIncomingCall:Z
    :cond_115
    iget-object v15, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_82

    .line 967
    .restart local v4       #call:Lcom/android/internal/telephony/Call;
    .restart local v14       #sub:I
    :cond_11e
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 968
    const/4 v15, 0x0

    invoke-static {v11, v15}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    .line 985
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v14           #sub:I
    :goto_125
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    .line 995
    .local v13, speakerActivated:Z
    if-eqz v9, :cond_28

    if-nez v13, :cond_28

    iget-object v15, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_28

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v15

    if-nez v15, :cond_28

    goto/16 :goto_28

    .line 974
    .end local v13           #speakerActivated:Z
    :cond_13f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v15

    iget-object v5, v15, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 975
    .local v5, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_151
    :goto_151
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_16a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 976
    .restart local v6       #cn:Lcom/android/internal/telephony/Connection;
    sget-object v15, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v15, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_151

    .line 977
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_151

    .line 981
    .end local v6           #cn:Lcom/android/internal/telephony/Connection;
    :cond_16a
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V
    :try_end_16d
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_fb .. :try_end_16d} :catch_c4

    goto :goto_125
.end method

.method public static canConference(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)Z
    .registers 7
    .parameter "cm"
    .parameter "heldCall"
    .parameter "sub"

    .prologue
    .line 4571
    const/4 v0, 0x0

    .line 4572
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 4574
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {p0, p2}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4575
    invoke-static {p0, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4578
    :cond_10
    if-eqz p1, :cond_16

    .line 4579
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4583
    :cond_16
    if-eqz v1, :cond_27

    if-eqz v0, :cond_27

    .line 4584
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4586
    :goto_26
    return v2

    :cond_27
    const/4 v2, 0x0

    goto :goto_26
.end method

.method static cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z
    .registers 8
    .parameter "phone"

    .prologue
    const/4 v6, 0x0

    .line 2370
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v4

    .line 2371
    .local v4, pendingMmis:Ljava/util/List;,"Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 2373
    .local v1, count:I
    const/4 v0, 0x0

    .line 2374
    .local v0, canceled:Z
    if-lez v1, :cond_1d

    .line 2379
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MmiCode;

    .line 2380
    .local v3, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2381
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 2382
    const/4 v0, 0x1

    .line 2387
    .end local v3           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    :cond_1d
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v5, :cond_26

    .line 2389
    :try_start_21
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v5}, Lcom/android/internal/telephony/IExtendedNetworkService;->clearMmiString()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_2d

    .line 2394
    :cond_26
    :goto_26
    sget-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v5, :cond_2c

    .line 2395
    sput-object v6, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 2397
    :cond_2c
    return v0

    .line 2390
    :catch_2d
    move-exception v2

    .line 2391
    .local v2, e:Landroid/os/RemoteException;
    sput-object v6, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_26
.end method

.method static checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3959
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3960
    const-string v0, "PhoneUtils"

    const-string v1, "checkAndCopyPhoneProviderExtras: some or all extras are missing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    :goto_d
    return-void

    .line 3964
    :cond_e
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3966
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .registers 2
    .parameter

    .prologue
    .line 3868
    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3871
    :cond_18
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    .line 3878
    :goto_1a
    return v0

    .line 3872
    :cond_1b
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3876
    :cond_3b
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    goto :goto_1a

    .line 3878
    :cond_3e
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method private static checkWhichStorageVolume(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4990
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 4991
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 4992
    const-string v0, "internal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4993
    array-length v4, v3

    :goto_17
    if-ge v2, v4, :cond_6a

    aget-object v5, v3, v2

    .line 4994
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 4995
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4996
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-nez v5, :cond_39

    .line 4997
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 5017
    :cond_36
    :goto_36
    return-object v0

    :cond_37
    move-object v0, v1

    .line 5000
    goto :goto_36

    .line 4993
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 5004
    :cond_3c
    const-string v0, "external"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 5005
    array-length v4, v3

    :goto_45
    if-ge v2, v4, :cond_6a

    aget-object v5, v3, v2

    .line 5006
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 5007
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5008
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 5009
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_36

    :cond_64
    move-object v0, v1

    .line 5012
    goto :goto_36

    .line 5005
    :cond_66
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_45

    :cond_6a
    move-object v0, v1

    .line 5017
    goto :goto_36
.end method

.method public static conference(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4605
    invoke-static {p0, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4606
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4607
    instance-of v1, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_12

    .line 4608
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    .line 4615
    :goto_11
    return-void

    .line 4609
    :cond_12
    invoke-static {p0, p1, p2}, Lcom/android/phone/PhoneUtils;->canConference(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4610
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_11

    .line 4612
    :cond_1c
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Can\'t conference foreground and selected background call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static copyIMSExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3976
    if-nez p0, :cond_a

    .line 3977
    const-string v0, "PhoneUtils"

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    :goto_9
    return-void

    .line 3981
    :cond_a
    const-string v0, "android.phone.extra.CALL_TYPE"

    const-string v1, "android.phone.extra.CALL_TYPE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3983
    const-string v0, "android.phone.extra.CALL_DOMAIN"

    const-string v1, "android.phone.extra.CALL_DOMAIN"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x7d8

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2110
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 2113
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v4

    .line 2116
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v0, :cond_21

    .line 2118
    :try_start_12
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1f} :catch_171

    .line 2121
    :goto_1f
    sput-object v6, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 2125
    :cond_21
    sget-object v0, Lcom/android/phone/PhoneUtils$9;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_178

    .line 2151
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected MmiCode state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2128
    :pswitch_45
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    move v0, v2

    .line 2154
    :goto_4a
    if-eqz p4, :cond_4f

    .line 2155
    invoke-virtual {p4}, Landroid/app/AlertDialog;->dismiss()V

    .line 2160
    :cond_4f
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_9f

    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v4, v5, :cond_9f

    .line 2164
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2165
    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 2166
    invoke-virtual {v4, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2167
    invoke-virtual {v4, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2168
    invoke-virtual {v4, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2169
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setType(I)V

    .line 2170
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 2173
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 2177
    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    .line 2359
    :cond_7e
    :goto_7e
    return-void

    .line 2132
    :pswitch_7f
    const v0, 0x7f0e002c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move v0, v2

    .line 2133
    goto :goto_4a

    .line 2135
    :pswitch_88
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 2138
    const v0, 0x10400de

    .line 2139
    const v1, 0x7f0e0046

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_4a

    .line 2147
    :cond_99
    :pswitch_99
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    move v0, v2

    .line 2149
    goto :goto_4a

    .line 2182
    :cond_9f
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 2183
    invoke-virtual {v3, v6}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 2188
    :cond_a8
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v4, v0, :cond_f8

    .line 2191
    sget-object v0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v0, :cond_174

    .line 2193
    :try_start_b0
    sget-object v0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IExtendedNetworkService;->getUserMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b5} :catch_f3

    move-result-object v0

    .line 2197
    :goto_b6
    if-eqz v0, :cond_7e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_7e

    .line 2204
    :goto_be
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0029

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2210
    new-instance v1, Lcom/android/phone/PhoneUtils$2;

    invoke-direct {v1, v3}, Lcom/android/phone/PhoneUtils$2;-><init>(Lcom/android/phone/PhoneApp;)V

    .line 2216
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2218
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setType(I)V

    .line 2220
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->addFlags(I)V

    .line 2223
    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->setUSSDDialog(Landroid/app/AlertDialog;)V

    .line 2225
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_7e

    .line 2194
    :catch_f3
    move-exception v0

    .line 2195
    sput-object v6, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    move-object v0, v1

    goto :goto_b6

    .line 2251
    :cond_f8
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2253
    const v4, 0x7f04000d

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2256
    const v0, 0x7f090051

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2259
    new-instance v5, Lcom/android/phone/PhoneUtils$3;

    invoke-direct {v5, p0, v0, p2}, Lcom/android/phone/PhoneUtils$3;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lcom/android/internal/telephony/MmiCode;)V

    .line 2276
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f0e0035

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f0e002d

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2284
    new-instance v2, Lcom/android/phone/PhoneUtils$4;

    invoke-direct {v2, v3}, Lcom/android/phone/PhoneUtils$4;-><init>(Lcom/android/phone/PhoneApp;)V

    .line 2290
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2294
    new-instance v2, Lcom/android/phone/PhoneUtils$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/phone/PhoneUtils$5;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 2310
    new-instance v4, Lcom/android/phone/PhoneUtils$6;

    invoke-direct {v4}, Lcom/android/phone/PhoneUtils$6;-><init>()V

    .line 2317
    new-instance v5, Lcom/android/phone/PhoneUtils$7;

    invoke-direct {v5}, Lcom/android/phone/PhoneUtils$7;-><init>()V

    .line 2341
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2342
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2343
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2344
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2348
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setType(I)V

    .line 2350
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 2353
    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneApp;->setUSSDDialog(Landroid/app/AlertDialog;)V

    .line 2356
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7e

    .line 2119
    :catch_171
    move-exception v0

    goto/16 :goto_1f

    :cond_174
    move-object v0, v1

    goto/16 :goto_be

    .line 2125
    nop

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_45
        :pswitch_7f
        :pswitch_88
        :pswitch_99
    .end packed-switch
.end method

.method static displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 14
    .parameter "context"
    .parameter "mmiCode"
    .parameter "buttonCallbackMessage"
    .parameter "previousAlert"

    .prologue
    const v9, 0x7f0e002b

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2015
    if-eqz p3, :cond_b

    .line 2016
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 2048
    :cond_b
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v8, :cond_54

    .line 2050
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2051
    .local v2, pd:Landroid/app/ProgressDialog;
    const-string v4, ""

    .line 2053
    .local v4, textmsg:Ljava/lang/CharSequence;
    :try_start_16
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v8}, Lcom/android/internal/telephony/IExtendedNetworkService;->getMmiRunningText()Ljava/lang/CharSequence;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_48

    move-result-object v4

    .line 2059
    :goto_1c
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2060
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2061
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2062
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x82

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 2064
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 2065
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 2067
    sput-object p2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 2069
    :try_start_3c
    sget-object v6, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x3a98

    invoke-virtual {v6, p2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_3c .. :try_end_47} :catch_50

    .line 2094
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :goto_47
    return-object v2

    .line 2055
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    .restart local v4       #textmsg:Ljava/lang/CharSequence;
    :catch_48
    move-exception v0

    .line 2056
    .local v0, e:Landroid/os/RemoteException;
    sput-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 2057
    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1c

    .line 2070
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_50
    move-exception v0

    .line 2071
    .local v0, e:Ljava/lang/NullPointerException;
    sput-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    goto :goto_47

    .line 2076
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :cond_54
    if-eqz p1, :cond_6f

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v8

    if-eqz v8, :cond_6f

    move v1, v6

    .line 2078
    .local v1, isCancelable:Z
    :goto_5d
    if-nez v1, :cond_71

    .line 2079
    const v6, 0x7f0e002a

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2080
    .local v3, text:Ljava/lang/CharSequence;
    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move-object v2, v5

    .line 2082
    goto :goto_47

    .end local v1           #isCancelable:Z
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_6f
    move v1, v7

    .line 2076
    goto :goto_5d

    .line 2086
    .restart local v1       #isCancelable:Z
    :cond_71
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2087
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2088
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2089
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2090
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 2092
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_47
.end method

.method static dumpCallManager()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 4391
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 4392
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4396
    const-string v0, "PhoneUtils"

    const-string v3, "############### dumpCallManager() ##############"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    const-string v0, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallManager: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4405
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4406
    const-string v0, " - FG call: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1cf

    const-string v0, "YES "

    :goto_46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4407
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4408
    const-string v0, "  State: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4409
    const-string v0, "  Conn: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4410
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4412
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4413
    const-string v0, " - BG call: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_1d3

    const-string v0, "YES "

    :goto_84
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4415
    const-string v0, "  State: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4416
    const-string v0, "  Conn: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4417
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4419
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4420
    const-string v0, " - RINGING call: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1d7

    const-string v0, "YES "

    :goto_c6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4421
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4422
    const-string v0, "  State: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4423
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f2
    :goto_f2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 4428
    if-eqz v0, :cond_f2

    .line 4429
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4432
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4433
    const-string v4, " - FG call: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4434
    const-string v4, "  State: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4435
    const-string v4, "  Conn: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4436
    const-string v3, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4438
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4439
    const-string v4, " - BG call: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4440
    const-string v4, "  State: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4441
    const-string v4, "  Conn: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4442
    const-string v3, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4443
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4444
    const-string v3, " - RINGING call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4445
    const-string v3, "  State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4446
    const-string v3, "  Conn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4447
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f2

    .line 4406
    :cond_1cf
    const-string v0, "NO "

    goto/16 :goto_46

    .line 4413
    :cond_1d3
    const-string v0, "NO "

    goto/16 :goto_84

    .line 4420
    :cond_1d7
    const-string v0, "NO "

    goto/16 :goto_c6

    .line 4451
    :cond_1db
    const-string v0, "PhoneUtils"

    const-string v1, "############## END dumpCallManager() ###############"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    return-void
.end method

.method static dumpCallState(Lcom/android/internal/telephony/Phone;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4320
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    .line 4321
    const-string v0, "PhoneUtils"

    const-string v3, "dumpCallState():"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    const-string v0, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4327
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4328
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4329
    const-string v3, "  - FG call: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4330
    const-string v3, " isAlive "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4331
    const-string v3, " isRinging "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4332
    const-string v3, " isDialing "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4333
    const-string v3, " isIdle "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4334
    const-string v3, " hasConnections "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4335
    const-string v0, "PhoneUtils"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4337
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4338
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4339
    const-string v3, "  - BG call: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4340
    const-string v3, " isAlive "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4341
    const-string v3, " isRinging "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4342
    const-string v3, " isDialing "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4343
    const-string v3, " isIdle "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4344
    const-string v3, " hasConnections "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4345
    const-string v0, "PhoneUtils"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4348
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4349
    const-string v3, "  - RINGING call: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4350
    const-string v3, " isAlive "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4351
    const-string v3, " isRinging "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4352
    const-string v3, " isDialing "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4353
    const-string v3, " isIdle "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4354
    const-string v3, " hasConnections "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4355
    const-string v0, "PhoneUtils"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_20c

    move v0, v1

    .line 4359
    :goto_191
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_20e

    move v3, v1

    .line 4360
    :goto_19c
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_210

    move v4, v1

    .line 4361
    :goto_1a7
    if-eqz v3, :cond_212

    if-eqz v4, :cond_212

    .line 4362
    :goto_1ab
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4363
    const-string v2, "  - hasRingingCall "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4364
    const-string v0, " hasActiveCall "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4365
    const-string v0, " hasHoldingCall "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4366
    const-string v0, " allLinesTaken "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4367
    const-string v0, "PhoneUtils"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_204

    .line 4371
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v0, :cond_214

    .line 4372
    const-string v0, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - CDMA call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    :cond_204
    :goto_204
    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    .line 4383
    return-void

    :cond_20c
    move v0, v2

    .line 4358
    goto :goto_191

    :cond_20e
    move v3, v2

    .line 4359
    goto :goto_19c

    :cond_210
    move v4, v2

    .line 4360
    goto :goto_1a7

    :cond_212
    move v1, v2

    .line 4361
    goto :goto_1ab

    .line 4375
    :cond_214
    const-string v0, "PhoneUtils"

    const-string v1, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_204
.end method

.method private static externalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4936
    const-string v1, "external"

    invoke-static {v1, p0}, Lcom/android/phone/PhoneUtils;->checkWhichStorageVolume(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4938
    if-eqz v1, :cond_42

    .line 4940
    :try_start_9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4941
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 4942
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4943
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    .line 4944
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v6, v1

    .line 4945
    mul-long v3, v6, v4

    const-wide/32 v5, 0x200000

    cmp-long v1, v3, v5

    if-lez v1, :cond_34

    const/4 v1, 0x1

    .line 4946
    :goto_2d
    if-eqz v1, :cond_33

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_36

    move-result-object v0

    .line 4954
    :cond_33
    :goto_33
    return-object v0

    .line 4945
    :cond_34
    const/4 v1, 0x0

    goto :goto_2d

    .line 4948
    :catch_36
    move-exception v1

    .line 4949
    const-string v2, "PhoneUtils"

    const-string v3, "external storage path error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4950
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    :cond_42
    move-object v0, v1

    goto :goto_33
.end method

.method static formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 4042
    if-eqz p0, :cond_1c

    .line 4043
    const-string v0, "tel"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4044
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4049
    :goto_16
    return-object v0

    .line 4046
    :cond_17
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 4049
    :cond_1c
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v1

    .line 469
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 470
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 472
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 473
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 474
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_9

    move-object v3, v0

    .line 479
    :goto_26
    return-object v3

    :cond_27
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto :goto_26
.end method

.method public static getAlternateSub(I)I
    .registers 2
    .parameter "subscription"

    .prologue
    .line 4679
    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static getBackgroundCalls()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v0, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v4

    .line 602
    .local v4, tempCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v2

    .line 604
    .local v2, sub:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 605
    .local v1, iter:Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 607
    .local v3, tempCall:Lcom/android/internal/telephony/Call;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 608
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tempCall:Lcom/android/internal/telephony/Call;
    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 609
    .restart local v3       #tempCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    if-ne v5, v2, :cond_1c

    .line 610
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 615
    :cond_36
    return-object v0
.end method

.method static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .registers 6
    .parameter "context"
    .parameter "c"

    .prologue
    .line 2518
    const/4 v0, 0x0

    .line 2520
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz p1, :cond_16

    .line 2524
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 2525
    .local v2, userDataObject:Ljava/lang/Object;
    instance-of v3, v2, Landroid/net/Uri;

    if-eqz v3, :cond_17

    .line 2526
    check-cast v2, Landroid/net/Uri;

    .end local v2           #userDataObject:Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 2527
    if-eqz v0, :cond_16

    .line 2528
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2553
    :cond_16
    :goto_16
    return-object v0

    .line 2531
    .restart local v2       #userDataObject:Ljava/lang/Object;
    :cond_17
    instance-of v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_35

    .line 2533
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #userDataObject:Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2538
    :goto_1f
    if-nez v0, :cond_16

    .line 2541
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2544
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 2545
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 2546
    if-eqz v0, :cond_16

    .line 2547
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_16

    .end local v1           #number:Ljava/lang/String;
    .restart local v2       #userDataObject:Ljava/lang/Object;
    :cond_35
    move-object v0, v2

    .line 2536
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1f
.end method

.method static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2902
    const/4 v0, 0x0

    .line 2903
    if-eqz p0, :cond_13

    .line 2904
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2907
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2916
    :cond_13
    :goto_13
    if-eqz v0, :cond_23

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2921
    :cond_23
    if-eqz p0, :cond_36

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v1, :cond_36

    .line 2922
    const v0, 0x7f0e0005

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2929
    :cond_32
    :goto_32
    return-object v0

    .line 2911
    :cond_33
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_13

    .line 2923
    :cond_36
    if-eqz p0, :cond_46

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v0, v1, :cond_46

    .line 2924
    const v0, 0x7f0e0006

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    .line 2926
    :cond_46
    const v0, 0x7f0e0004

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_32
.end method

.method public static getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;
    .registers 6
    .parameter "cm"
    .parameter "sub"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/CallManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 441
    .local v2, p:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 443
    .local v0, c:Lcom/android/internal/telephony/Call;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, emptyConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v0, :cond_17

    .line 446
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 449
    .end local v1           #emptyConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    :cond_17
    return-object v1
.end method

.method public static getFgCallLatestConnection(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Connection;
    .registers 5
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 455
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 456
    .local v1, p:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 458
    .local v0, c:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_13

    .line 459
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 462
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public static getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    .line 515
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 516
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 518
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 519
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 520
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_9

    move-object v3, v0

    .line 525
    :goto_26
    return-object v3

    :cond_27
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto :goto_26
.end method

.method public static getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v1

    .line 498
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 499
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 501
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 502
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 503
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, v0

    .line 508
    :goto_26
    return-object v3

    :cond_27
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto :goto_26
.end method

.method public static getForegroundCalls()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v0, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 581
    .local v4, tempCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v2

    .line 583
    .local v2, sub:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 584
    .local v1, iter:Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 586
    .local v3, tempCall:Lcom/android/internal/telephony/Call;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 587
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tempCall:Lcom/android/internal/telephony/Call;
    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 588
    .restart local v3       #tempCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    if-ne v5, v2, :cond_1c

    .line 589
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 594
    :cond_36
    return-object v0
.end method

.method public static getFormattedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 5029
    :cond_19
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%s.amr"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    if-nez v0, :cond_47

    const-string v2, ""

    :goto_2d
    aput-object v2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5030
    add-int/lit8 v0, v0, 0x1

    .line 5031
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    .line 5033
    return-object v4

    .line 5029
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d
.end method

.method private static getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;
    .registers 5
    .parameter "cm"

    .prologue
    .line 4157
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 4158
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 4167
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :goto_1b
    return-object v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public static getImageResourceForState(ILcom/android/phone/PhoneApp$CallState;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4653
    sget-object v0, Lcom/android/phone/PhoneApp$CallState;->RINGING:Lcom/android/phone/PhoneApp$CallState;

    if-ne p1, v0, :cond_e

    .line 4654
    if-nez p0, :cond_a

    .line 4655
    const v0, 0x7f0200a3

    .line 4673
    :goto_9
    return v0

    .line 4657
    :cond_a
    const v0, 0x7f0200a6

    goto :goto_9

    .line 4659
    :cond_e
    sget-object v0, Lcom/android/phone/PhoneApp$CallState;->HOLD:Lcom/android/phone/PhoneApp$CallState;

    if-ne p1, v0, :cond_1c

    .line 4660
    if-nez p0, :cond_18

    .line 4661
    const v0, 0x7f0200a2

    goto :goto_9

    .line 4663
    :cond_18
    const v0, 0x7f0200a5

    goto :goto_9

    .line 4665
    :cond_1c
    sget-object v0, Lcom/android/phone/PhoneApp$CallState;->DIALING:Lcom/android/phone/PhoneApp$CallState;

    if-ne p1, v0, :cond_2a

    .line 4666
    if-nez p0, :cond_26

    .line 4667
    const v0, 0x7f0200a4

    goto :goto_9

    .line 4669
    :cond_26
    const v0, 0x7f0200a7

    goto :goto_9

    .line 4673
    :cond_2a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 2436
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2438
    const/4 v0, 0x0

    .line 2450
    :goto_b
    return-object v0

    .line 2444
    :cond_c
    const-string v0, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2445
    const-string v0, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 2450
    :cond_1b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method static getModemType(I)I
    .registers 2
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    .line 4701
    if-ne p0, v0, :cond_4

    .line 4702
    const/4 v0, 0x2

    .line 4704
    :cond_4
    return v0
.end method

.method static getMute()Z
    .registers 3

    .prologue
    .line 3272
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3274
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 3276
    if-eqz v1, :cond_22

    .line 3277
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3279
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    .line 3281
    :goto_21
    return v0

    :cond_22
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getMute()Z

    move-result v0

    goto :goto_21
.end method

.method static getMute(I)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3289
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3290
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3291
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3293
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 3295
    if-eqz v5, :cond_37

    .line 3296
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3300
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getModemType(I)I

    move-result v3

    .line 3302
    invoke-static {v0, v3}, Lcom/huawei/android/media/AudioManagerEx;->isMicrophoneMute(Landroid/media/AudioManager;I)I

    move-result v0

    if-ne v1, v0, :cond_35

    move v0, v1

    .line 3312
    :goto_34
    return v0

    :cond_35
    move v0, v2

    .line 3302
    goto :goto_34

    .line 3305
    :cond_37
    invoke-static {v4, p0}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3306
    invoke-static {v4, p0}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3307
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_34

    .line 3308
    :cond_4a
    invoke-static {v4, p0}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3309
    invoke-static {v4, p0}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3310
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_34

    :cond_5d
    move v0, v2

    .line 3312
    goto :goto_34
.end method

.method public static getNetworkOperator(I)Ljava/lang/String;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 5125
    const/4 v0, 0x0

    .line 5126
    .local v0, sOperator:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5127
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 5131
    :goto_f
    return-object v0

    .line 5129
    :cond_10
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 2478
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2479
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 2483
    const-string v2, "sip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2484
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 2498
    :cond_14
    return-object v0

    .line 2490
    :cond_15
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2494
    const-string v2, "voicemail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v0, :cond_29

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2496
    :cond_29
    new-instance v0, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v0
.end method

.method public static getPhoneType(I)I
    .registers 2
    .parameter "subscription"

    .prologue
    .line 4683
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static getPresentationString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4273
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4274
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_13

    .line 4275
    const v0, 0x7f0e0005

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4279
    :cond_12
    :goto_12
    return-object v0

    .line 4276
    :cond_13
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_12

    .line 4277
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method static getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 4030
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4031
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_d
.end method

.method static getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4014
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4015
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4018
    :try_start_a
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v0

    .line 4020
    :goto_e
    return-object v0

    .line 4019
    :catch_f
    move-exception v0

    .line 4020
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3995
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3996
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3999
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4001
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_12} :catch_14

    move-result-object v0

    .line 4003
    :goto_13
    return-object v0

    .line 4002
    :catch_14
    move-exception v0

    .line 4003
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 5
    .parameter "context"
    .parameter "subscription"

    .prologue
    const/4 v0, 0x1

    .line 4690
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    if-ne p1, v0, :cond_b

    const/16 v0, 0x8

    .line 4693
    .local v0, ringtype:I
    :cond_b
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 4695
    .local v1, settingUri:Landroid/net/Uri;
    return-object v1
.end method

.method public static getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0e03bf

    const/4 v5, 0x5

    const v4, 0x7f0e03c0

    .line 4485
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getSimCombination(Landroid/content/Context;)I

    move-result v0

    .line 4486
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4487
    packed-switch v0, :pswitch_data_74

    .line 4519
    const-string v0, ""

    :goto_14
    return-object v0

    .line 4490
    :pswitch_15
    if-nez p1, :cond_1f

    .line 4491
    const v0, 0x7f0e03c1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 4493
    :cond_1f
    const v0, 0x7f0e03c2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 4497
    :pswitch_27
    const-string v0, "gsm.call.system_mode"

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4498
    if-nez p1, :cond_63

    .line 4499
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v2, v5, :cond_5e

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v2, v5, :cond_5e

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_5e

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5e

    .line 4504
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 4506
    :cond_5e
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 4509
    :cond_63
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 4513
    :pswitch_68
    if-nez p1, :cond_6f

    .line 4514
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 4516
    :cond_6f
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 4487
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_15
        :pswitch_27
        :pswitch_68
        :pswitch_15
    .end packed-switch
.end method

.method private static getSimCombination(Landroid/content/Context;)I
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 4525
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "cdma_gsm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    .line 4550
    :goto_12
    return v0

    .line 4528
    :cond_13
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "umts_gsm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v2

    .line 4529
    goto :goto_12

    .line 4531
    :cond_23
    const-string v0, "phone_msim"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    .line 4533
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v4

    .line 4534
    invoke-virtual {v0, v3}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 4535
    if-ne v4, v1, :cond_3a

    if-ne v0, v1, :cond_3a

    move v0, v3

    .line 4537
    goto :goto_12

    .line 4538
    :cond_3a
    if-ne v4, v1, :cond_40

    if-ne v0, v3, :cond_40

    move v0, v1

    .line 4540
    goto :goto_12

    .line 4542
    :cond_40
    if-ne v4, v3, :cond_46

    if-ne v0, v1, :cond_46

    .line 4544
    const/4 v0, 0x3

    goto :goto_12

    .line 4546
    :cond_46
    if-ne v4, v3, :cond_4c

    if-ne v0, v3, :cond_4c

    move v0, v2

    .line 4548
    goto :goto_12

    .line 4550
    :cond_4c
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public static getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .registers 7
    .parameter "cm"
    .parameter "target"

    .prologue
    .line 4145
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 4146
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    move-object v3, v1

    .line 4147
    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v2

    .line 4148
    .local v2, sipUri:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4153
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v2           #sipUri:Ljava/lang/String;
    :goto_28
    return-object v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public static getState(I)Lcom/android/internal/telephony/Phone$State;
    .registers 5
    .parameter "sub"

    .prologue
    .line 562
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    .line 563
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 565
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_15

    .line 566
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    .line 573
    :cond_14
    :goto_14
    return-object v1

    .line 567
    :cond_15
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_14

    .line 568
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_14

    .line 569
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_14
.end method

.method public static getStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4885
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->storagePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4886
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupPathFileName()->mStoragePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    if-nez v1, :cond_20

    .line 4904
    :goto_1f
    return-object v0

    .line 4891
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/record"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4893
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4894
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_54

    .line 4896
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_54

    .line 4897
    const v1, 0x7f0e0294

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    :cond_54
    move-object v0, v1

    .line 4904
    goto :goto_1f
.end method

.method static handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3423
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    if-nez v0, :cond_80

    .line 3424
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    .line 3425
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3427
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    .line 3431
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_1c

    .line 3556
    :goto_1b
    return v2

    .line 3443
    :cond_1c
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_82

    move v0, v1

    .line 3444
    :goto_27
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_84

    move v3, v1

    .line 3445
    :goto_32
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_86

    move v4, v1

    .line 3447
    :goto_3d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5c

    .line 3448
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsLongPressKeyHandSet:Z

    .line 3450
    sget-object v6, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3452
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    .line 3453
    sget-object v6, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v6, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    .line 3457
    :cond_5c
    if-eqz v0, :cond_bc

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_bc

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_bc

    .line 3460
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    .line 3464
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3465
    const/4 v2, 0x2

    if-eq v0, v2, :cond_79

    const/4 v2, 0x4

    if-ne v0, v2, :cond_88

    .line 3467
    :cond_79
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    :cond_80
    :goto_80
    move v2, v1

    .line 3556
    goto :goto_1b

    :cond_82
    move v0, v2

    .line 3443
    goto :goto_27

    :cond_84
    move v3, v2

    .line 3444
    goto :goto_32

    :cond_86
    move v4, v2

    .line 3445
    goto :goto_3d

    .line 3468
    :cond_88
    if-eq v0, v1, :cond_8d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a3

    .line 3470
    :cond_8d
    if-eqz v3, :cond_9b

    if-eqz v4, :cond_9b

    .line 3471
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_80

    .line 3475
    :cond_9b
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_80

    .line 3478
    :cond_a3
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

    .line 3483
    :cond_bc
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 3484
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    .line 3485
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsLongPressKeyHandSet:Z

    .line 3488
    :cond_c9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eq v1, v0, :cond_d9

    :cond_d5
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mIsLongPressKeyHandSet:Z

    if-eqz v0, :cond_ed

    .line 3492
    :cond_d9
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_e7

    .line 3493
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {p0}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;I)Z

    goto :goto_80

    .line 3495
    :cond_e7
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_80

    .line 3499
    :cond_ed
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_80

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_80

    .line 3502
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    .line 3504
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3506
    if-eqz v0, :cond_80

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 3509
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_13a

    .line 3510
    invoke-static {p0}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getMute(I)Z

    move-result v0

    .line 3515
    :goto_124
    if-eqz v0, :cond_143

    .line 3516
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_13f

    .line 3517
    invoke-static {p0}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 3523
    :goto_131
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    .line 3524
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    goto/16 :goto_80

    .line 3512
    :cond_13a
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    goto :goto_124

    .line 3519
    :cond_13f
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_131

    .line 3528
    :cond_143
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_157

    .line 3529
    invoke-static {p0}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 3535
    :goto_14e
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    .line 3536
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    goto/16 :goto_80

    .line 3531
    :cond_157
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_14e
.end method

.method static hangup(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 1388
    if-eqz p0, :cond_5

    .line 1389
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_5
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1394
    :cond_5
    :goto_5
    return-void

    .line 1391
    :catch_6
    move-exception v0

    .line 1392
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method static hangup(Lcom/android/internal/telephony/Call;)Z
    .registers 9
    .parameter "call"

    .prologue
    .line 1322
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v0, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1327
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    const/4 v2, 0x0

    .line 1332
    .local v2, hasHeldCallOnSameSub:Z
    :try_start_7
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_3a

    .line 1334
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    .line 1337
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1345
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_89
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_7 .. :try_end_1e} :catch_50

    .line 1356
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :goto_1e
    const/4 v5, 0x1

    .line 1362
    sget-boolean v6, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v6, :cond_39

    if-nez v2, :cond_39

    .line 1364
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    .line 1365
    .local v4, sub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtils;->unHoldOrUnMuteCall(Lcom/android/internal/telephony/CallManager;I)V

    .line 1368
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->resetRingingSubscription(I)V

    .line 1374
    .end local v4           #sub:I
    :cond_39
    :goto_39
    return v5

    .line 1348
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_85

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1350
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    :try_end_4f
    .catchall {:try_start_3a .. :try_end_4f} :catchall_89
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3a .. :try_end_4f} :catch_50

    goto :goto_1e

    .line 1357
    :catch_50
    move-exception v1

    .line 1358
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    :try_start_51
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call hangup: caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_51 .. :try_end_69} :catchall_89

    .line 1362
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_83

    if-nez v2, :cond_83

    .line 1364
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    .line 1365
    .restart local v4       #sub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtils;->unHoldOrUnMuteCall(Lcom/android/internal/telephony/CallManager;I)V

    .line 1368
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->resetRingingSubscription(I)V

    .line 1374
    .end local v4           #sub:I
    :cond_83
    const/4 v5, 0x0

    goto :goto_39

    .line 1352
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_85
    :try_start_85
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_85 .. :try_end_88} :catch_50

    goto :goto_1e

    .line 1362
    :catchall_89
    move-exception v5

    sget-boolean v6, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v6, :cond_a4

    if-nez v2, :cond_a4

    .line 1364
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    .line 1365
    .restart local v4       #sub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtils;->unHoldOrUnMuteCall(Lcom/android/internal/telephony/CallManager;I)V

    .line 1368
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->resetRingingSubscription(I)V

    .line 1370
    .end local v4           #sub:I
    :cond_a4
    throw v5
.end method

.method static hangup(Lcom/android/internal/telephony/CallManager;)Z
    .registers 6
    .parameter "cm"

    .prologue
    .line 1167
    const/4 v2, 0x0

    .line 1168
    .local v2, hungup:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1169
    .local v3, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1170
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1172
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_18

    .line 1173
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 1187
    :goto_17
    return v2

    .line 1174
    :cond_18
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_23

    .line 1175
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_17

    .line 1176
    :cond_23
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 1177
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_17

    .line 1184
    :cond_2e
    const-string v4, "hangup(): no active call to hang up"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_17
.end method

.method static hangup(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 9
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 1193
    const/4 v4, 0x0

    .line 1194
    .local v4, hungup:Z
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1195
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1196
    .local v2, fg:Lcom/android/internal/telephony/Call;
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1198
    .local v1, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_35

    .line 1199
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    .line 1214
    :goto_17
    sget-boolean v6, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v6, :cond_34

    if-eqz v4, :cond_34

    .line 1216
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v0

    .line 1217
    .local v0, altSub:I
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasCallOnSubscription(I)Z

    move-result v3

    .line 1219
    .local v3, hasCalls:Z
    if-nez v3, :cond_34

    .line 1220
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasCallOnSubscription(I)Z

    move-result v3

    .line 1221
    if-eqz v3, :cond_51

    .line 1222
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 1232
    .end local v0           #altSub:I
    .end local v3           #hasCalls:Z
    :cond_34
    :goto_34
    return v4

    .line 1200
    :cond_35
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_40

    .line 1201
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    goto :goto_17

    .line 1202
    :cond_40
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_4b

    .line 1203
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    goto :goto_17

    .line 1210
    :cond_4b
    const-string v6, "hangup(): no active call to hang up"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_17

    .line 1224
    .restart local v0       #altSub:I
    .restart local v3       #hasCalls:Z
    :cond_51
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->resetmActiveSubscription()V

    goto :goto_34
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .registers 2
    .parameter "foreground"

    .prologue
    .line 1275
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method private static hangupDialingCallOnAltSub(Lcom/android/internal/telephony/Call;)V
    .registers 5
    .parameter "ringing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 5071
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 5072
    .local v2, currentSub:I
    if-nez v2, :cond_21

    const/4 v1, 0x1

    .line 5073
    .local v1, altSub:I
    :goto_b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 5075
    .local v0, altPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hasDialingCallImpl(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 5076
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 5079
    :cond_20
    return-void

    .line 5072
    .end local v0           #altPhone:Lcom/android/internal/telephony/Phone;
    .end local v1           #altSub:I
    :cond_21
    const/4 v1, 0x0

    goto :goto_b
.end method

.method static hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z
    .registers 2
    .parameter "background"

    .prologue
    .line 1279
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    .registers 6
    .parameter "phone"

    .prologue
    .line 1288
    const/4 v2, 0x0

    .line 1289
    .local v2, hungUpRingingCall:Z
    const/4 v1, 0x0

    .line 1290
    .local v1, hungUpFgCall:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1291
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1294
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1295
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 1299
    :cond_14
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1300
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 1303
    :cond_1e
    if-nez v2, :cond_22

    if-eqz v1, :cond_24

    :cond_22
    const/4 v4, 0x1

    :goto_23
    return v4

    :cond_24
    const/4 v4, 0x0

    goto :goto_23
.end method

.method static hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .registers 6
    .parameter "ringing"

    .prologue
    .line 1238
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1239
    .local v1, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1241
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_15

    .line 1243
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 1270
    :goto_14
    return v3

    .line 1244
    :cond_15
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2c

    .line 1251
    const/4 v3, 0x2

    if-ne v1, v3, :cond_27

    .line 1255
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1256
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->sendCdmaCallWaitingReject()V

    .line 1257
    const/4 v3, 0x1

    goto :goto_14

    .line 1261
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_27
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_14

    .line 1269
    :cond_2c
    const-string v3, "PhoneUtils"

    const-string v4, "hangupRingingCall: no INCOMING or WAITING call"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public static hasActiveCDMACall(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 5
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 4878
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4879
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v1

    .line 390
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 391
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 393
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 395
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_9

    .line 396
    const/4 v3, 0x1

    .line 400
    :goto_26
    return v3

    :cond_27
    const/4 v3, 0x0

    goto :goto_26
.end method

.method public static hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v1

    .line 407
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 408
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 410
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 411
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 412
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 413
    const/4 v3, 0x1

    .line 417
    :goto_26
    return v3

    :cond_27
    const/4 v3, 0x0

    goto :goto_26
.end method

.method public static hasActiveSIPCall(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 5
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 4862
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4863
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method static hasCallOnSubscription(I)Z
    .registers 5
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4464
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4466
    .local v0, altPhone:Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_d

    .line 4478
    :cond_c
    :goto_c
    return v1

    .line 4470
    :cond_d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1f

    move v1, v2

    .line 4471
    goto :goto_c

    .line 4472
    :cond_1f
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_31

    move v1, v2

    .line 4473
    goto :goto_c

    .line 4474
    :cond_31
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 4475
    goto :goto_c
.end method

.method public static hasDialingCallImpl(I)Z
    .registers 11
    .parameter "subscription"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4620
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 4621
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-ne v8, v6, :cond_1b

    .line 4622
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 4640
    :cond_1a
    :goto_1a
    return v6

    .line 4625
    :cond_1b
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_52

    .line 4626
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 4627
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 4628
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4629
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 4630
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 4634
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->isCDMACallReallyConnected()Z

    move-result v4

    .line 4635
    .local v4, isDialCallConnected:Z
    if-eqz v4, :cond_1a

    move v6, v7

    goto :goto_1a

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isDialCallConnected:Z
    :cond_52
    move v6, v7

    .line 4640
    goto :goto_1a
.end method

.method public static hasDisconnectedBgCall(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 7
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    .line 548
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 549
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 551
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 552
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 553
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_9

    .line 554
    const/4 v3, 0x1

    .line 557
    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method private static final hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z
    .registers 4
    .parameter "call"

    .prologue
    .line 3582
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3583
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3584
    const/4 v2, 0x1

    .line 3587
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method static hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z
    .registers 2
    .parameter "phone"

    .prologue
    .line 3567
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static hasDisconnectedFgCall(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 7
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v1

    .line 532
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 533
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 535
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 536
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 537
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_9

    .line 538
    const/4 v3, 0x1

    .line 541
    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public static hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    .line 424
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 425
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 427
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 428
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 429
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_9

    .line 430
    const/4 v3, 0x1

    .line 434
    :goto_26
    return v3

    :cond_27
    const/4 v3, 0x0

    goto :goto_26
.end method

.method static hasPhoneProviderExtras(Landroid/content/Intent;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3941
    if-nez p0, :cond_4

    .line 3947
    :cond_3
    :goto_3
    return v0

    .line 3944
    :cond_4
    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3945
    const-string v2, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3947
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V
    .registers 5
    .parameter "cm"

    .prologue
    .line 365
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v1, :cond_c

    .line 366
    new-instance v1, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    .line 370
    :cond_c
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, p0}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ussd.IExtendedNetworkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 376
    return-void
.end method

.method private static internalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4962
    const-string v1, "internal"

    invoke-static {v1, p0}, Lcom/android/phone/PhoneUtils;->checkWhichStorageVolume(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4964
    if-eqz v1, :cond_42

    .line 4966
    :try_start_9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4968
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 4969
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4970
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    .line 4971
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v6, v1

    .line 4972
    mul-long v3, v6, v4

    const-wide/32 v5, 0x200000

    cmp-long v1, v3, v5

    if-lez v1, :cond_34

    const/4 v1, 0x1

    .line 4973
    :goto_2d
    if-eqz v1, :cond_33

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_36

    move-result-object v0

    .line 4981
    :cond_33
    :goto_33
    return-object v0

    .line 4972
    :cond_34
    const/4 v1, 0x0

    goto :goto_2d

    .line 4975
    :catch_36
    move-exception v1

    .line 4976
    const-string v2, "PhoneUtils"

    const-string v3, "internal sdcard error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4977
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    :cond_42
    move-object v0, v1

    goto :goto_33
.end method

.method static isConferenceCall(Lcom/android/internal/telephony/Call;)Z
    .registers 7
    .parameter "call"

    .prologue
    const/4 v4, 0x1

    .line 2954
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2955
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2956
    .local v2, phoneType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_27

    .line 2957
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    .line 2958
    .local v3, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v3, v5, :cond_26

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v5, :cond_33

    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    if-nez v5, :cond_33

    .line 2969
    .end local v3           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_26
    :goto_26
    return v4

    .line 2964
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2965
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_33

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_26

    .line 2969
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_33
    const/4 v4, 0x0

    goto :goto_26
.end method

.method public static isIMSCallIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4298
    const-string v2, "sip"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 4309
    :cond_a
    :goto_a
    return v0

    .line 4304
    :cond_b
    const-string v2, "android.phone.extra.CALL_DOMAIN"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4306
    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    move v0, v1

    .line 4307
    goto :goto_a
.end method

.method public static isMultiSimEnabled()Z
    .registers 2

    .prologue
    .line 5100
    const/4 v0, 0x0

    .line 5102
    .local v0, flag:Z
    :try_start_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z
    :try_end_8
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 5106
    :goto_9
    return v0

    .line 5103
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method public static isNetworkRoamingCT(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 5135
    const/4 v0, 0x0

    .line 5136
    .local v0, isRoaming:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5137
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    .line 5141
    :goto_f
    return v0

    .line 5139
    :cond_10
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_f
.end method

.method public static isNormalNumber(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    .line 5112
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 5114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_14
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_34

    .line 5115
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_14

    .line 5117
    const/4 v0, 0x0

    .line 5120
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x1

    goto :goto_33
.end method

.method static isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z
    .registers 3
    .parameter

    .prologue
    .line 4103
    if-eqz p0, :cond_17

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4109
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4111
    if-eqz v0, :cond_17

    .line 4112
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4115
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .registers 2
    .parameter "state"

    .prologue
    .line 4175
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;I)Z
    .registers 3
    .parameter "state"
    .parameter "sub"

    .prologue
    .line 4182
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static isRoutableViaGateway(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 4064
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4072
    :cond_7
    :goto_7
    return v0

    .line 4067
    :cond_8
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4068
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4071
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4072
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 3124
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3125
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method static isTablet(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 4559
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static isVoipSupported()Z
    .registers 3

    .prologue
    .line 4236
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4237
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 4243
    :goto_2b
    return v0

    .line 4237
    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 4386
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    return-void
.end method

.method static mergeCalls()V
    .registers 1

    .prologue
    .line 1908
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 1909
    return-void
.end method

.method static mergeCalls(Lcom/android/internal/telephony/CallManager;)V
    .registers 7
    .parameter "cm"

    .prologue
    .line 1925
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 1926
    .local v2, phoneType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_28

    .line 1927
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1928
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_27

    .line 1931
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1938
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1947
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_27
    :goto_27
    return-void

    .line 1942
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallManager;->conference(Lcom/android/internal/telephony/Call;)V
    :try_end_2f
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_27

    .line 1943
    :catch_30
    move-exception v1

    .line 1944
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeCalls: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method static mergeCalls(Lcom/android/internal/telephony/CallManager;I)V
    .registers 9
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 1956
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1957
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1959
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    .line 1960
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1961
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_2b

    .line 1964
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v4, v5}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1974
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1989
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_2b
    :goto_2b
    return-void

    .line 1982
    :cond_2c
    :try_start_2c
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {p0, v4, p1}, Lcom/android/phone/PhoneUtils;->conference(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V
    :try_end_33
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_2b

    .line 1985
    :catch_34
    move-exception v1

    .line 1986
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mergeCalls: caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0e0004

    .line 3895
    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    .line 3927
    :cond_7
    :goto_7
    return-object p2

    .line 3901
    :cond_8
    const v0, 0x7f0e01d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v0, :cond_21

    .line 3903
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3904
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    iput v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3912
    :cond_21
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v1, :cond_2f

    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v0, p3, :cond_7

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v0, :cond_7

    .line 3915
    :cond_2f
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v0

    .line 3916
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 3918
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v1, :cond_44

    .line 3919
    const v1, 0x7f0e0005

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3923
    :cond_41
    :goto_41
    iput v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    goto :goto_7

    .line 3920
    :cond_44
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v0, v1, :cond_41

    .line 3921
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_41
.end method

.method public static needShowDialog()Z
    .registers 13

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    .line 633
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    .line 634
    .local v0, allPhone:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    const/4 v4, 0x0

    .line 635
    .local v4, conCDMASize:I
    const/4 v5, 0x0

    .line 636
    .local v5, conGSMSize:I
    const/4 v3, 0x0

    .line 637
    .local v3, cdmaCall:Lcom/android/internal/telephony/Call;
    const/4 v6, 0x0

    .line 638
    .local v6, fgCall:Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 640
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_55

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Phone;

    .line 641
    .local v9, ph:Lcom/android/internal/telephony/Phone;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    if-ne v11, v12, :cond_34

    .line 642
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 643
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_15

    .line 644
    :cond_34
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    if-ne v11, v10, :cond_15

    .line 645
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 646
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 647
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 648
    .local v7, fgCallSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    .line 649
    .local v2, bgCallSize:I
    add-int v5, v7, v2

    goto :goto_15

    .line 653
    .end local v2           #bgCallSize:I
    .end local v7           #fgCallSize:I
    .end local v9           #ph:Lcom/android/internal/telephony/Phone;
    :cond_55
    add-int v11, v4, v5

    if-lt v11, v12, :cond_5e

    if-eqz v4, :cond_5e

    if-eqz v5, :cond_5e

    .line 656
    :goto_5d
    return v10

    :cond_5e
    const/4 v10, 0x0

    goto :goto_5d
.end method

.method public static needShowTipAndShowWhich(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneUtils$ShowTip;
    .registers 14
    .parameter "currentPhone"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 714
    invoke-static {p0}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    .line 715
    .local v5, currentsub:I
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v0

    .line 716
    .local v0, altSub:I
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    if-ne v10, v12, :cond_52

    .line 717
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 718
    .local v9, gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 719
    .local v6, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 720
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 721
    .local v8, gsmFgConSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 722
    .local v7, gsmBgConSize:I
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 723
    .local v3, cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 725
    .local v2, cdmaAllConSize:I
    add-int v10, v8, v7

    if-ge v10, v12, :cond_4c

    if-lt v7, v11, :cond_46

    if-lt v2, v11, :cond_46

    if-eqz v8, :cond_4c

    :cond_46
    if-lt v8, v11, :cond_4f

    if-lt v2, v11, :cond_4f

    if-nez v7, :cond_4f

    .line 727
    :cond_4c
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->GSM_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    .line 749
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v7           #gsmBgConSize:I
    .end local v8           #gsmFgConSize:I
    .end local v9           #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :goto_4e
    return-object v10

    .line 729
    .restart local v1       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #cdmaAllConSize:I
    .restart local v3       #cdmaCall:Lcom/android/internal/telephony/Call;
    .restart local v6       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v7       #gsmBgConSize:I
    .restart local v8       #gsmFgConSize:I
    .restart local v9       #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :cond_4f
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->NO_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    goto :goto_4e

    .line 732
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v7           #gsmBgConSize:I
    .end local v8           #gsmFgConSize:I
    .end local v9           #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :cond_52
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    if-ne v10, v11, :cond_9b

    .line 733
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 734
    .local v4, cdmatmpPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 735
    .restart local v6       #fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 736
    .restart local v1       #bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 737
    .restart local v8       #gsmFgConSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 738
    .restart local v7       #gsmBgConSize:I
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 739
    .restart local v3       #cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 741
    .restart local v2       #cdmaAllConSize:I
    if-ge v2, v12, :cond_8c

    if-nez v8, :cond_8f

    if-lt v7, v11, :cond_8f

    if-ne v2, v11, :cond_8f

    .line 742
    :cond_8c
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->CDMA_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    goto :goto_4e

    .line 743
    :cond_8f
    if-ne v2, v11, :cond_98

    if-lt v8, v11, :cond_98

    if-nez v7, :cond_98

    .line 744
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->GSM_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    goto :goto_4e

    .line 746
    :cond_98
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->NO_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    goto :goto_4e

    .line 749
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v4           #cdmatmpPhone:Lcom/android/internal/telephony/Phone;
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v7           #gsmBgConSize:I
    .end local v8           #gsmFgConSize:I
    :cond_9b
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->NO_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    goto :goto_4e
.end method

.method static okToAddCall(Lcom/android/internal/telephony/CallManager;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3761
    .line 3763
    :try_start_2
    invoke-static {p0}, Lcom/huawei/internal/telephony/CallManagerEx;->getPhoneInCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;
    :try_end_5
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_2 .. :try_end_5} :catch_d

    move-result-object v0

    .line 3769
    :goto_6
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3795
    :goto_c
    return v2

    .line 3764
    :catch_d
    move-exception v0

    .line 3765
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_6

    .line 3773
    :cond_17
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3774
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 3775
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3b

    .line 3779
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3780
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_39

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getAddCallMenuStateAfterCallWaiting()Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v1

    :goto_37
    move v2, v0

    goto :goto_c

    :cond_39
    move v0, v2

    goto :goto_37

    .line 3782
    :cond_3b
    if-eq v0, v1, :cond_43

    const/4 v4, 0x3

    if-eq v0, v4, :cond_43

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6a

    .line 3790
    :cond_43
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .line 3791
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 3792
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 3793
    if-eqz v0, :cond_66

    if-eqz v5, :cond_66

    move v0, v1

    .line 3795
    :goto_54
    if-nez v4, :cond_68

    if-nez v0, :cond_68

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v0, :cond_64

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v0, :cond_64

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v0, :cond_68

    :cond_64
    :goto_64
    move v2, v1

    goto :goto_c

    :cond_66
    move v0, v2

    .line 3793
    goto :goto_54

    :cond_68
    move v1, v2

    .line 3795
    goto :goto_64

    .line 3801
    :cond_6a
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

.method static okToAddCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3810
    invoke-static {p1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3811
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3813
    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    invoke-static {p1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    if-eq v4, v5, :cond_19

    .line 3853
    :cond_18
    :goto_18
    return v1

    .line 3819
    :cond_19
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 3823
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 3825
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 3827
    const/4 v2, 0x2

    if-ne v4, v2, :cond_3e

    .line 3831
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 3832
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v3, :cond_3c

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getAddCallMenuStateAfterCallWaiting()Z

    move-result v2

    if-eqz v2, :cond_3c

    :goto_3a
    move v1, v0

    goto :goto_18

    :cond_3c
    move v0, v1

    goto :goto_3a

    .line 3834
    :cond_3e
    if-eq v4, v0, :cond_43

    const/4 v2, 0x3

    if-ne v4, v2, :cond_76

    .line 3841
    :cond_43
    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v4

    .line 3842
    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    .line 3843
    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    .line 3844
    if-eqz v2, :cond_72

    if-eqz v3, :cond_72

    move v2, v0

    .line 3846
    :goto_60
    if-nez v4, :cond_74

    if-nez v2, :cond_74

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v2, :cond_70

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v2, :cond_70

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v2, :cond_74

    :cond_70
    :goto_70
    move v1, v0

    goto :goto_18

    :cond_72
    move v2, v1

    .line 3844
    goto :goto_60

    :cond_74
    move v0, v1

    .line 3846
    goto :goto_70

    .line 3851
    :cond_76
    const/4 v0, 0x4

    if-eq v4, v0, :cond_18

    .line 3856
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z
    .registers 8
    .parameter "cm"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3673
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3674
    .local v2, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3676
    .local v1, bgPhoneType:I
    if-ne v2, v6, :cond_38

    .line 3677
    if-ne v1, v6, :cond_36

    .line 3682
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-nez v5, :cond_34

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 3700
    :cond_33
    :goto_33
    return v3

    :cond_34
    move v3, v4

    .line 3682
    goto :goto_33

    :cond_36
    move v3, v4

    .line 3687
    goto :goto_33

    .line 3689
    :cond_38
    const/4 v5, 0x2

    if-ne v2, v5, :cond_53

    .line 3691
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3692
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_51

    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    if-eqz v5, :cond_33

    :cond_51
    move v3, v4

    goto :goto_33

    .line 3700
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_53
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-nez v5, :cond_6f

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-nez v5, :cond_33

    :cond_6f
    move v3, v4

    goto :goto_33
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z
    .registers 12
    .parameter "cm"
    .parameter "reqPhone"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3712
    invoke-static {p1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    .line 3713
    .local v5, sub:I
    invoke-static {p0, v5}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3714
    .local v3, fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 3715
    .local v4, phoneType:I
    invoke-static {p0, v5}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3723
    .local v2, bgPhoneType:I
    if-eq v4, v9, :cond_23

    if-ne v2, v9, :cond_25

    :cond_23
    move v6, v7

    .line 3743
    :cond_24
    :goto_24
    return v6

    .line 3730
    :cond_25
    const/4 v8, 0x2

    if-ne v4, v8, :cond_40

    .line 3732
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3733
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_3e

    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v8

    if-eqz v8, :cond_24

    :cond_3e
    move v6, v7

    goto :goto_24

    .line 3741
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_40
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3743
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    if-nez v8, :cond_68

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-static {p0, v1, v5}, Lcom/android/phone/PhoneUtils;->canConference(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)Z

    move-result v8

    if-nez v8, :cond_24

    :cond_68
    move v6, v7

    goto :goto_24
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3599
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3600
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 3603
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 3604
    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_1c

    .line 3614
    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    .line 3604
    goto :goto_1b

    .line 3606
    :cond_1e
    if-eq v2, v0, :cond_26

    const/4 v3, 0x3

    if-eq v2, v3, :cond_26

    const/4 v3, 0x4

    if-ne v2, v3, :cond_46

    .line 3614
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_1b

    :cond_44
    move v0, v1

    goto :goto_1b

    .line 3618
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3627
    invoke-static {p1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 3628
    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3629
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 3630
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 3638
    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    .line 3641
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 3642
    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_24

    .line 3658
    :cond_23
    :goto_23
    return v0

    :cond_24
    move v0, v1

    .line 3642
    goto :goto_23

    .line 3644
    :cond_26
    if-eq v3, v0, :cond_2e

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2e

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5a

    .line 3652
    :cond_2e
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3654
    if-nez v3, :cond_36

    move v0, v1

    .line 3655
    goto :goto_23

    .line 3658
    :cond_36
    invoke-static {v2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    invoke-static {p0, v4}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v4

    if-nez v4, :cond_58

    invoke-static {v2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_58

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_23

    :cond_58
    move v0, v1

    goto :goto_23

    .line 3662
    :cond_5a
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

.method public static pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/telephony/Phone;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4129
    if-eqz p3, :cond_9

    .line 4130
    invoke-static {p0, p3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4131
    if-eqz v0, :cond_9

    .line 4141
    :cond_8
    :goto_8
    return-object v0

    .line 4136
    :cond_9
    const-string v0, "sip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4137
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4138
    if-nez v0, :cond_8

    .line 4141
    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_8
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I
    .registers 13
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "isEmergencyCall"
    .parameter "gatewayUri"

    .prologue
    .line 1548
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I)I
    .registers 27
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "isEmergencyCall"
    .parameter "gatewayUri"
    .parameter "callType"

    .prologue
    .line 1577
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 1579
    .local v2, app:Lcom/android/phone/PhoneApp;
    const/4 v15, 0x0

    .line 1580
    .local v15, useGateway:Z
    if-eqz p5, :cond_10

    if-nez p4, :cond_10

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1583
    const/4 v15, 0x1

    .line 1586
    :cond_10
    const/4 v13, 0x0

    .line 1589
    .local v13, status:I
    if-eqz v15, :cond_64

    .line 1592
    if-eqz p5, :cond_21

    const-string v17, "tel"

    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_24

    .line 1593
    :cond_21
    const/16 v17, 0x2

    .line 1730
    :goto_23
    return v17

    .line 1601
    :cond_24
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 1608
    .local v10, numberToDial:Ljava/lang/String;
    :goto_28
    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_67

    const/4 v9, 0x1

    .line 1611
    .local v9, initiallyIdle:Z
    :goto_39
    :try_start_39
    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_44
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_39 .. :try_end_44} :catch_69

    move-result-object v4

    .line 1623
    .local v4, connection:Lcom/android/internal/telephony/Connection;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    .line 1626
    .local v11, phoneType:I
    if-nez v4, :cond_75

    .line 1627
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_73

    if-nez p5, :cond_73

    .line 1628
    const/4 v13, 0x1

    .line 1630
    sget-object v17, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v17, :cond_61

    .line 1632
    :try_start_58
    sget-object v17, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IExtendedNetworkService;->setMmiString(Ljava/lang/String;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_61} :catch_6d

    :cond_61
    :goto_61
    move/from16 v17, v13

    .line 1730
    goto :goto_23

    .line 1603
    .end local v4           #connection:Lcom/android/internal/telephony/Connection;
    .end local v9           #initiallyIdle:Z
    .end local v10           #numberToDial:Ljava/lang/String;
    .end local v11           #phoneType:I
    :cond_64
    move-object/from16 v10, p2

    .restart local v10       #numberToDial:Ljava/lang/String;
    goto :goto_28

    .line 1608
    :cond_67
    const/4 v9, 0x0

    goto :goto_39

    .line 1612
    .restart local v9       #initiallyIdle:Z
    :catch_69
    move-exception v7

    .line 1616
    .local v7, ex:Lcom/android/internal/telephony/CallStateException;
    const/16 v17, 0x2

    goto :goto_23

    .line 1633
    .end local v7           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v4       #connection:Lcom/android/internal/telephony/Connection;
    .restart local v11       #phoneType:I
    :catch_6d
    move-exception v6

    .line 1634
    .local v6, e:Landroid/os/RemoteException;
    const/16 v17, 0x0

    sput-object v17, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_61

    .line 1638
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_73
    const/4 v13, 0x2

    goto :goto_61

    .line 1641
    :cond_75
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v11, v0, :cond_7e

    .line 1642
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 1646
    :cond_7e
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v11, v0, :cond_88

    .line 1647
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1649
    :cond_88
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1650
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1651
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1653
    if-nez p5, :cond_125

    .line 1659
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v5, "content"

    .line 1660
    .local v5, content:Ljava/lang/String;
    if-eqz p3, :cond_b4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b4

    .line 1661
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v16

    .line 1662
    .local v16, userDataObject:Ljava/lang/Object;
    if-nez v16, :cond_105

    .line 1663
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1698
    .end local v16           #userDataObject:Ljava/lang/Object;
    :cond_b4
    :goto_b4
    sget-boolean v17, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v17, :cond_158

    .line 1700
    invoke-static/range {p1 .. p1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v14

    .line 1702
    .local v14, sub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 1703
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 1704
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    .line 1713
    .end local v14           #sub:I
    :goto_d1
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    .line 1716
    .local v12, speakerActivated:Z
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    .line 1717
    .local v3, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v9, :cond_fa

    if-nez v12, :cond_fa

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_fa

    if-eqz v3, :cond_ef

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v17

    if-nez v17, :cond_fa

    .line 1720
    :cond_ef
    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1723
    :cond_fa
    sget-boolean v17, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-eqz v17, :cond_61

    .line 1725
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/phone/ipcallsetting/IPCallUtils;->setConnectionAndPhoneNumber(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_61

    .line 1668
    .end local v3           #bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    .end local v12           #speakerActivated:Z
    .restart local v16       #userDataObject:Ljava/lang/Object;
    :cond_105
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_116

    .line 1669
    check-cast v16, Lcom/android/internal/telephony/CallerInfo;

    .end local v16           #userDataObject:Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_b4

    .line 1671
    .restart local v16       #userDataObject:Ljava/lang/Object;
    :cond_116
    check-cast v16, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v16           #userDataObject:Ljava/lang/Object;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_b4

    .line 1680
    .end local v5           #content:Ljava/lang/String;
    :cond_125
    const/4 v8, 0x0

    .line 1681
    .local v8, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v5, "content"

    .line 1682
    .restart local v5       #content:Ljava/lang/String;
    if-eqz p3, :cond_145

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_145

    .line 1683
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v8

    .line 1689
    :cond_145
    if-nez v8, :cond_14f

    .line 1690
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v8

    .line 1692
    :cond_14f
    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1693
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto/16 :goto_b4

    .line 1707
    .end local v8           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_158
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto/16 :goto_d1
.end method

.method private static resetAndSetRingingSubscription(Lcom/android/internal/telephony/Call;)V
    .registers 6
    .parameter "ringing"

    .prologue
    .line 5038
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5041
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->resetmRingingSubscription()V

    .line 5044
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 5045
    .local v2, sub:I
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 5046
    .local v1, hasAltRingingCall:Z
    if-eqz v1, :cond_27

    .line 5047
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->startIncallTone()V

    .line 5049
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setmRingingSubscription(I)V

    .line 5052
    :cond_27
    return-void
.end method

.method private static resetRingingSubscription(I)V
    .registers 5
    .parameter "subscription"

    .prologue
    .line 5056
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5057
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 5058
    .local v1, hasAltRingingCall:Z
    if-eqz v1, :cond_18

    .line 5059
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setmRingingSubscription(I)V

    .line 5063
    :goto_17
    return-void

    .line 5061
    :cond_18
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->resetmRingingSubscription()V

    goto :goto_17
.end method

.method static restoreMuteState()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 1843
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1844
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->restoreMuteStateInternal(Lcom/android/internal/telephony/Phone;I)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method static restoreMuteState(I)Ljava/lang/Boolean;
    .registers 3
    .parameter "sub"

    .prologue
    .line 1838
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1839
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtils;->restoreMuteStateInternal(Lcom/android/internal/telephony/Phone;I)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private static restoreMuteStateInternal(Lcom/android/internal/telephony/Phone;I)Ljava/lang/Boolean;
    .registers 7
    .parameter "phone"
    .parameter "sub"

    .prologue
    .line 1857
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1860
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_57

    .line 1862
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1865
    .local v1, phoneType:I
    const/4 v2, 0x0

    .line 1871
    .local v2, shouldMute:Ljava/lang/Boolean;
    const/4 v3, 0x2

    if-eq v1, v3, :cond_15

    const/4 v3, 0x4

    if-ne v1, v3, :cond_38

    .line 1873
    :cond_15
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #shouldMute:Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;

    .line 1879
    .restart local v2       #shouldMute:Ljava/lang/Boolean;
    :cond_25
    :goto_25
    if-nez v2, :cond_29

    .line 1880
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1884
    :cond_29
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_4f

    .line 1886
    const/4 v3, -0x1

    if-ne v3, p1, :cond_47

    .line 1887
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 1902
    .end local v1           #phoneType:I
    .end local v2           #shouldMute:Ljava/lang/Boolean;
    :goto_37
    return-object v2

    .line 1875
    .restart local v1       #phoneType:I
    .restart local v2       #shouldMute:Ljava/lang/Boolean;
    :cond_38
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3e

    const/4 v3, 0x3

    if-ne v1, v3, :cond_25

    .line 1877
    :cond_3e
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #shouldMute:Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;

    .restart local v2       #shouldMute:Ljava/lang/Boolean;
    goto :goto_25

    .line 1889
    :cond_47
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3, p1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    goto :goto_37

    .line 1893
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_37

    .line 1899
    .end local v1           #phoneType:I
    .end local v2           #shouldMute:Ljava/lang/Boolean;
    :cond_57
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_64

    .line 1900
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getMute(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_37

    .line 1902
    :cond_64
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_37
.end method

.method static restoreSpeakerMode(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 3118
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    if-eq v0, v1, :cond_e

    .line 3119
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3121
    :cond_e
    return-void
.end method

.method static sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 1762
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_8

    .line 1763
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash_DSDA(Lcom/android/internal/telephony/Phone;)V

    .line 1774
    :cond_7
    :goto_7
    return-void

    .line 1767
    :cond_8
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1768
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1769
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_7

    .line 1771
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_7
.end method

.method static sendEmptyFlash_DSDA(Lcom/android/internal/telephony/Phone;)V
    .registers 7
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    .line 1784
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v4

    invoke-static {p0}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    if-ne v4, v5, :cond_48

    .line 1785
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_48

    .line 1786
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1787
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_48

    .line 1789
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1796
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_48

    .line 1797
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1798
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v4, :cond_48

    .line 1799
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCdmaFlashHold()Z

    move-result v1

    .line 1800
    .local v1, cdmaHoldState:Z
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-nez v1, :cond_49

    :goto_45
    invoke-virtual {v4, v3}, Lcom/android/phone/CdmaPhoneCallState;->setCdmaFlashHold(Z)V

    .line 1806
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #cdmaHoldState:Z
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_48
    return-void

    .line 1800
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #cdmaHoldState:Z
    .restart local v2       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_49
    const/4 v3, 0x0

    goto :goto_45
.end method

.method public static sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.VIEW_NOTIFICATION"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4284
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.ViewNotificationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4286
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4287
    return-void
.end method

.method static separateCall(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 1995
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1999
    :goto_3
    return-void

    .line 1996
    :catch_4
    move-exception v0

    .line 1997
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "separateCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method static setAudioMode()V
    .registers 1

    .prologue
    .line 3318
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 3319
    return-void
.end method

.method static setAudioMode(I)V
    .registers 2
    .parameter "sub"

    .prologue
    .line 3351
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;I)V

    .line 3352
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .registers 6
    .parameter

    .prologue
    .line 3326
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    .line 3327
    const-string v0, "audio"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3329
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    move-object v1, v2

    .line 3331
    check-cast v1, Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mSetAudioHandler:Lcom/android/phone/PhoneApp$SetAudioHandler;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$SetAudioHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    move-object v1, v2

    .line 3332
    check-cast v1, Lcom/android/phone/PhoneApp;

    const/4 v1, 0x1

    iput v1, v4, Landroid/os/Message;->what:I

    move-object v1, v2

    .line 3333
    check-cast v1, Lcom/android/phone/PhoneApp;

    iput-object p0, v1, Lcom/android/phone/PhoneApp;->mSavedCallManager:Lcom/android/internal/telephony/CallManager;

    .line 3334
    check-cast v2, Lcom/android/phone/PhoneApp;

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->mSetAudioHandler:Lcom/android/phone/PhoneApp$SetAudioHandler;

    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp$SetAudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3336
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 3338
    if-eq v3, v0, :cond_33

    .line 3345
    :cond_33
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3359
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    .line 3360
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3362
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 3363
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 3365
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v3

    .line 3366
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    .line 3371
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 3372
    const/4 v4, 0x1

    if-ne v3, v4, :cond_44

    .line 3373
    const-string v3, "USEDMODEM"

    const-string v4, "secondmodem"

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    :goto_33
    invoke-static {p0, v2}, Lcom/huawei/internal/telephony/CallManagerEx;->setAudioMode(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)V

    .line 3382
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 3386
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 3388
    if-eq v1, v0, :cond_43

    .line 3395
    :cond_43
    return-void

    .line 3375
    :cond_44
    const-string v3, "USEDMODEM"

    const-string v4, "firstmodem"

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method static setMute(Z)V
    .registers 6
    .parameter "muted"

    .prologue
    .line 3190
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3193
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 3197
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3198
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2d

    .line 3201
    :cond_2d
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 3203
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :cond_37
    return-void
.end method

.method static setMute(ZI)V
    .registers 8
    .parameter "muted"
    .parameter "sub"

    .prologue
    .line 3209
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v0, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3210
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3213
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 3217
    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3218
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_31

    .line 3221
    :cond_31
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 3223
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :cond_3b
    return-void
.end method

.method private static setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3231
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3232
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3233
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3235
    if-eqz v0, :cond_3e

    .line 3236
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3241
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_3a

    .line 3247
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3248
    if-ne v2, v3, :cond_36

    .line 3249
    const/4 v2, 0x2

    invoke-static {v0, v2, p1}, Lcom/huawei/android/media/AudioManagerEx;->setMicrophoneMute(Landroid/media/AudioManager;IZ)V

    .line 3264
    :goto_30
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    .line 3265
    return-void

    .line 3251
    :cond_36
    invoke-static {v0, v3, p1}, Lcom/huawei/android/media/AudioManagerEx;->setMicrophoneMute(Landroid/media/AudioManager;IZ)V

    goto :goto_30

    .line 3256
    :cond_3a
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_30

    .line 3262
    :cond_3e
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_30
.end method

.method public static smartHangup()V
    .registers 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 666
    const/4 v4, 0x1

    .line 667
    .local v4, curSub:I
    const/4 v0, 0x0

    .line 668
    .local v0, altSub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 669
    .local v8, gsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 670
    .local v5, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 671
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 672
    .local v7, gsmFgConSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 673
    .local v6, gsmBgConSize:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 674
    .local v3, cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 677
    .local v2, cdmaAllConSize:I
    add-int v9, v7, v6

    if-lt v9, v11, :cond_40

    .line 678
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 696
    :cond_3f
    :goto_3f
    return-void

    .line 682
    :cond_40
    if-lt v2, v10, :cond_4a

    if-ne v7, v10, :cond_4a

    if-nez v6, :cond_4a

    .line 683
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3f

    .line 687
    :cond_4a
    if-lt v2, v10, :cond_54

    if-nez v7, :cond_54

    if-ne v6, v10, :cond_54

    .line 688
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3f

    .line 692
    :cond_54
    if-lt v2, v11, :cond_3f

    .line 693
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3f
.end method

.method public static smartHangupAndAnswer(Lcom/android/internal/telephony/Call;)Z
    .registers 15
    .parameter "currentPhoneCall"

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 761
    .local v5, currentPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v6

    .line 762
    .local v6, currentsub:I
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v0

    .line 763
    .local v0, altSub:I
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7a

    .line 764
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 765
    .local v11, gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 766
    .local v8, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 767
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    .line 768
    .local v10, gsmFgConSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 769
    .local v9, gsmBgConSize:I
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 770
    .local v3, cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    .line 773
    .local v2, cdmaAllConSize:I
    add-int v12, v10, v9

    const/4 v13, 0x2

    if-lt v12, v13, :cond_57

    .line 774
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 776
    :try_start_47
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_4a
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_47 .. :try_end_4a} :catch_4e

    .line 780
    :goto_4a
    sput-object v8, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 781
    const/4 v12, 0x0

    .line 827
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v8           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v9           #gsmBgConSize:I
    .end local v10           #gsmFgConSize:I
    .end local v11           #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :goto_4d
    return v12

    .line 777
    .restart local v1       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #cdmaAllConSize:I
    .restart local v3       #cdmaCall:Lcom/android/internal/telephony/Call;
    .restart local v8       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v9       #gsmBgConSize:I
    .restart local v10       #gsmFgConSize:I
    .restart local v11       #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :catch_4e
    move-exception v7

    .line 778
    .local v7, e:Lcom/android/internal/telephony/CallStateException;
    const-string v12, "PhoneUtils"

    const-string v13, "gsmtmpPhone.switchHoldingAndActive() failed!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 784
    .end local v7           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_57
    const/4 v12, 0x1

    if-lt v9, v12, :cond_66

    const/4 v12, 0x1

    if-lt v2, v12, :cond_66

    if-nez v10, :cond_66

    .line 785
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 786
    sput-object v1, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 787
    const/4 v12, 0x0

    goto :goto_4d

    .line 790
    :cond_66
    const/4 v12, 0x1

    if-lt v10, v12, :cond_75

    const/4 v12, 0x1

    if-lt v2, v12, :cond_75

    if-nez v9, :cond_75

    .line 791
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 792
    sput-object v8, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 793
    const/4 v12, 0x0

    goto :goto_4d

    .line 795
    :cond_75
    const/4 v12, 0x0

    sput-object v12, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 796
    const/4 v12, 0x0

    goto :goto_4d

    .line 797
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v8           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v9           #gsmBgConSize:I
    .end local v10           #gsmFgConSize:I
    .end local v11           #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :cond_7a
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e2

    .line 798
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 799
    .local v4, cdmatmpPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 800
    .restart local v8       #fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 801
    .restart local v1       #bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    .line 802
    .restart local v10       #gsmFgConSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 803
    .restart local v9       #gsmBgConSize:I
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 804
    .restart local v3       #cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    .line 806
    .restart local v2       #cdmaAllConSize:I
    const/4 v12, 0x2

    if-lt v2, v12, :cond_b7

    .line 807
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 808
    sput-object v3, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 809
    const/4 v12, 0x0

    goto :goto_4d

    .line 812
    :cond_b7
    const/4 v12, 0x1

    if-ne v2, v12, :cond_cc

    const/4 v12, 0x1

    if-lt v10, v12, :cond_cc

    if-nez v9, :cond_cc

    .line 813
    sput-object v8, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 814
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v12, p0}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 815
    const/4 v12, 0x1

    goto :goto_4d

    .line 818
    :cond_cc
    if-nez v10, :cond_dc

    const/4 v12, 0x1

    if-lt v9, v12, :cond_dc

    const/4 v12, 0x1

    if-ne v2, v12, :cond_dc

    .line 819
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 820
    sput-object v3, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 821
    const/4 v12, 0x0

    goto/16 :goto_4d

    .line 823
    :cond_dc
    const/4 v12, 0x0

    sput-object v12, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 824
    const/4 v12, 0x0

    goto/16 :goto_4d

    .line 826
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v4           #cdmatmpPhone:Lcom/android/internal/telephony/Phone;
    .end local v8           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v9           #gsmBgConSize:I
    .end local v10           #gsmFgConSize:I
    :cond_e2
    const/4 v12, 0x0

    sput-object v12, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 827
    const/4 v12, 0x0

    goto/16 :goto_4d
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2574
    .line 2575
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2576
    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 2578
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2586
    :goto_12
    invoke-static {p0, v0, p2, p3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    return-object v0

    .line 2579
    :cond_17
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 2581
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_12

    .line 2583
    :cond_22
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

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 2597
    if-nez p1, :cond_e

    .line 2599
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2600
    iput-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2833
    :goto_d
    return-object v0

    .line 2604
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 2640
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_44

    .line 2644
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2645
    new-instance v3, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2646
    check-cast v0, Landroid/net/Uri;

    sget-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v0, v3, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2648
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v0, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2649
    iput-boolean v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2651
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    move-object v0, v1

    .line 2824
    :goto_37
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    sput-object v1, Lcom/android/phone/PhoneUtils;->mIncomingCallName:Ljava/lang/String;

    .line 2825
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    sput-object v1, Lcom/android/phone/PhoneUtils;->mIncomingCallNumber:Ljava/lang/String;

    goto :goto_d

    .line 2654
    :cond_44
    if-nez v0, :cond_ab

    .line 2657
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2676
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2677
    new-instance v3, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2681
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2682
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2684
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2685
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2689
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a8

    .line 2692
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v3, v1, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2695
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2699
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_98

    .line 2700
    iput-boolean v10, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2716
    :goto_94
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_37

    .line 2702
    :cond_98
    sget-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v1, v3, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2704
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2705
    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_94

    .line 2713
    :cond_a8
    iput-boolean v10, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_94

    .line 2719
    :cond_ab
    instance-of v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_140

    .line 2723
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 2726
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    if-eqz v1, :cond_bc

    .line 2727
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 2731
    :cond_bc
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2732
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_111

    .line 2734
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2736
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2737
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2738
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2740
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v3, v1, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2743
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2758
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_100

    .line 2759
    iput-boolean v10, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_37

    .line 2761
    :cond_100
    sget-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v1, v3, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2763
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2764
    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_37

    .line 2767
    :cond_111
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v1, :cond_11c

    .line 2768
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2771
    :cond_11c
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2773
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2774
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2775
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2784
    iput-boolean v10, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_37

    .line 2794
    :cond_140
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2795
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iput-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2796
    iput-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2797
    iput-boolean v10, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2799
    const-string v0, "ro.config.hw_special_num"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2800
    if-eqz v0, :cond_1ab

    .line 2801
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hw_default_number_to_name"

    invoke-static {v0, v3}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2802
    if-eqz v0, :cond_1ab

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1ab

    .line 2803
    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2804
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2805
    array-length v5, v4

    move v0, v2

    .line 2806
    :goto_175
    if-ge v0, v5, :cond_1ab

    .line 2807
    aget-object v6, v4, v0

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2809
    const/4 v7, 0x3

    array-length v8, v6

    if-ne v7, v8, :cond_1a8

    .line 2811
    aget-object v7, v6, v2

    const-string v8, "[^0-9\\+\\*\\#]"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a8

    .line 2812
    iget-object v7, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    aget-object v8, v6, v10

    iput-object v8, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2813
    iget-object v7, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v8, 0x2

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v7, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 2806
    :cond_1a8
    add-int/lit8 v0, v0, 0x1

    goto :goto_175

    :cond_1ab
    move-object v0, v1

    goto/16 :goto_37
.end method

.method static startNewCall(Lcom/android/internal/telephony/CallManager;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3043
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3044
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3047
    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 3048
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 3072
    :goto_12
    return-void

    .line 3053
    :cond_13
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3054
    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 3057
    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 3060
    :cond_1f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3061
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3066
    const-string v2, "add_call_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3068
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->updateKeyguardPolicy(Lcom/android/internal/telephony/Phone$State;)V

    .line 3071
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_12
.end method

.method static startNewCall(Lcom/android/internal/telephony/CallManager;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2996
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 2999
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 3000
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 3032
    :goto_f
    return v0

    .line 3005
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3006
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 3009
    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 3012
    :cond_24
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3013
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3018
    const-string v4, "add_call_mode"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3020
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/phone/PhoneApp;->updateKeyguardPolicy(Lcom/android/internal/telephony/Phone$State;)V

    .line 3023
    :try_start_3c
    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_41
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_41} :catch_43

    move v0, v1

    .line 3032
    goto :goto_f

    .line 3024
    :catch_43
    move-exception v1

    .line 3028
    const-string v1, "PhoneUtils"

    const-string v2, "Activity for adding calls isn\'t found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private static storagePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 4912
    .line 4914
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->externalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4917
    if-nez v0, :cond_a

    .line 4918
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->internalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4921
    :cond_a
    if-nez v0, :cond_1b

    .line 4922
    const v1, 0x7f0e028f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4927
    :cond_1b
    return-object v0
.end method

.method public static switchCallModes(Lcom/android/internal/telephony/Phone;Z)V
    .registers 16
    .parameter "phone"
    .parameter "shouldChangeActivePhone"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 4713
    invoke-static {p0}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    .line 4715
    .local v5, currentSub:I
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v1

    .line 4717
    .local v1, altSub:I
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_86

    .line 4719
    if-eqz p1, :cond_3e

    .line 4721
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 4722
    .local v7, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_3e

    .line 4723
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    .line 4724
    .local v4, connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v10, :cond_6b

    .line 4726
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 4727
    .local v2, app:Lcom/android/phone/PhoneApp;
    iget-object v12, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->getCdmaFlashHold()Z

    move-result v3

    .line 4729
    .local v3, cdmaHoldState:Z
    if-ne v10, v3, :cond_3e

    .line 4733
    :try_start_33
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 4739
    iget-object v13, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-nez v3, :cond_64

    move v12, v10

    :goto_3b
    invoke-virtual {v13, v12}, Lcom/android/phone/CdmaPhoneCallState;->setCdmaFlashHold(Z)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_66

    .line 4753
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #cdmaHoldState:Z
    .end local v4           #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v7           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_3e
    :goto_3e
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4754
    .local v0, altPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_75

    move v9, v10

    .line 4755
    .local v9, hasActiveFgCall:Z
    :goto_51
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_77

    move v8, v10

    .line 4757
    .local v8, hasActiveBgCall:Z
    :goto_5c
    if-eqz v9, :cond_7e

    if-nez v8, :cond_7e

    .line 4760
    :try_start_60
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_79

    .line 4817
    .end local v0           #altPhone:Lcom/android/internal/telephony/Phone;
    .end local v8           #hasActiveBgCall:Z
    .end local v9           #hasActiveFgCall:Z
    :cond_63
    :goto_63
    return-void

    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    .restart local v3       #cdmaHoldState:Z
    .restart local v4       #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v7       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_64
    move v12, v11

    .line 4739
    goto :goto_3b

    .line 4741
    :catch_66
    move-exception v6

    .line 4742
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 4745
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #cdmaHoldState:Z
    .end local v6           #e:Ljava/lang/Exception;
    :cond_6b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v10, :cond_3e

    .line 4746
    invoke-static {v11, v5}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    goto :goto_3e

    .end local v4           #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v7           #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v0       #altPhone:Lcom/android/internal/telephony/Phone;
    :cond_75
    move v9, v11

    .line 4754
    goto :goto_51

    .restart local v9       #hasActiveFgCall:Z
    :cond_77
    move v8, v11

    .line 4755
    goto :goto_5c

    .line 4761
    .restart local v8       #hasActiveBgCall:Z
    :catch_79
    move-exception v6

    .line 4762
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63

    .line 4764
    .end local v6           #e:Ljava/lang/Exception;
    :cond_7e
    if-eqz v9, :cond_63

    if-eqz v8, :cond_63

    .line 4765
    invoke-static {v10, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    goto :goto_63

    .line 4767
    .end local v0           #altPhone:Lcom/android/internal/telephony/Phone;
    .end local v8           #hasActiveBgCall:Z
    .end local v9           #hasActiveFgCall:Z
    :cond_86
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    if-ne v12, v10, :cond_63

    .line 4768
    if-eqz p1, :cond_ab

    .line 4769
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_e3

    move v9, v10

    .line 4770
    .restart local v9       #hasActiveFgCall:Z
    :goto_99
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_e5

    move v8, v10

    .line 4772
    .restart local v8       #hasActiveBgCall:Z
    :goto_a4
    if-nez v9, :cond_ec

    if-eqz v8, :cond_ec

    .line 4775
    :try_start_a8
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_e7

    .line 4785
    .end local v8           #hasActiveBgCall:Z
    .end local v9           #hasActiveFgCall:Z
    :cond_ab
    :goto_ab
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4786
    .restart local v0       #altPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 4787
    .restart local v7       #fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_63

    .line 4788
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    .line 4789
    .restart local v4       #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v10, :cond_f6

    .line 4791
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 4792
    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    iget-object v12, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->getCdmaFlashHold()Z

    move-result v3

    .line 4795
    .restart local v3       #cdmaHoldState:Z
    if-nez v3, :cond_63

    .line 4799
    :try_start_d3
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 4805
    iget-object v12, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-nez v3, :cond_f4

    :goto_da
    invoke-virtual {v12, v10}, Lcom/android/phone/CdmaPhoneCallState;->setCdmaFlashHold(Z)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_dd} :catch_de

    goto :goto_63

    .line 4807
    :catch_de
    move-exception v6

    .line 4808
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63

    .end local v0           #altPhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #cdmaHoldState:Z
    .end local v4           #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_e3
    move v9, v11

    .line 4769
    goto :goto_99

    .restart local v9       #hasActiveFgCall:Z
    :cond_e5
    move v8, v11

    .line 4770
    goto :goto_a4

    .line 4776
    .restart local v8       #hasActiveBgCall:Z
    :catch_e7
    move-exception v6

    .line 4777
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ab

    .line 4779
    .end local v6           #e:Ljava/lang/Exception;
    :cond_ec
    if-eqz v9, :cond_ab

    if-eqz v8, :cond_ab

    .line 4780
    invoke-static {v11, v5}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    goto :goto_ab

    .end local v8           #hasActiveBgCall:Z
    .end local v9           #hasActiveFgCall:Z
    .restart local v0       #altPhone:Lcom/android/internal/telephony/Phone;
    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    .restart local v3       #cdmaHoldState:Z
    .restart local v4       #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v7       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_f4
    move v10, v11

    .line 4805
    goto :goto_da

    .line 4811
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #cdmaHoldState:Z
    :cond_f6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_63

    .line 4812
    invoke-static {v10, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    goto/16 :goto_63
.end method

.method static switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .registers 6
    .parameter "heldCall"

    .prologue
    .line 1814
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1817
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_12

    .line 1820
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1835
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :goto_11
    return-void

    .line 1822
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1824
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1829
    :goto_23
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    :try_end_26
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_11

    .line 1832
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :catch_27
    move-exception v1

    .line 1833
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchHoldingAndActive: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 1827
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_41
    :try_start_41
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_44
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_41 .. :try_end_44} :catch_27

    goto :goto_23
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnSpeaker(flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3086
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3088
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3089
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 3092
    if-eqz p2, :cond_39

    .line 3093
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 3097
    :cond_39
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification(Z)V

    .line 3103
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3106
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 3108
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled(Z)V

    .line 3109
    return-void
.end method

.method static unHoldOrUnMuteCall(Lcom/android/internal/telephony/CallManager;I)V
    .registers 15
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 1069
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 1070
    .local v7, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 1072
    .local v2, app:Lcom/android/phone/PhoneApp;
    if-nez v7, :cond_17

    .line 1073
    const/4 v5, 0x0

    .line 1080
    .local v5, hasCall:Z
    :goto_f
    if-eqz v5, :cond_39

    .line 1081
    const-string v11, "There is a call in the current subscription hence not doing anything"

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1151
    :cond_16
    :goto_16
    return-void

    .line 1075
    .end local v5           #hasCall:Z
    :cond_17
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-eqz v11, :cond_35

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-eqz v11, :cond_35

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_37

    :cond_35
    const/4 v5, 0x1

    .restart local v5       #hasCall:Z
    :goto_36
    goto :goto_f

    .end local v5           #hasCall:Z
    :cond_37
    const/4 v5, 0x0

    goto :goto_36

    .line 1087
    .restart local v5       #hasCall:Z
    :cond_39
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v1

    .line 1088
    .local v1, altSub:I
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v11

    if-eq v11, v1, :cond_16

    .line 1094
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreen_DSDA()Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    .line 1095
    .local v6, inCallScreenDSDA:Lcom/android/phone/InCallScreen_DSDA;
    if-nez v6, :cond_4f

    .line 1096
    const-string v11, "inCallScreenDSDA is null; not yet created, just bail out"

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_16

    .line 1099
    :cond_4f
    invoke-virtual {v6, v1}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v4

    .line 1101
    .local v4, fragment:Lcom/android/phone/InCallFragment;
    if-eqz v4, :cond_16

    .line 1105
    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/InCallControlState;->getUserHold()Z

    move-result v9

    .line 1106
    .local v9, userHold:Z
    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/InCallControlState;->getUserMute()Z

    move-result v10

    .line 1109
    .local v10, userMute:Z
    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v11

    if-eqz v11, :cond_91

    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v11

    if-eqz v11, :cond_91

    const/4 v8, 0x1

    .line 1112
    .local v8, toCheckMute:Z
    :goto_72
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getPhoneType(I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_85

    .line 1113
    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;

    move-result-object v3

    .line 1114
    .local v3, connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_93

    .line 1115
    const/4 v8, 0x1

    .line 1121
    .end local v3           #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_85
    :goto_85
    if-eqz v8, :cond_95

    .line 1122
    if-nez v10, :cond_16

    .line 1126
    const/4 v11, 0x0

    invoke-static {v11, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 1127
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    goto :goto_16

    .line 1109
    .end local v8           #toCheckMute:Z
    :cond_91
    const/4 v8, 0x0

    goto :goto_72

    .line 1117
    .restart local v3       #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v8       #toCheckMute:Z
    :cond_93
    const/4 v8, 0x0

    goto :goto_85

    .line 1129
    .end local v3           #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_95
    if-nez v9, :cond_16

    .line 1132
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getPhoneType(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b9

    .line 1133
    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1135
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1136
    .local v0, altPhone:Lcom/android/internal/telephony/Phone;
    const/4 v11, 0x0

    invoke-static {v11, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 1137
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 1138
    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_16

    .line 1140
    .end local v0           #altPhone:Lcom/android/internal/telephony/Phone;
    :cond_b9
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getPhoneType(I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_16

    .line 1141
    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1142
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1143
    .restart local v0       #altPhone:Lcom/android/internal/telephony/Phone;
    const/4 v11, 0x0

    invoke-static {v11, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 1144
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 1145
    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_16
.end method

.method private static updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V
    .registers 3
    .parameter "app"

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_12

    .line 1515
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1522
    :goto_11
    return-void

    .line 1519
    :cond_12
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_11
.end method

.method public static useShortDtmfTones(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4252
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 4253
    if-ne v2, v1, :cond_9

    .line 4266
    :cond_8
    :goto_8
    return v0

    .line 4255
    :cond_9
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    .line 4256
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone_type"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4260
    if-nez v2, :cond_8

    move v0, v1

    .line 4261
    goto :goto_8

    .line 4265
    :cond_1a
    const/4 v1, 0x3

    if-eq v2, v1, :cond_8

    .line 4268
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
