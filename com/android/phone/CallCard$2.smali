.class synthetic Lcom/android/phone/CallCard$2;
.super Ljava/lang/Object;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Call$State:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 2244
    invoke-static {}, Lcom/android/internal/telephony/Connection$DisconnectCause;->values()[Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    :try_start_9
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_170

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_16d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->TIMED_OUT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_16a

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_167

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_164

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_161

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_15e

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_15b

    :goto_62
    :try_start_62
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_158

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_155

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_152

    :goto_86
    :try_start_86
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_14f

    :goto_92
    :try_start_92
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_14c

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_149

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_146

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_143

    .line 788
    :goto_c2
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    :try_start_cb
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d6} :catch_141

    :goto_d6
    :try_start_d6
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_e1} :catch_13f

    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ec} :catch_13d

    :goto_ec
    :try_start_ec
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_f7} :catch_13b

    :goto_f7
    :try_start_f7
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_102
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_102} :catch_139

    :goto_102
    :try_start_102
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_102 .. :try_end_10d} :catch_137

    :goto_10d
    :try_start_10d
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_118} :catch_135

    :goto_118
    :try_start_118
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_124
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_124} :catch_133

    :goto_124
    :try_start_124
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_130
    .catch Ljava/lang/NoSuchFieldError; {:try_start_124 .. :try_end_130} :catch_131

    :goto_130
    return-void

    :catch_131
    move-exception v0

    goto :goto_130

    :catch_133
    move-exception v0

    goto :goto_124

    :catch_135
    move-exception v0

    goto :goto_118

    :catch_137
    move-exception v0

    goto :goto_10d

    :catch_139
    move-exception v0

    goto :goto_102

    :catch_13b
    move-exception v0

    goto :goto_f7

    :catch_13d
    move-exception v0

    goto :goto_ec

    :catch_13f
    move-exception v0

    goto :goto_e1

    :catch_141
    move-exception v0

    goto :goto_d6

    .line 2244
    :catch_143
    move-exception v0

    goto/16 :goto_c2

    :catch_146
    move-exception v0

    goto/16 :goto_b6

    :catch_149
    move-exception v0

    goto/16 :goto_aa

    :catch_14c
    move-exception v0

    goto/16 :goto_9e

    :catch_14f
    move-exception v0

    goto/16 :goto_92

    :catch_152
    move-exception v0

    goto/16 :goto_86

    :catch_155
    move-exception v0

    goto/16 :goto_7a

    :catch_158
    move-exception v0

    goto/16 :goto_6e

    :catch_15b
    move-exception v0

    goto/16 :goto_62

    :catch_15e
    move-exception v0

    goto/16 :goto_56

    :catch_161
    move-exception v0

    goto/16 :goto_4b

    :catch_164
    move-exception v0

    goto/16 :goto_40

    :catch_167
    move-exception v0

    goto/16 :goto_35

    :catch_16a
    move-exception v0

    goto/16 :goto_2a

    :catch_16d
    move-exception v0

    goto/16 :goto_1f

    :catch_170
    move-exception v0

    goto/16 :goto_14
.end method
