.class synthetic Lcom/android/phone/PhoneApp$2;
.super Ljava/lang/Object;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$State:[I

.field static final synthetic $SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

.field static final synthetic $SwitchMap$com$android$phone$PhoneApp$WakeState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 2137
    invoke-static {}, Lcom/android/internal/telephony/Phone$State;->values()[Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    :try_start_9
    sget-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_82

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_80

    .line 1569
    :goto_1f
    invoke-static {}, Lcom/android/phone/PhoneApp$WakeState;->values()[Lcom/android/phone/PhoneApp$WakeState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    :try_start_28
    sget-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_7e

    :goto_33
    :try_start_33
    sget-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_7c

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_7a

    .line 1519
    :goto_49
    invoke-static {}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->values()[Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    :try_start_52
    sget-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->SHORT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5d} :catch_78

    :goto_5d
    :try_start_5d
    sget-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_68} :catch_76

    :goto_68
    :try_start_68
    sget-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_74

    :goto_73
    return-void

    :catch_74
    move-exception v0

    goto :goto_73

    :catch_76
    move-exception v0

    goto :goto_68

    :catch_78
    move-exception v0

    goto :goto_5d

    .line 1569
    :catch_7a
    move-exception v0

    goto :goto_49

    :catch_7c
    move-exception v0

    goto :goto_3e

    :catch_7e
    move-exception v0

    goto :goto_33

    .line 2137
    :catch_80
    move-exception v0

    goto :goto_1f

    :catch_82
    move-exception v0

    goto :goto_14
.end method
