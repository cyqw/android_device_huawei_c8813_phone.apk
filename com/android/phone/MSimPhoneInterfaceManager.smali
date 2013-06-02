.class public Lcom/android/phone/MSimPhoneInterfaceManager;
.super Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimPhoneInterfaceManager$1;,
        Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;,
        Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequestAsync;,
        Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;,
        Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;
    }
.end annotation


# static fields
.field private static mMmsDsSetSub:I

.field private static sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;


# instance fields
.field private isInitInstanceID:Z

.field private lastError:I

.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mEapInstanceID:I

.field mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 139
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMmsDsSetSub:I

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .registers 7
    .parameter "app"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 607
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;-><init>()V

    .line 143
    iput v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    .line 144
    iput-boolean v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->isInitInstanceID:Z

    .line 608
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    .line 609
    iput-object p2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 610
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 611
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager;Lcom/android/phone/MSimPhoneInterfaceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    .line 613
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->publish()V

    .line 617
    const-string v0, "true"

    const-string v1, "ro.config.hw_eapsim"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "true"

    const-string v1, "ro.config.hw_smartcardservice"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 620
    :cond_3f
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManagerAPDU;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimPhoneInterfaceManagerAPDU;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    .line 623
    :cond_44
    const-string v0, "MSimPhoneInterfaceManager"

    const-string v1, " Registering for UNSOL OEM HOOK Responses to deliver external apps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0x9

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/internal/telephony/PhoneEx;->setOnUnsolOemHookExtApp(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V

    .line 625
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->publish()V

    .line 627
    const-string v0, "true"

    const-string v1, "ro.config.hw_eapsim"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "true"

    const-string v1, "ro.config.hw_smartcardservice"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 629
    :cond_77
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManagerAPDU;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimPhoneInterfaceManagerAPDU;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    .line 632
    :cond_7c
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimPhoneInterfaceManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->answerRingingCallInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MSimPhoneInterfaceManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->silenceRingerInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MSimPhoneInterfaceManager;IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p7}, Lcom/android/phone/MSimPhoneInterfaceManager;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/MSimPhoneInterfaceManager;IIIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p8}, Lcom/android/phone/MSimPhoneInterfaceManager;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MSimPhoneInterfaceManager;ILandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->closeLogicalChannel(ILandroid/os/Message;)V

    return-void
.end method

.method private answerRingingCallInternal()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 764
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3b

    move v2, v3

    .line 766
    .local v2, hasRingingCall:Z
    :goto_f
    if-eqz v2, :cond_3a

    .line 768
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3d

    move v0, v3

    .line 769
    .local v0, hasActiveCall:Z
    :goto_1e
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3f

    move v1, v3

    .line 771
    .local v1, hasHoldingCall:Z
    :goto_2b
    if-eqz v0, :cond_41

    if-eqz v1, :cond_41

    .line 777
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 787
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_3a
    :goto_3a
    return-void

    .end local v2           #hasRingingCall:Z
    :cond_3b
    move v2, v4

    .line 764
    goto :goto_f

    .restart local v2       #hasRingingCall:Z
    :cond_3d
    move v0, v4

    .line 768
    goto :goto_1e

    .restart local v0       #hasActiveCall:Z
    :cond_3f
    move v1, v4

    .line 769
    goto :goto_2b

    .line 782
    .restart local v1       #hasHoldingCall:Z
    :cond_41
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3a
.end method

.method private closeLogicalChannel(ILandroid/os/Message;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1456
    :try_start_0
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-static {v0, v1}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "closeLogicalChannel"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Message;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1458
    if-eqz v0, :cond_3d

    .line 1459
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-static {v1, v2}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 1464
    :cond_3d
    :goto_3d
    return-void

    .line 1461
    :catch_3e
    move-exception v0

    .line 1462
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure reflect method closeLogicalChannel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "number"

    .prologue
    .line 1153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1154
    const/4 v1, 0x0

    .line 1159
    :goto_7
    return-object v1

    .line 1157
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private enforceCallPermission()V
    .registers 4

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    return-void
.end method

.method private enforceModifyPermission()V
    .registers 4

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    return-void
.end method

.method private enforceReadPermission()V
    .registers 4

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    return-void
.end method

.method private exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1425
    :try_start_0
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-static {v0, v1}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "exchangeAPDU"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-class v4, Landroid/os/Message;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1428
    if-eqz v0, :cond_83

    .line 1429
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-static {v1, v2}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object p7, v2, v3

    const/4 v3, 0x7

    aput-object p8, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_83} :catch_84

    .line 1435
    :cond_83
    :goto_83
    return-void

    .line 1432
    :catch_84
    move-exception v0

    .line 1433
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure reflect method exchangeAPDU: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83
.end method

