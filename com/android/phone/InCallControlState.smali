.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canEndCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canSwap:Z

.field public canVoiceRecord:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 3
    .parameter "cm"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    .line 111
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 112
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 510
    const-string v0, "InCallControlState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void
.end method

.method private okToVoiceRecord(Lcom/android/internal/telephony/CallManager;)Z
    .registers 8
    .parameter "cm"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 450
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 451
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 452
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_1e

    move v2, v3

    .line 453
    .local v2, hasActiveFgCall:Z
    :goto_f
    if-eqz v2, :cond_20

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-nez v5, :cond_20

    .line 457
    .local v3, okToRecord:Z
    :goto_1d
    return v3

    .end local v2           #hasActiveFgCall:Z
    .end local v3           #okToRecord:Z
    :cond_1e
    move v2, v4

    .line 452
    goto :goto_f

    .restart local v2       #hasActiveFgCall:Z
    :cond_20
    move v3, v4

    .line 453
    goto :goto_1d
.end method

.method private okToVoiceRecord(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z
    .registers 11
    .parameter "cm"
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 470
    invoke-static {p2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v6

    invoke-static {p1, v6}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 471
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 473
    .local v2, fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v6

    invoke-static {p2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v7

    if-eq v6, v7, :cond_19

    .line 483
    :goto_18
    return v5

    .line 477
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 478
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v6, :cond_36

    move v3, v4

    .line 479
    .local v3, hasActiveFgCall:Z
    :goto_22
    if-eqz v3, :cond_38

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v6

    if-nez v6, :cond_38

    invoke-static {p2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v6

    invoke-static {p1, v6}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v6

    if-nez v6, :cond_38

    .local v4, okToRecord:Z
    :goto_34
    move v5, v4

    .line 483
    goto :goto_18

    .end local v3           #hasActiveFgCall:Z
    .end local v4           #okToRecord:Z
    :cond_36
    move v3, v5

    .line 478
    goto :goto_22

    .restart local v3       #hasActiveFgCall:Z
    :cond_38
    move v4, v5

    .line 479
    goto :goto_34
.end method


# virtual methods
.method protected getMute()Z
    .registers 2

    .prologue
    .line 536
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

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
    .line 541
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method protected getUserHold()Z
    .registers 2

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method protected getUserMute()Z
    .registers 2

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method protected isBluetoothAudioConnectedOrPending()Z
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    return v0
.end method

.method protected isBluetoothAvailable()Z
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    return v0
.end method

.method isDialerOpened()Z
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    return v0
.end method

.method protected isManageConferenceMode()Z
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v0

    return v0
.end method

.method protected okToShowDialpad()Z
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v0

    return v0
.end method

.method public setInCallInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 116
    return-void
.end method

.method protected setUserHold(Z)V
    .registers 2
    .parameter "userHold"

    .prologue
    .line 555
    return-void
.end method

.method protected setUserMute(Z)V
    .registers 2
    .parameter "userMute"

    .prologue
    .line 558
    return-void
.end method

.method public update()V
    .registers 18

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v13

    .line 125
    .local v13, state:Lcom/android/internal/telephony/Phone$State;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 126
    .local v4, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 127
    .local v5, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v14, :cond_12c

    const/4 v6, 0x1

    .line 128
    .local v6, hasActiveForegroundCall:Z
    :goto_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v7

    .line 131
    .local v7, hasHoldingCall:Z
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_132

    .line 137
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 138
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v14, :cond_12f

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isManageConferenceMode()Z

    move-result v14

    if-nez v14, :cond_12f

    const/4 v14, 0x1

    :goto_40
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 149
    :goto_44
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v14

    if-nez v14, :cond_6e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v14

    if-nez v14, :cond_6e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v14

    if-eqz v14, :cond_13e

    :cond_6e
    const/4 v14, 0x1

    :goto_6f
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isBluetoothAvailable()Z

    move-result v14

    if-eqz v14, :cond_141

    .line 167
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isBluetoothAudioConnectedOrPending()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 176
    :goto_9e
    sget-object v14, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v13, v14, :cond_14d

    const/4 v14, 0x1

    :goto_a3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->getUiScreen()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 185
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 186
    .local v2, c:Lcom/android/internal/telephony/Connection;
    const/4 v9, 0x0

    .line 187
    .local v9, isEmergencyCall:Z
    if-eqz v2, :cond_ca

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    .line 190
    :cond_ca
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    .line 191
    .local v8, isECM:Z
    if-nez v9, :cond_d6

    if-eqz v8, :cond_150

    .line 192
    :cond_d6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 193
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 206
    :goto_e0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->okToShowDialpad()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isDialerOpened()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 221
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14}, Lcom/huawei/internal/telephony/CallManagerEx;->getPhoneInCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;
    :try_end_f7
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_f0 .. :try_end_f7} :catch_15d

    move-result-object v12

    .line 226
    .local v12, phoneInCall:Lcom/android/internal/telephony/Phone;
    :goto_f8
    invoke-static {v12}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_170

    .line 229
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 233
    if-eqz v7, :cond_16a

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v14, :cond_16a

    const/4 v14, 0x1

    :goto_10a
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 236
    if-eqz v6, :cond_16c

    if-nez v7, :cond_16c

    const/4 v10, 0x1

    .line 237
    .local v10, okToHold:Z
    :goto_113
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 238
    .local v11, okToUnhold:Z
    if-nez v10, :cond_11b

    if-eqz v11, :cond_16e

    :cond_11b
    const/4 v14, 0x1

    :goto_11c
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 260
    .end local v10           #okToHold:Z
    .end local v11           #okToUnhold:Z
    :cond_120
    :goto_120
    sget-boolean v14, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    if-eqz v14, :cond_12b

    .line 263
    if-eqz v9, :cond_1ab

    .line 264
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    .line 272
    :cond_12b
    :goto_12b
    return-void

    .line 127
    .end local v2           #c:Lcom/android/internal/telephony/Connection;
    .end local v6           #hasActiveForegroundCall:Z
    .end local v7           #hasHoldingCall:Z
    .end local v8           #isECM:Z
    .end local v9           #isEmergencyCall:Z
    .end local v12           #phoneInCall:Lcom/android/internal/telephony/Phone;
    :cond_12c
    const/4 v6, 0x0

    goto/16 :goto_19

    .line 138
    .restart local v6       #hasActiveForegroundCall:Z
    .restart local v7       #hasHoldingCall:Z
    :cond_12f
    const/4 v14, 0x0

    goto/16 :goto_40

    .line 144
    :cond_132
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 145
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_44

    .line 157
    :cond_13e
    const/4 v14, 0x0

    goto/16 :goto_6f

    .line 170
    :cond_141
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 171
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_9e

    .line 176
    :cond_14d
    const/4 v14, 0x0

    goto/16 :goto_a3

    .line 195
    .restart local v2       #c:Lcom/android/internal/telephony/Connection;
    .restart local v8       #isECM:Z
    .restart local v9       #isEmergencyCall:Z
    :cond_150
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->getMute()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto :goto_e0

    .line 222
    :catch_15d
    move-exception v3

    .line 223
    .local v3, e:Lcom/huawei/android/util/NoExtAPIException;
    const-string v14, "update->NoExtAPIException!"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .restart local v12       #phoneInCall:Lcom/android/internal/telephony/Phone;
    goto :goto_f8

    .line 233
    .end local v3           #e:Lcom/huawei/android/util/NoExtAPIException;
    :cond_16a
    const/4 v14, 0x0

    goto :goto_10a

    .line 236
    :cond_16c
    const/4 v10, 0x0

    goto :goto_113

    .line 238
    .restart local v10       #okToHold:Z
    .restart local v11       #okToUnhold:Z
    :cond_16e
    const/4 v14, 0x0

    goto :goto_11c

    .line 239
    .end local v10           #okToHold:Z
    .end local v11           #okToUnhold:Z
    :cond_170
    if-eqz v7, :cond_19a

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v14, :cond_19a

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 245
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_120

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_120

    .line 247
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 248
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 249
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_120

    .line 253
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_19a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 254
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 255
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto/16 :goto_120

    .line 266
    :cond_1ab
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/InCallControlState;->okToVoiceRecord(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    .line 267
    const-string v14, "InCallControlState"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "update()->canVoiceRecord = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12b
.end method

.method public update(I)V
    .registers 19
    .parameter "subscription"

    .prologue
    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v13

    .line 287
    .local v13, state:Lcom/android/internal/telephony/Phone$State;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 288
    .local v12, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 289
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 290
    .local v4, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v14, :cond_125

    const/4 v5, 0x1

    .line 291
    .local v5, hasActiveForegroundCall:Z
    :goto_1f
    const/4 v6, 0x0

    .line 293
    .local v6, hasHoldingCall:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v14

    if-eqz v14, :cond_2d

    .line 294
    const/4 v6, 0x1

    .line 298
    :cond_2d
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_12b

    .line 302
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 303
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v14, :cond_128

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isManageConferenceMode()Z

    move-result v14

    if-nez v14, :cond_128

    const/4 v14, 0x1

    :goto_4c
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 312
    :goto_50
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14, v12}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 319
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    .line 322
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14, v12}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14, v12}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isBluetoothAvailable()Z

    move-result v14

    if-eqz v14, :cond_137

    .line 327
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isBluetoothAudioConnectedOrPending()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 338
    :goto_8c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v14

    move/from16 v0, p1

    if-eq v0, v14, :cond_143

    .line 339
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 345
    :goto_9d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->getUiScreen()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 353
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 354
    .local v2, c:Lcom/android/internal/telephony/Connection;
    const/4 v8, 0x0

    .line 355
    .local v8, isEmergencyCall:Z
    if-eqz v2, :cond_bc

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    .line 358
    :cond_bc
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    .line 361
    .local v7, isECM:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v14

    move/from16 v0, p1

    if-eq v0, v14, :cond_150

    .line 362
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 377
    :goto_d1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v14

    move/from16 v0, p1

    if-eq v0, v14, :cond_16e

    .line 378
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 382
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 394
    :goto_e7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 395
    .local v11, p:Lcom/android/internal/telephony/Phone;
    invoke-static {v11}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_186

    .line 398
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 402
    if-eqz v6, :cond_180

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v14, :cond_180

    const/4 v14, 0x1

    :goto_103
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 405
    if-eqz v5, :cond_182

    if-nez v6, :cond_182

    const/4 v9, 0x1

    .line 406
    .local v9, okToHold:Z
    :goto_10c
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 407
    .local v10, okToUnhold:Z
    if-nez v9, :cond_114

    if-eqz v10, :cond_184

    :cond_114
    const/4 v14, 0x1

    :goto_115
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 430
    .end local v9           #okToHold:Z
    .end local v10           #okToUnhold:Z
    :cond_119
    :goto_119
    sget-boolean v14, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    if-eqz v14, :cond_124

    .line 431
    if-eqz v8, :cond_1c4

    .line 432
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    .line 440
    :cond_124
    :goto_124
    return-void

    .line 290
    .end local v2           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #hasActiveForegroundCall:Z
    .end local v6           #hasHoldingCall:Z
    .end local v7           #isECM:Z
    .end local v8           #isEmergencyCall:Z
    .end local v11           #p:Lcom/android/internal/telephony/Phone;
    :cond_125
    const/4 v5, 0x0

    goto/16 :goto_1f

    .line 303
    .restart local v5       #hasActiveForegroundCall:Z
    .restart local v6       #hasHoldingCall:Z
    :cond_128
    const/4 v14, 0x0

    goto/16 :goto_4c

    .line 307
    :cond_12b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 308
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_50

    .line 330
    :cond_137
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 331
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_8c

    .line 342
    :cond_143
    sget-object v14, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v13, v14, :cond_14e

    const/4 v14, 0x1

    :goto_148
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    goto/16 :goto_9d

    :cond_14e
    const/4 v14, 0x0

    goto :goto_148

    .line 364
    .restart local v2       #c:Lcom/android/internal/telephony/Connection;
    .restart local v7       #isECM:Z
    .restart local v8       #isEmergencyCall:Z
    :cond_150
    if-nez v8, :cond_154

    if-eqz v7, :cond_160

    .line 365
    :cond_154
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 366
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto/16 :goto_d1

    .line 368
    :cond_160
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->getMute()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto/16 :goto_d1

    .line 384
    :cond_16e
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->okToShowDialpad()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isDialerOpened()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    goto/16 :goto_e7

    .line 402
    .restart local v11       #p:Lcom/android/internal/telephony/Phone;
    :cond_180
    const/4 v14, 0x0

    goto :goto_103

    .line 405
    :cond_182
    const/4 v9, 0x0

    goto :goto_10c

    .line 407
    .restart local v9       #okToHold:Z
    .restart local v10       #okToUnhold:Z
    :cond_184
    const/4 v14, 0x0

    goto :goto_115

    .line 408
    .end local v9           #okToHold:Z
    .end local v10           #okToUnhold:Z
    :cond_186
    if-eqz v6, :cond_1b3

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v14, :cond_1b3

    .line 414
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 416
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_119

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_119

    .line 418
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 419
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 420
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto/16 :goto_119

    .line 424
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_1b3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 425
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 426
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto/16 :goto_119

    .line 434
    :cond_1c4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/phone/InCallControlState;->okToVoiceRecord(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    .line 435
    const-string v14, "InCallControlState"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "update()->canVoiceRecord = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_124
.end method
