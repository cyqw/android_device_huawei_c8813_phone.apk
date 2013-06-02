.class public Lcom/android/phone/PhoneInterfaceManager;
.super Lcom/android/internal/telephony/ITelephony$Stub;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManager$UnlockSim;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;,
        Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/PhoneInterfaceManager;


# instance fields
.field private lastError:I

.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .registers 7
    .parameter "app"
    .parameter "phone"

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    .line 561
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 562
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 563
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    .line 566
    :try_start_16
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/internal/telephony/PhoneEx;->setOnUnsolOemHookExtApp(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_20
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_16 .. :try_end_20} :catch_49

    .line 571
    :goto_20
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->publish()V

    .line 574
    const-string v0, "true"

    const-string v1, "ro.config.hw_eapsim"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "true"

    const-string v1, "ro.config.hw_smartcardservice"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 577
    :cond_43
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerAPDU;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerAPDU;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    .line 580
    :cond_48
    return-void

    .line 567
    :catch_49
    move-exception v0

    goto :goto_20
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneInterfaceManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneInterfaceManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneInterfaceManager;IIIIILjava/lang/String;Landroid/os/Message;)V
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
    .line 93
    invoke-direct/range {p0 .. p7}, Lcom/android/phone/PhoneInterfaceManager;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/PhoneInterfaceManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager;->lastError:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneInterfaceManager;IIIIIILjava/lang/String;Landroid/os/Message;)V
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
    .line 93
    invoke-direct/range {p0 .. p8}, Lcom/android/phone/PhoneInterfaceManager;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneInterfaceManager;ILandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->closeLogicalChannel(ILandroid/os/Message;)V

    return-void
.end method

.method private answerRingingCallInternal()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 704
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3b

    move v2, v3

    .line 705
    .local v2, hasRingingCall:Z
    :goto_f
    if-eqz v2, :cond_3a

    .line 706
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3d

    move v0, v3

    .line 707
    .local v0, hasActiveCall:Z
    :goto_1e
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3f

    move v1, v3

    .line 708
    .local v1, hasHoldingCall:Z
    :goto_2b
    if-eqz v0, :cond_41

    if-eqz v1, :cond_41

    .line 714
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 724
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_3a
    :goto_3a
    return-void

    .end local v2           #hasRingingCall:Z
    :cond_3b
    move v2, v4

    .line 704
    goto :goto_f

    .restart local v2       #hasRingingCall:Z
    :cond_3d
    move v0, v4

    .line 706
    goto :goto_1e

    .restart local v0       #hasActiveCall:Z
    :cond_3f
    move v1, v4

    .line 707
    goto :goto_2b

    .line 719
    .restart local v1       #hasHoldingCall:Z
    :cond_41
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

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
    .line 1306
    :try_start_0
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccCard;

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

    .line 1308
    if-eqz v0, :cond_39

    .line 1309
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccCard;

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
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 1314
    :cond_39
    :goto_39
    return-void

    .line 1311
    :catch_3a
    move-exception v0

    .line 1312
    const-string v1, "PhoneInterfaceManager"

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

    goto :goto_39
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "number"

    .prologue
    .line 1094
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1095
    const/4 v1, 0x0

    .line 1100
    :goto_7
    return-object v1

    .line 1098
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private enforceCallPermission()V
    .registers 4

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    return-void
.end method

.method private enforceModifyPermission()V
    .registers 4

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    return-void
.end method

.method private enforceReadPermission()V
    .registers 4

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
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
    .line 1280
    :try_start_0
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccCard;

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

    .line 1283
    if-eqz v0, :cond_7f

    .line 1284
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccCard;

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
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7f} :catch_80

    .line 1290
    :cond_7f
    :goto_7f
    return-void

    .line 1287
    :catch_80
    move-exception v0

    .line 1288
    const-string v1, "PhoneInterfaceManager"

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

    goto :goto_7f
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
    .line 1263
    :try_start_0
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccCard;

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

    .line 1266
    if-eqz v0, :cond_71

    .line 1267
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccCard;

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
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_71} :catch_72

    .line 1273
    :cond_71
    :goto_71
    return-void

    .line 1270
    :catch_72
    move-exception v0

    .line 1271
    const-string v1, "PhoneInterfaceManager"

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

    goto :goto_71
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 548
    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    monitor-enter v1

    .line 549
    :try_start_3
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    if-nez v0, :cond_12

    .line 550
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/PhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    .line 554
    :goto_e
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 552
    :cond_12
    const-string v0, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 555
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1104
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void
.end method