.method private exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1408
    :try_start_0
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-static {v0, v1}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "exchangeSimIO"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-class v4, Landroid/os/Message;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1411
    if-eqz v0, :cond_75

    .line 1412
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-static {v1, v2}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    aput-object p7, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_75} :catch_76

    .line 1418
    :cond_75
    :goto_75
    return-void

    .line 1415
    :catch_76
    move-exception v0

    .line 1416
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure reflect method exchangeSimIO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 641
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/MSimPhoneInterfaceManager;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 596
    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    monitor-enter v1

    .line 597
    :try_start_3
    sget-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    if-nez v0, :cond_12

    .line 598
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    .line 602
    :goto_e
    sget-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 600
    :cond_12
    const-string v0, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 603
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private intiEapInstanceID()Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 1527
    iget-boolean v6, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->isInitInstanceID:Z

    if-eqz v6, :cond_6

    .line 1549
    :goto_5
    return v5

    .line 1531
    :cond_6
    const/4 v1, 0x0

    .line 1532
    .local v1, p:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1533
    .local v4, state:Ljava/lang/String;
    const-string v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1534
    .local v3, prop:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 1535
    .local v2, phoneCount:I
    if-eqz v3, :cond_1e

    .line 1536
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1540
    :cond_1e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    if-ge v0, v2, :cond_39

    .line 1541
    aget-object v4, v1, v0

    .line 1542
    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getActivePhoneType(I)I

    move-result v6

    if-ne v5, v6, :cond_36

    .line 1544
    iput v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    .line 1545
    iput-boolean v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->isInitInstanceID:Z

    goto :goto_5

    .line 1540
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1549
    :cond_39
    const/4 v5, 0x0

    goto :goto_5
.end method

.method private openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1439
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "openLogicalChannel"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Message;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1441
    if-eqz v0, :cond_39

    .line 1442
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 1447
    :cond_39
    :goto_39
    return-void

    .line 1444
    :catch_3a
    move-exception v0

    .line 1445
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure reflect method openLogicalChannel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private publish()V
    .registers 2

    .prologue
    .line 635
    const-string v0, "phone_msim"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 636
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 542
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_14

    .line 543
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 546
    :cond_14
    new-instance v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2, p3}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 547
    .local v1, request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 548
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 551
    monitor-enter v1

    .line 552
    :goto_23
    :try_start_23
    iget-object v2, v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_31

    if-nez v2, :cond_2d

    .line 554
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_31
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_23

    .line 555
    :catch_2b
    move-exception v2

    goto :goto_23

    .line 559
    :cond_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_31

    .line 560
    iget-object v2, v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 559
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method private sendRequestAsync(I)V
    .registers 3
    .parameter "command"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 577
    return-void
.end method

.method private showCallScreenInternal(ZZ)Z
    .registers 11
    .parameter "specifyInitialDialpadState"
    .parameter "initialDialpadState"

    .prologue
    const/4 v5, 0x0

    .line 687
    sget-boolean v6, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v6, :cond_6

    .line 717
    :cond_5
    :goto_5
    return v5

    .line 691
    :cond_6
    iget-object v6, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .line 692
    .local v4, sub:I
    invoke-virtual {p0, v4}, Lcom/android/phone/MSimPhoneInterfaceManager;->isIdle(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 696
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 699
    .local v0, callingId:J
    if-eqz p1, :cond_2c

    .line 700
    :try_start_1c
    invoke-static {p2}, Lcom/android/phone/PhoneApp;->createInCallIntent(Z)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_4f

    move-result-object v3

    .line 705
    .local v3, intent:Landroid/content/Intent;
    :goto_20
    :try_start_20
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_4f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_20 .. :try_end_27} :catch_35

    .line 715
    :goto_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 717
    const/4 v5, 0x1

    goto :goto_5

    .line 702
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2c
    :try_start_2c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v3

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_20

    .line 706
    :catch_35
    move-exception v2

    .line 711
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "MSimPhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showCallScreenInternal: transition to InCallScreen failed; intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_4f

    goto :goto_27

    .line 715
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_4f
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private silenceRingerInternal()V
    .registers 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 808
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 810
    :cond_1b
    return-void
.end method


# virtual methods
.method public answerRingingCall(I)V
    .registers 3
    .parameter "subscription"

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 746
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequestAsync(I)V

    .line 747
    return-void
.end method

