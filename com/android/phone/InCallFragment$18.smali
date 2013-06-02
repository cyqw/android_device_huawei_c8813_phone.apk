.class synthetic Lcom/android/phone/InCallFragment$18;
.super Ljava/lang/Object;
.source "InCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

.field static final synthetic $SwitchMap$com$android$phone$Constants$CallStatusCode:[I

.field static final synthetic $SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

.field static final synthetic $SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

.field static final synthetic $SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 5079
    invoke-static {}, Lcom/android/phone/InCallScreen$InCallAudioMode;->values()[Lcom/android/phone/InCallScreen$InCallAudioMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    :try_start_9
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_20a

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_207

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_204

    .line 4614
    :goto_2a
    invoke-static {}, Lcom/android/internal/telephony/Connection$PostDialState;->values()[Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    :try_start_33
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_201

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_1fe

    :goto_49
    :try_start_49
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_1fb

    :goto_54
    :try_start_54
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_1f8

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_1f5

    .line 3838
    :goto_6a
    invoke-static {}, Lcom/android/internal/telephony/Phone$SuppService;->values()[Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    :try_start_73
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_1f2

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_1ef

    :goto_89
    :try_start_89
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_1ec

    :goto_94
    :try_start_94
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_1e9

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_1e6

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b5} :catch_1e3

    :goto_b5
    :try_start_b5
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_c0} :catch_1e0

    .line 3192
    :goto_c0
    invoke-static {}, Lcom/android/phone/Constants$CallStatusCode;->values()[Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    :try_start_c9
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d4} :catch_1dd

    :goto_d4
    :try_start_d4
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_df} :catch_1da

    :goto_df
    :try_start_df
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_ea} :catch_1d7

    :goto_ea
    :try_start_ea
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_f5} :catch_1d4

    :goto_f5
    :try_start_f5
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_100} :catch_1d1

    :goto_100
    :try_start_100
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100 .. :try_end_10b} :catch_1ce

    :goto_10b
    :try_start_10b
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_116} :catch_1cb

    :goto_116
    :try_start_116
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_1c8

    :goto_122
    :try_start_122
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_LOST:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_1c5

    :goto_12e
    :try_start_12e
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_1c2

    .line 1851
    :goto_13a
    invoke-static {}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->values()[Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    :try_start_143
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_143 .. :try_end_14e} :catch_1c0

    :goto_14e
    :try_start_14e
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_159
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14e .. :try_end_159} :catch_1be

    :goto_159
    :try_start_159
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_164
    .catch Ljava/lang/NoSuchFieldError; {:try_start_159 .. :try_end_164} :catch_1bc

    .line 1619
    :goto_164
    invoke-static {}, Lcom/android/phone/InCallUiState$InCallScreenMode;->values()[Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    :try_start_16d
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_178} :catch_1ba

    :goto_178
    :try_start_178
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_178 .. :try_end_183} :catch_1b8

    :goto_183
    :try_start_183
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_18e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_183 .. :try_end_18e} :catch_1b6

    :goto_18e
    :try_start_18e
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_199
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18e .. :try_end_199} :catch_1b4

    :goto_199
    :try_start_199
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_199 .. :try_end_1a4} :catch_1b2

    :goto_1a4
    :try_start_1a4
    sget-object v0, Lcom/android/phone/InCallFragment$18;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1af} :catch_1b0

    :goto_1af
    return-void

    :catch_1b0
    move-exception v0

    goto :goto_1af

    :catch_1b2
    move-exception v0

    goto :goto_1a4

    :catch_1b4
    move-exception v0

    goto :goto_199

    :catch_1b6
    move-exception v0

    goto :goto_18e

    :catch_1b8
    move-exception v0

    goto :goto_183

    :catch_1ba
    move-exception v0

    goto :goto_178

    .line 1851
    :catch_1bc
    move-exception v0

    goto :goto_164

    :catch_1be
    move-exception v0

    goto :goto_159

    :catch_1c0
    move-exception v0

    goto :goto_14e

    .line 3192
    :catch_1c2
    move-exception v0

    goto/16 :goto_13a

    :catch_1c5
    move-exception v0

    goto/16 :goto_12e

    :catch_1c8
    move-exception v0

    goto/16 :goto_122

    :catch_1cb
    move-exception v0

    goto/16 :goto_116

    :catch_1ce
    move-exception v0

    goto/16 :goto_10b

    :catch_1d1
    move-exception v0

    goto/16 :goto_100

    :catch_1d4
    move-exception v0

    goto/16 :goto_f5

    :catch_1d7
    move-exception v0

    goto/16 :goto_ea

    :catch_1da
    move-exception v0

    goto/16 :goto_df

    :catch_1dd
    move-exception v0

    goto/16 :goto_d4

    .line 3838
    :catch_1e0
    move-exception v0

    goto/16 :goto_c0

    :catch_1e3
    move-exception v0

    goto/16 :goto_b5

    :catch_1e6
    move-exception v0

    goto/16 :goto_aa

    :catch_1e9
    move-exception v0

    goto/16 :goto_9f

    :catch_1ec
    move-exception v0

    goto/16 :goto_94

    :catch_1ef
    move-exception v0

    goto/16 :goto_89

    :catch_1f2
    move-exception v0

    goto/16 :goto_7e

    .line 4614
    :catch_1f5
    move-exception v0

    goto/16 :goto_6a

    :catch_1f8
    move-exception v0

    goto/16 :goto_5f

    :catch_1fb
    move-exception v0

    goto/16 :goto_54

    :catch_1fe
    move-exception v0

    goto/16 :goto_49

    :catch_201
    move-exception v0

    goto/16 :goto_3e

    .line 5079
    :catch_204
    move-exception v0

    goto/16 :goto_2a

    :catch_207
    move-exception v0

    goto/16 :goto_1f

    :catch_20a
    move-exception v0

    goto/16 :goto_14
.end method