.method private openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1294
    :try_start_0
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccCard;

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

    .line 1296
    if-eqz v0, :cond_35

    .line 1297
    invoke-static {}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;->getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 1302
    :cond_35
    :goto_35
    return-void

    .line 1299
    :catch_36
    move-exception v0

    .line 1300
    const-string v1, "PhoneInterfaceManager"

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

    goto :goto_35
.end method

.method private publish()V
    .registers 2

    .prologue
    .line 584
    const-string v0, "phone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 585
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 492
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_14

    .line 493
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_14
    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 497
    .local v1, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 498
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 501
    monitor-enter v1

    .line 502
    :goto_23
    :try_start_23
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_31

    if-nez v2, :cond_2d

    .line 504
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_31
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_23

    .line 505
    :catch_2b
    move-exception v2

    goto :goto_23

    .line 509
    :cond_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_31

    .line 510
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 509
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
    .line 528
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 529
    return-void
.end method

.method private sendRequestAsync(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 538
    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;

    invoke-direct {v1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    .local v1, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 540
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 541
    return-void
.end method

.method private showCallScreenInternal(ZZ)Z
    .registers 10
    .parameter "specifyInitialDialpadState"
    .parameter "initialDialpadState"

    .prologue
    const/4 v4, 0x0

    .line 629
    sget-boolean v5, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v5, :cond_6

    .line 658
    :cond_5
    :goto_5
    return v4

    .line 633
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isIdle()Z

    move-result v5

    if-nez v5, :cond_5

    .line 637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 640
    .local v0, callingId:J
    if-eqz p1, :cond_22

    .line 641
    :try_start_12
    invoke-static {p2}, Lcom/android/phone/PhoneApp;->createInCallIntent(Z)Landroid/content/Intent;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_41

    move-result-object v3

    .line 646
    .local v3, intent:Landroid/content/Intent;
    :goto_16
    :try_start_16
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_41
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_1d} :catch_27

    .line 656
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 658
    const/4 v4, 0x1

    goto :goto_5

    .line 643
    .end local v3           #intent:Landroid/content/Intent;
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v3

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_16

    .line 647
    :catch_27
    move-exception v2

    .line 652
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCallScreenInternal: transition to InCallScreen failed; intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_41

    goto :goto_1d

    .line 656
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_41
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private silenceRingerInternal()V
    .registers 3

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 745
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 747
    :cond_1b
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .registers 2

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 687
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 688
    return-void
.end method

.method public broadcastUnsolOemHookIntent([B)V
    .registers 4
    .parameter "payload"

    .prologue
    .line 514
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "payload"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 517
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method public call(Ljava/lang/String;)V
    .registers 6
    .parameter "number"

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 617
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 625
    :goto_9
    return-void

    .line 622
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 623
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 624
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method public cancelMissedCallsNotification()V
    .registers 2

    .prologue
    .line 962
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 963
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    .line 964
    return-void
.end method

.method public closeIccLogicalChannel(I)Z
    .registers 5
    .parameter "channel"

    .prologue
    .line 1379
    const/16 v1, 0x12

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1381
    .local v0, err:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_15

    .line 1382
    const/4 v1, 0x1

    .line 1383
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public dial(Ljava/lang/String;)V
    .registers 7
    .parameter "number"

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, url:Ljava/lang/String;
    if-nez v2, :cond_7

    .line 608
    :cond_6
    :goto_6
    return-void

    .line 602
    :cond_7
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 603
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_6

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_6

    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 605
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public disableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 917
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .registers 4

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 946
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 948
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 949
    const/4 v1, 0x1

    return v1
.end method

.method public disableLocationUpdates()V
    .registers 4

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1004
    return-void
.end method

.method public disableQos(I)I
    .registers 3
    .parameter "qosId"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, p1}, Lcom/huawei/internal/telephony/PhoneEx;->disableQos(Lcom/android/internal/telephony/Phone;I)I

    move-result v0

    return v0
.end method

.method public enableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 912
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 903
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 904
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 906
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 907
    return v3
.end method

.method public enableLocationUpdates()V
    .registers 4

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 998
    return-void
.end method

.method public enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I
    .registers 4
    .parameter "qosSpec"
    .parameter "type"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, p1, p2}, Lcom/huawei/internal/telephony/PhoneEx;->enableQos(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public endCall()Z
    .registers 3

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 679
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1344
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    new-instance v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;

    const/16 v11, 0xe

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;-><init>(Ljava/lang/Object;)V

    .line 1351
    .local v9, response:Lcom/huawei/internal/telephony/uicc/IccIoResultEx;
    iget v1, v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw1:I

    shl-int/lit8 v1, v1, 0x8

    iget v2, v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw2:I

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1352
    .local v10, s:Ljava/lang/String;
    iget-object v1, v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    if-eqz v1, :cond_a5

    .line 1354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    invoke-static {v2}, Lcom/huawei/internal/telephony/uicc/IccUtilsEx;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1356
    :cond_a5
    return-object v10
.end method

.method public getActivePhoneType()I
    .registers 2

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

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

    .line 1040
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_c

    .line 1054
    :goto_b
    return-object v4

    .line 1043
    :catch_c
    move-exception v0

    .line 1048
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public getCallState()I
    .registers 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .registers 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .registers 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 980
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_1a

    .line 989
    :goto_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 990
    .local v0, data:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 991
    return-object v0

    .line 982
    .end local v0           #data:Landroid/os/Bundle;
    :catch_1a
    move-exception v1

    .line 986
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public getDataActivity()I
    .registers 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .registers 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v0

    return v0
.end method

.method public getIccPin1RetryCount()I
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/internal/telephony/IccCardEx;->getIccPin1RetryCount(Lcom/android/internal/telephony/IccCard;)I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 1387
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager;->lastError:I

    return v0
.end method

.method public getLteOnCdmaMode()I
    .registers 2

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1009
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_17

    .line 1020
    :goto_b
    const/4 v1, 0x0

    .line 1023
    .local v1, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_e
    invoke-direct {p0, v3, v4}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_16} :catch_22

    .line 1029
    :goto_16
    return-object v1

    .line 1011
    .end local v1           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_17
    move-exception v2

    .line 1016
    .local v2, e:Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1025
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v1       #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_22
    move-exception v2

    .line 1026
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeighboringCellInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public getNetworkType()I
    .registers 2

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getQosStatus(I)I
    .registers 3
    .parameter "qosId"

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, p1}, Lcom/huawei/internal/telephony/PhoneEx;->getQosStatus(Lcom/android/internal/telephony/Phone;I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount()I
    .registers 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .registers 3
    .parameter "dialString"

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 958
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .registers 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .registers 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .registers 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isOffhook()Z
    .registers 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isRadioOn()Z
    .registers 3

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isRinging()Z
    .registers 3

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSimPinEnabled()Z
    .registers 2

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 763
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isSimPinEnabled()Z

    move-result v0

    return v0
.end method

.method public modifyQos(ILcom/android/internal/telephony/QosSpec;)I
    .registers 4
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, p1, p2}, Lcom/huawei/internal/telephony/PhoneEx;->modifyQos(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/QosSpec;)I

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .registers 2

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .registers 4
    .parameter "AID"

    .prologue
    .line 1372
    const/16 v1, 0x10

    invoke-direct {p0, v1, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1373
    .local v0, channel:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public resumeQos(I)I
    .registers 3
    .parameter "qosId"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, p1}, Lcom/huawei/internal/telephony/PhoneEx;->resumeQos(Lcom/android/internal/telephony/Phone;I)I

    move-result v0

    return v0