.method public broadcastUnsolOemHookIntent([B)V
    .registers 4
    .parameter "payload"

    .prologue
    .line 564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "payload"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 566
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 567
    return-void
.end method

.method public call(Ljava/lang/String;I)V
    .registers 7
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceCallPermission()V

    .line 674
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 683
    :goto_9
    return-void

    .line 679
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 680
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "subscription"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 682
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method public cancelMissedCallsNotification(I)V
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 1024
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/MSimNotificationMgr;->cancelMissedCallNotification()V

    .line 1025
    return-void
.end method

.method public closeIccLogicalChannel(I)Z
    .registers 6
    .parameter "channel"

    .prologue
    .line 1511
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->intiEapInstanceID()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1512
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No available SIM of authentication!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1514
    :cond_e
    const/16 v1, 0x14

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1516
    .local v0, err:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_24

    .line 1517
    const/4 v1, 0x1

    .line 1518
    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public dial(Ljava/lang/String;I)V
    .registers 8
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 653
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, url:Ljava/lang/String;
    if-nez v2, :cond_7

    .line 666
    :cond_6
    :goto_6
    return-void

    .line 659
    :cond_7
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 660
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_6

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_6

    .line 661
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 662
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 663
    const-string v3, "subscription"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public disableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 999
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .registers 4

    .prologue
    .line 1004
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 1005
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1007
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1008
    const/4 v1, 0x1

    return v1
.end method

.method public enableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 992
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 982
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 983
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 985
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 986
    return v3
.end method

.method public endCall(I)Z
    .registers 5
    .parameter "subscription"

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceCallPermission()V

    .line 738
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 19
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1484
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->intiEapInstanceID()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1485
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No available SIM of authentication!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1487
    :cond_e
    new-instance v8, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;

    const/16 v10, 0x10

    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v10, v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;-><init>(Ljava/lang/Object;)V

    .line 1491
    .local v8, response:Lcom/huawei/internal/telephony/uicc/IccIoResultEx;
    iget v0, v8, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw1:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, v8, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw2:I

    add-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1493
    .local v9, s:Ljava/lang/String;
    iget-object v0, v8, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    if-eqz v0, :cond_57

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    invoke-static {v1}, Lcom/huawei/internal/telephony/uicc/IccUtilsEx;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1495
    :cond_57
    return-object v9
.end method

.method public getActivePhoneType(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1171
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1102
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_c

    .line 1113
    :goto_b
    return-object v4

    .line 1104
    :catch_c
    move-exception v0

    .line 1108
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public getCallState(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1210
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1223
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation(I)Landroid/os/Bundle;
    .registers 8
    .parameter "subscription"

    .prologue
    const/4 v5, 0x0

    .line 1047
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_1c

    .line 1056
    :goto_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1057
    .local v0, data:Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1058
    return-object v0

    .line 1049
    .end local v0           #data:Landroid/os/Bundle;
    :catch_1c
    move-exception v1

    .line 1053
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public getDataActivity()I
    .registers 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .registers 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v0

    return v0
.end method

.method public getDefaultSubscription()I
    .registers 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public getIccPin1RetryCount(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1117
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/internal/telephony/IccCardEx;->getIccPin1RetryCount(Lcom/android/internal/telephony/IccCard;)I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 1522
    iget v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I

    return v0
.end method

.method public getLteOnCdmaMode(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1385
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMmsAutoSetDataSubscription()I
    .registers 2

    .prologue
    .line 1360
    sget v0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMmsDsSetSub:I

    return v0
.end method

.method public getNetworkType(I)I
    .registers 4
    .parameter "subscription"

    .prologue
    .line 1269
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 1270
    .local v0, radiotech:I
    packed-switch v0, :pswitch_data_34

    .line 1301
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 1272
    :pswitch_11
    const/4 v1, 0x1

    goto :goto_10

    .line 1274
    :pswitch_13
    const/4 v1, 0x2

    goto :goto_10

    .line 1276
    :pswitch_15
    const/4 v1, 0x3

    goto :goto_10

    .line 1278
    :pswitch_17
    const/16 v1, 0x8

    goto :goto_10

    .line 1280
    :pswitch_1a
    const/16 v1, 0x9

    goto :goto_10

    .line 1282
    :pswitch_1d
    const/16 v1, 0xa

    goto :goto_10

    .line 1285
    :pswitch_20
    const/4 v1, 0x4

    goto :goto_10

    .line 1287
    :pswitch_22
    const/4 v1, 0x7

    goto :goto_10

    .line 1289
    :pswitch_24
    const/4 v1, 0x5

    goto :goto_10

    .line 1291
    :pswitch_26
    const/4 v1, 0x6

    goto :goto_10

    .line 1293
    :pswitch_28
    const/16 v1, 0xc

    goto :goto_10

    .line 1295
    :pswitch_2b
    const/16 v1, 0xe

    goto :goto_10

    .line 1297
    :pswitch_2e
    const/16 v1, 0xd

    goto :goto_10

    .line 1299
    :pswitch_31
    const/16 v1, 0xf

    goto :goto_10

    .line 1270
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_20
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_26
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
    .end packed-switch
.end method

.method public getPreferredDataSubscription()I
    .registers 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneApp;->getDataSubscription()I

    move-result v0

    return v0
.end method

.method public getPreferredVoiceSubscription()I
    .registers 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1255
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .registers 5
    .parameter "dialString"
    .parameter "subscription"

    .prologue
    .line 1018
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 1019
    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1316
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .registers 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isIdle(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOffhook(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isRadioOn(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 965
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isRinging(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSimPinEnabled(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceReadPermission()V

    .line 826
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimPhoneApp;->isSimPinEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSimPukLocked(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceReadPermission()V

    .line 831
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimPhoneApp;->isSimPukLocked(I)Z

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .registers 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .registers 5
    .parameter "AID"

    .prologue
    .line 1503
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->intiEapInstanceID()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1504
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No available SIM of authentication!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1506
    :cond_e
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1507
    .local v0, channel:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public setMmsAutoSetDataSubscription(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1367
    sput p1, Lcom/android/phone/MSimPhoneInterfaceManager;->mMmsDsSetSub:I

    .line 1368
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferredDataSubscription(I)Z
    .registers 5
    .parameter "subscription"

    .prologue
    .line 1352
    const/16 v0, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setRadio(ZI)Z
    .registers 6
    .parameter "turnOn"
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    .line 974
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 975
    invoke-direct {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1a

    move v0, v1

    :goto_14
    if-eq v0, p1, :cond_19

    .line 976
    invoke-virtual {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->toggleRadioOnOff(I)V

    .line 978
    :cond_19
    return v1

    .line 975
    :cond_1a
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public showCallScreen()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 722
    invoke-direct {p0, v0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .registers 3
    .parameter "showDialpad"

    .prologue
    .line 729
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .registers 2

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 796
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequestAsync(I)V

    .line 797
    return-void
.end method

.method public supplyPin(Ljava/lang/String;I)Z
    .registers 4
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 835
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->supplyPinReportResult(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supplyPinReportResult(Ljava/lang/String;I)I
    .registers 5
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 841
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 842
    .local v0, checkSimPin:Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->start()V

    .line 843
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .parameter "puk"
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 847
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/MSimPhoneInterfaceManager;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .parameter "puk"
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 853
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p3}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 854
    .local v0, checkSimPuk:Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->start()V

    .line 855
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public toggleRadioOnOff(I)V
    .registers 4
    .parameter "subscription"

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 970
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->isRadioOn(I)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_e
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 971
    return-void

    .line 970
    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1452
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/MSimPhoneInterfaceManager;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1499
    invoke-virtual/range {p0 .. p7}, Lcom/android/phone/MSimPhoneInterfaceManager;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .registers 19
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"

    .prologue
    .line 1468
    new-instance v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;

    const/16 v11, 0x16

    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;

    const/4 v3, -0x1

    move v1, p1

    move v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v11, v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;-><init>(Ljava/lang/Object;)V

    .line 1471
    .local v9, response:Lcom/huawei/internal/telephony/uicc/IccIoResultEx;
    const/4 v10, 0x0

    .local v10, result:[B
    const/4 v8, 0x2

    .line 1472
    .local v8, length:I
    iget-object v0, v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    if-eqz v0, :cond_41

    .line 1473
    iget-object v0, v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    array-length v0, v0

    add-int/lit8 v8, v0, 0x2

    .line 1474
    new-array v10, v8, [B

    .line 1475
    iget-object v0, v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    array-length v3, v3

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1477
    :goto_32
    add-int/lit8 v0, v8, -0x1

    iget v1, v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw2:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 1478
    add-int/lit8 v0, v8, -0x2

    iget v1, v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw1:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 1479
    return-object v10

    .line 1476
    :cond_41
    new-array v10, v8, [B

    goto :goto_32
.end method

.method public updateServiceLocation(I)V
    .registers 3
    .parameter "subscription"

    .prologue
    .line 961
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 962
    return-void
.end method
