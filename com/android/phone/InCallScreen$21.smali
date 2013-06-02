.class synthetic Lcom/android/phone/InCallScreen$21;
.super Ljava/lang/Object;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

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
    .line 4410
    invoke-static {}, Lcom/android/phone/InCallUiState$InCallScreenMode;->values()[Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    :try_start_9
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_23c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_239

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_236

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_233

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_230

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_22d

    .line 4113
    :goto_4b
    invoke-static {}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->values()[Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    :try_start_54
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_22a

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_227

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_224

    .line 3751
    :goto_75
    invoke-static {}, Lcom/android/phone/Constants$CallStatusCode;->values()[Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    :try_start_7e
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_221

    :goto_89
    :try_start_89
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_21e

    :goto_94
    :try_start_94
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_21b

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_218

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b5} :catch_215

    :goto_b5
    :try_start_b5
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_c0} :catch_212

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cb} :catch_20f

    :goto_cb
    :try_start_cb
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d7} :catch_20c

    :goto_d7
    :try_start_d7
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_LOST:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e3} :catch_209

    :goto_e3
    :try_start_e3
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ef} :catch_206

    .line 3444
    :goto_ef
    invoke-static {}, Lcom/android/phone/InCallScreen$InCallAudioMode;->values()[Lcom/android/phone/InCallScreen$InCallAudioMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    :try_start_f8
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_103} :catch_203

    :goto_103
    :try_start_103
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_103 .. :try_end_10e} :catch_200

    :goto_10e
    :try_start_10e
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10e .. :try_end_119} :catch_1fd

    .line 2633
    :goto_119
    invoke-static {}, Lcom/android/internal/telephony/Connection$PostDialState;->values()[Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    :try_start_122
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12d} :catch_1fa

    :goto_12d
    :try_start_12d
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12d .. :try_end_138} :catch_1f7

    :goto_138
    :try_start_138
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_143
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_143} :catch_1f4

    :goto_143
    :try_start_143
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_14e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_143 .. :try_end_14e} :catch_1f1

    :goto_14e
    :try_start_14e
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_159
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14e .. :try_end_159} :catch_1ee

    .line 2489
    :goto_159
    invoke-static {}, Lcom/android/internal/telephony/Connection$DisconnectCause;->values()[Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    :try_start_162
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_162 .. :try_end_16d} :catch_1ec

    :goto_16d
    :try_start_16d
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_178} :catch_1ea

    :goto_178
    :try_start_178
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_178 .. :try_end_183} :catch_1e8

    .line 2024
    :goto_183
    invoke-static {}, Lcom/android/internal/telephony/Phone$SuppService;->values()[Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    :try_start_18c
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_197
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_197} :catch_1e6

    :goto_197
    :try_start_197
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_197 .. :try_end_1a2} :catch_1e4

    :goto_1a2
    :try_start_1a2
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a2 .. :try_end_1ad} :catch_1e2

    :goto_1ad
    :try_start_1ad
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ad .. :try_end_1b8} :catch_1e0

    :goto_1b8
    :try_start_1b8
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b8 .. :try_end_1c3} :catch_1de

    :goto_1c3
    :try_start_1c3
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c3 .. :try_end_1ce} :catch_1dc

    :goto_1ce
    :try_start_1ce
    sget-object v0, Lcom/android/phone/InCallScreen$21;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ce .. :try_end_1d9} :catch_1da

    :goto_1d9
    return-void

    :catch_1da
    move-exception v0

    goto :goto_1d9

    :catch_1dc
    move-exception v0

    goto :goto_1ce

    :catch_1de
    move-exception v0

    goto :goto_1c3

    :catch_1e0
    move-exception v0

    goto :goto_1b8

    :catch_1e2
    move-exception v0

    goto :goto_1ad

    :catch_1e4
    move-exception v0

    goto :goto_1a2

    :catch_1e6
    move-exception v0

    goto :goto_197

    .line 2489
    :catch_1e8
    move-exception v0

    goto :goto_183

    :catch_1ea
    move-exception v0

    goto :goto_178

    :catch_1ec
    move-exception v0

    goto :goto_16d

    .line 2633
    :catch_1ee
    move-exception v0

    goto/16 :goto_159

    :catch_1f1
    move-exception v0

    goto/16 :goto_14e

    :catch_1f4
    move-exception v0

    goto/16 :goto_143

    :catch_1f7
    move-exception v0

    goto/16 :goto_138

    :catch_1fa
    move-exception v0

    goto/16 :goto_12d

    .line 3444
    :catch_1fd
    move-exception v0

    goto/16 :goto_119

    :catch_200
    move-exception v0

    goto/16 :goto_10e

    :catch_203
    move-exception v0

    goto/16 :goto_103

    .line 3751
    :catch_206
    move-exception v0

    goto/16 :goto_ef

    :catch_209
    move-exception v0

    goto/16 :goto_e3

    :catch_20c
    move-exception v0

    goto/16 :goto_d7

    :catch_20f
    move-exception v0

    goto/16 :goto_cb

    :catch_212
    move-exception v0

    goto/16 :goto_c0

    :catch_215
    move-exception v0

    goto/16 :goto_b5

    :catch_218
    move-exception v0

    goto/16 :goto_aa

    :catch_21b
    move-exception v0

    goto/16 :goto_9f

    :catch_21e
    move-exception v0

    goto/16 :goto_94

    :catch_221
    move-exception v0

    goto/16 :goto_89

    .line 4113
    :catch_224
    move-exception v0

    goto/16 :goto_75

    :catch_227
    move-exception v0

    goto/16 :goto_6a

    :catch_22a
    move-exception v0

    goto/16 :goto_5f

    .line 4410
    :catch_22d
    move-exception v0

    goto/16 :goto_4b

    :catch_230
    move-exception v0

    goto/16 :goto_40

    :catch_233
    move-exception v0

    goto/16 :goto_35

    :catch_236
    move-exception v0

    goto/16 :goto_2a

    :catch_239
    move-exception v0

    goto/16 :goto_1f

    :catch_23c
    move-exception v0

    goto/16 :goto_14
.end method