.end method

.method public sendOemRilRequestRaw([B[B)I
    .registers 12
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1112
    const/4 v5, 0x0

    .line 1116
    .local v5, returnValue:I
    const/4 v6, 0x7

    :try_start_2
    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    .line 1117
    .local v4, result:Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4f

    .line 1118
    const/4 v5, 0x0

    .line 1119
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4e

    .line 1120
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .line 1121
    .local v3, responseData:[B
    array-length v6, v3

    array-length v7, p2

    if-le v6, v7, :cond_47

    .line 1122
    const-string v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Buffer to copy response too small: Response length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes. Buffer Size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_47
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v6, p2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1127
    array-length v5, v3

    .line 1141
    .end local v3           #responseData:[B
    .end local v4           #result:Landroid/os/AsyncResult;
    :cond_4e
    :goto_4e
    return v5

    .line 1131
    .restart local v4       #result:Landroid/os/AsyncResult;
    :cond_4f
    iget-object v2, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 1132
    .local v2, ex:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5a} :catch_60

    move-result v5

    .line 1133
    if-lez v5, :cond_4e

    mul-int/lit8 v5, v5, -0x1

    goto :goto_4e

    .line 1135
    .end local v2           #ex:Lcom/android/internal/telephony/CommandException;
    .end local v4           #result:Landroid/os/AsyncResult;
    :catch_60
    move-exception v1

    .line 1136
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v6, "PhoneInterfaceManager"

    const-string v7, "sendOemRilRequestRaw: Runtime Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v5

    .line 1138
    if-lez v5, :cond_4e

    mul-int/lit8 v5, v5, -0x1

    goto :goto_4e
.end method

.method public sendOemRilRequestRawAsync([BLcom/android/internal/telephony/IOemHookCallback;)V
    .registers 6
    .parameter "request"
    .parameter "oemHookCb"

    .prologue
    .line 1147
    const/16 v1, 0xc

    :try_start_2
    invoke-direct {p0, v1, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1153
    :goto_5
    return-void

    .line 1149
    :catch_6
    move-exception v0

    .line 1150
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "sendOemRilRequestRawAsync: Runtime Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setDataReadinessChecks(ZZZ)V
    .registers 6
    .parameter "checkConnectivity"
    .parameter "checkSubscription"
    .parameter "tryDataCalls"

    .prologue
    .line 1234
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1237
    :try_start_3
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, p1, p2, p3}, Lcom/huawei/internal/telephony/PhoneEx;->setDataReadinessChecks(Lcom/android/internal/telephony/Phone;ZZZ)V
    :try_end_8
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_3 .. :try_end_8} :catch_9

    .line 1242
    :goto_8
    return-void

    .line 1238
    :catch_9
    move-exception v0

    .line 1239
    .local v0, e:Lcom/huawei/android/util/NoExtAPIException;
    const-string v1, "setDataReadinessChecks->NoExtAPIException!"

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .registers 7
    .parameter "phone"

    .prologue
    .line 1247
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_b

    .line 1248
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-static {v1, v2}, Lcom/huawei/internal/telephony/PhoneEx;->unSetOnUnsolOemHookExtApp(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    .line 1250
    :cond_b
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1251
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/huawei/internal/telephony/PhoneEx;->setOnUnsolOemHookExtApp(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_17
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_17} :catch_18

    .line 1257
    :goto_17
    return-void

    .line 1252
    :catch_18
    move-exception v0

    .line 1253
    .local v0, e:Lcom/huawei/android/util/NoExtAPIException;
    const-string v1, "setPhone->NoExtAPIException!"

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1254
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_17
.end method

.method public setRadio(Z)Z
    .registers 5
    .parameter "turnOn"

    .prologue
    const/4 v1, 0x1

    .line 895
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 896
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_18

    move v0, v1

    :goto_12
    if-eq v0, p1, :cond_17

    .line 897
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->toggleRadioOnOff()V

    .line 899
    :cond_17
    return v1

    .line 896
    :cond_18
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public showCallScreen()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 663
    invoke-direct {p0, v0, v0}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .registers 3
    .parameter "showDialpad"

    .prologue
    .line 670
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .registers 2

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 733
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 734
    return-void
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .registers 3
    .parameter "pin"

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinReportResult(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supplyPinReportResult(Ljava/lang/String;)I
    .registers 4
    .parameter "pin"

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 772
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 773
    .local v0, checkSimPin:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    .line 774
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 778
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 783
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 784
    .local v0, checkSimPuk:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    .line 785
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public suspendQos(I)I
    .registers 3
    .parameter "qosId"

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, p1}, Lcom/huawei/internal/telephony/PhoneEx;->suspendQos(Lcom/android/internal/telephony/Phone;I)I

    move-result v0

    return v0
.end method

.method public toggleRadioOnOff()V
    .registers 3

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 892
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 893
    return-void

    .line 892
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
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
    .line 1361
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

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
    .line 1366
    invoke-virtual/range {p0 .. p7}, Lcom/android/phone/PhoneInterfaceManager;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .registers 20
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"

    .prologue
    .line 1319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x406

    if-eq v1, v2, :cond_10

    .line 1320
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1321
    :cond_10
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exchange SIM_IO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    new-instance v10, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;

    const/16 v12, 0x14

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    const/4 v4, -0x1

    move v2, p1

    move v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v12, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;-><init>(Ljava/lang/Object;)V

    .line 1328
    .local v10, response:Lcom/huawei/internal/telephony/uicc/IccIoResultEx;
    const/4 v11, 0x0

    .local v11, result:[B
    const/4 v9, 0x2

    .line 1329
    .local v9, length:I
    iget-object v1, v10, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    if-eqz v1, :cond_a3

    .line 1330
    iget-object v1, v10, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    array-length v1, v1

    add-int/lit8 v9, v1, 0x2

    .line 1331
    new-array v11, v9, [B

    .line 1332
    iget-object v1, v10, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v10, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    array-length v4, v4

    invoke-static {v1, v2, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1334
    :goto_94
    add-int/lit8 v1, v9, -0x1

    iget v2, v10, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw2:I

    int-to-byte v2, v2

    aput-byte v2, v11, v1

    .line 1335
    add-int/lit8 v1, v9, -0x2

    iget v2, v10, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw1:I

    int-to-byte v2, v2

    aput-byte v2, v11, v1

    .line 1336
    return-object v11

    .line 1333
    :cond_a3
    new-array v11, v9, [B

    goto :goto_94
.end method

.method public updateServiceLocation()V
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 884
    return-void
.end method
