.class public Lcom/android/phone/OutgoingCallBroadcaster;
.super Landroid/app/Activity;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field protected static hangupflag:Z

.field protected static mIntent:Landroid/content/Intent;

.field public static mSub:I


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private mSubscription:I

.field private mWaitingSpinner:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 90
    sput-boolean v1, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/OutgoingCallBroadcaster;->mIntent:Landroid/content/Intent;

    .line 134
    sput-boolean v1, Lcom/android/phone/OutgoingCallBroadcaster;->hangupflag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->dialog:Landroid/app/Dialog;

    .line 145
    new-instance v0, Lcom/android/phone/OutgoingCallBroadcaster$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OutgoingCallBroadcaster$1;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/OutgoingCallBroadcaster;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->isOtaActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->processIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private activeSubCount()I
    .registers 4

    .prologue
    .line 911
    const/4 v0, 0x1

    .line 913
    .local v0, count:I
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    .line 914
    .local v2, subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I
    :try_end_8
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 919
    .end local v2           #subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    :goto_9
    return v0

    .line 915
    :catch_a
    move-exception v1

    .line 916
    .local v1, e:Lcom/huawei/android/util/NoExtAPIException;
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private handleNonVoiceCapable(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 832
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 834
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 849
    .local v2, scheme:Ljava/lang/String;
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "tel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 850
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 851
    .local v1, newIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 852
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 861
    .end local v1           #newIntent:Landroid/content/Intent;
    :goto_29
    return-void

    .line 858
    :cond_2a
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    goto :goto_29
.end method

.method private isIntentFromBluetooth(Landroid/content/Intent;)Z
    .registers 7
    .parameter "intent"

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, btIntent:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 926
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_46

    .line 927
    const-string v2, "Bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_46

    const-string v2, "Bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 929
    const/4 v0, 0x1

    .line 930
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIntentFromBluetooth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "intent :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Bluetooth"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_46
    return v0
.end method

.method private isOtaActive()Z
    .registers 5

    .prologue
    .line 324
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 325
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x0

    .line 327
    .local v1, isOtaCallActive:Z
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 334
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v2, v3, :cond_1d

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v2, v3, :cond_1e

    .line 338
    :cond_1d
    const/4 v1, 0x1

    .line 343
    :cond_1e
    return v1
.end method

.method private isSIPCall(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 6
    .parameter "number"
    .parameter "intent"

    .prologue
    .line 938
    const/4 v1, 0x0

    .line 939
    .local v1, sipCall:Z
    const-string v0, ""

    .line 940
    .local v0, scheme:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 941
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 942
    if-eqz v0, :cond_22

    const-string v2, "sip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 944
    :cond_21
    const/4 v1, 0x1

    .line 947
    :cond_22
    return v1
.end method

.method private otaCleanup()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 293
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 294
    .local v1, app:Lcom/android/phone/PhoneApp;
    const/4 v3, 0x0

    .line 296
    .local v3, isOtaCallActive:Z
    iget-object v6, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 297
    iget-object v6, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_31

    move v0, v4

    .line 299
    .local v0, activateState:Z
    :goto_18
    iget-object v6, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_33

    move v2, v4

    .line 302
    .local v2, dialogState:Z
    :goto_21
    if-nez v0, :cond_25

    if-eqz v2, :cond_30

    .line 308
    :cond_25
    if-eqz v2, :cond_2a

    .line 309
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 310
    :cond_2a
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 311
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 314
    .end local v0           #activateState:Z
    .end local v2           #dialogState:Z
    :cond_30
    return-void

    :cond_31
    move v0, v5

    .line 297
    goto :goto_18

    .restart local v0       #activateState:Z
    :cond_33
    move v2, v5

    .line 299
    goto :goto_21
.end method

.method private processIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 493
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 496
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_10

    .line 497
    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->handleNonVoiceCapable(Landroid/content/Intent;)V

    .line 531
    :goto_f
    return-void

    .line 505
    :cond_10
    invoke-direct {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->otaCleanup()V

    .line 507
    const/4 v0, 0x0

    .line 509
    :try_start_14
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->isPromptEnabled()Z
    :try_end_17
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_14 .. :try_end_17} :catch_67

    move-result v0

    .line 513
    :goto_18
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_4f

    if-eqz v0, :cond_4f

    invoke-direct {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->activeSubCount()I

    move-result v0

    if-le v0, v3, :cond_4f

    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->isIntentFromBluetooth(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-direct {p0, v1, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->isSIPCall(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/MSimDialerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 520
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0, v0, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f

    .line 524
    :cond_4f
    const-string v0, "subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mSubscription:I

    .line 527
    iget v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mSubscription:I

    sput v0, Lcom/android/phone/OutgoingCallBroadcaster;->mSub:I

    .line 529
    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->processMSimIntent(Landroid/content/Intent;)V

    goto :goto_f

    .line 510
    :catch_67
    move-exception v1

    goto :goto_18
.end method

.method private processMSimIntent(Landroid/content/Intent;)V
    .registers 29
    .parameter "intent"

    .prologue
    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 536
    .local v12, action:Ljava/lang/String;
    sput-object p1, Lcom/android/phone/OutgoingCallBroadcaster;->mIntent:Landroid/content/Intent;

    .line 537
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    if-eqz v4, :cond_53

    invoke-static {}, Lcom/android/phone/PhoneUtils;->needShowDialog()Z

    move-result v4

    if-eqz v4, :cond_53

    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->hangupflag:Z

    if-nez v4, :cond_53

    .line 539
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e0424

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0e0425

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x104000a

    new-instance v7, Lcom/android/phone/OutgoingCallBroadcaster$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/phone/OutgoingCallBroadcaster$3;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x1040009

    new-instance v7, Lcom/android/phone/OutgoingCallBroadcaster$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/phone/OutgoingCallBroadcaster$2;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/phone/OutgoingCallBroadcaster;->dialog:Landroid/app/Dialog;

    .line 805
    :goto_52
    return-void

    .line 562
    :cond_53
    const-string v4, "subscription"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mSubscription:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 566
    .local v10, number:Ljava/lang/String;
    if-eqz v10, :cond_107

    .line 567
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_76

    .line 568
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 569
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 581
    :cond_76
    :goto_76
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 585
    const-string v4, "android.intent.action.CALL"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9f

    .line 586
    const-string v4, "android.intent.action.CALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    :cond_9f
    if-eqz v10, :cond_110

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_110

    const/16 v19, 0x1

    .line 603
    .local v19, isExactEmergencyNumber:Z
    :goto_ab
    if-eqz v10, :cond_113

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_113

    const/16 v20, 0x1

    .line 608
    .local v20, isPotentialEmergencyNumber:Z
    :goto_b7
    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 614
    if-eqz v20, :cond_116

    .line 615
    const-string v12, "android.intent.action.CALL_EMERGENCY"

    .line 619
    :goto_c3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    :cond_c8
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 623
    if-eqz v20, :cond_119

    .line 625
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 632
    .local v18, invokeFrameworkDialer:Landroid/content/Intent;
    const-string v4, "com.android.contacts"

    const-string v6, "com.android.contacts.DialtactsActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v4, "android.intent.action.DIAL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 636
    const-string v4, "subscription"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mSubscription:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_52

    .line 572
    .end local v18           #invokeFrameworkDialer:Landroid/content/Intent;
    .end local v19           #isExactEmergencyNumber:Z
    .end local v20           #isPotentialEmergencyNumber:Z
    :cond_107
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "The number obtained from Intent is null."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 601
    :cond_110
    const/16 v19, 0x0

    goto :goto_ab

    .line 603
    .restart local v19       #isExactEmergencyNumber:Z
    :cond_113
    const/16 v20, 0x0

    goto :goto_b7

    .line 617
    .restart local v20       #isPotentialEmergencyNumber:Z
    :cond_116
    const-string v12, "android.intent.action.CALL"

    goto :goto_c3

    .line 642
    :cond_119
    const-string v4, "subscription"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mSubscription:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    const/4 v13, 0x0

    .line 701
    .local v13, callNow:Z
    :goto_125
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 706
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    .line 707
    const-string v4, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 708
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_52

    .line 644
    .end local v13           #callNow:Z
    :cond_14c
    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1be

    .line 652
    if-nez v20, :cond_15b

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_52

    .line 657
    :cond_15b
    const/16 v24, 0x0

    .line 658
    .local v24, sub:I
    const/16 v17, 0x0

    .line 662
    .local v17, inServiceSub_Count:I
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_19e

    .line 664
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v15

    .line 665
    .local v15, count:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v25

    .line 666
    .local v25, subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    if-eqz v25, :cond_19e

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_19e

    .line 667
    const/16 v16, 0x0

    .local v16, i:I
    :goto_17c
    move/from16 v0, v16

    if-ge v0, v15, :cond_19e

    .line 668
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v21

    .line 669
    .local v21, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v23

    .line 670
    .local v23, ss:I
    if-eqz v23, :cond_199

    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_19b

    .line 672
    :cond_199
    add-int/lit8 v17, v17, 0x1

    .line 667
    :cond_19b
    add-int/lit8 v16, v16, 0x1

    goto :goto_17c

    .line 679
    .end local v15           #count:I
    .end local v16           #i:I
    .end local v21           #phone:Lcom/android/internal/telephony/Phone;
    .end local v23           #ss:I
    .end local v25           #subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    :cond_19e
    const/4 v4, 0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b5

    .line 680
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mSubscription:I

    move/from16 v24, v0

    .line 685
    :goto_1a9
    const-string v4, "subscription"

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    const/4 v13, 0x1

    .line 687
    .restart local v13       #callNow:Z
    goto/16 :goto_125

    .line 682
    .end local v13           #callNow:Z
    :cond_1b5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getVoiceSubscriptionInService()I

    move-result v24

    goto :goto_1a9

    .line 688
    .end local v17           #inServiceSub_Count:I
    .end local v24           #sub:I
    :cond_1be
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_52

    .line 712
    .restart local v13       #callNow:Z
    :cond_1c3
    const/4 v13, 0x1

    .line 713
    const-string v4, "subscription"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mSubscription:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    :cond_1cf
    if-eqz v13, :cond_1dc

    .line 725
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 737
    :cond_1dc
    const-string v4, "com.android.phone.CALL_ORIGIN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 738
    .local v14, callOrigin:Ljava/lang/String;
    if-eqz v14, :cond_215

    .line 739
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 754
    :goto_1ed
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v26

    .line 755
    .local v26, uri:Landroid/net/Uri;
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    .line 756
    .local v22, scheme:Ljava/lang/String;
    const-string v4, "sip"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_205

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21d

    .line 757
    :cond_205
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_52

    .line 741
    .end local v22           #scheme:Ljava/lang/String;
    .end local v26           #uri:Landroid/net/Uri;
    :cond_215
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->resetLatestActiveCallOrigin()V

    goto :goto_1ed

    .line 766
    .restart local v22       #scheme:Ljava/lang/String;
    .restart local v26       #uri:Landroid/net/Uri;
    :cond_21d
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .local v5, broadcastIntent:Landroid/content/Intent;
    if-eqz v10, :cond_22b

    .line 768
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v5, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    :cond_22b
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 771
    const-string v4, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {v5, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 772
    const-string v4, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v4, "subscription"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mSubscription:I

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "config_tianyi_dialer"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_266

    .line 776
    const-string v4, "tianyi_dialer"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_292

    .line 777
    const-string v4, "tianyi_dialer"

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 785
    :cond_266
    :goto_266
    const/high16 v4, 0x1000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    const-wide/16 v7, 0x7d0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 795
    sget-boolean v4, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-eqz v4, :cond_27f

    .line 797
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/phone/ipcallsetting/IPCallUtils;->setLogNumberToIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    .line 800
    :cond_27f
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v7, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/phone/OutgoingCallBroadcaster;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_52

    .line 779
    :cond_292
    const-string v4, "tianyi_dialer"

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_266
.end method

.method private startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 385
    const-string v1, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    invoke-static {p2, v0}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 388
    invoke-static {p2, v0}, Lcom/android/phone/PhoneUtils;->copyIMSExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 391
    sget-boolean v1, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-eqz v1, :cond_21

    .line 393
    invoke-static {p2, v0}, Lcom/android/phone/ipcallsetting/IPCallUtils;->setLogNumberToIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    .line 400
    :cond_21
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.SIP_SELECT_PHONE"

    invoke-direct {v1, v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 401
    const-class v2, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 402
    const-string v2, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 403
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 404
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 406
    invoke-virtual {p0, v3, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->overridePendingTransition(II)V

    .line 409
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 900
    if-nez p2, :cond_6

    .line 901
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 907
    :cond_5
    :goto_5
    return-void

    .line 902
    :cond_6
    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    .line 903
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 904
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "subscription"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mSubscription:I

    .line 905
    invoke-direct {p0, p3}, Lcom/android/phone/OutgoingCallBroadcaster;->processMSimIntent(Landroid/content/Intent;)V

    goto :goto_5
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 896
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 888
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 957
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 958
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 419
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 420
    const v1, 0x7f040028

    invoke-virtual {p0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->setContentView(I)V

    .line 421
    const v1, 0x7f0900eb

    invoke-virtual {p0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;

    .line 423
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 425
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_22

    .line 438
    const-string v1, "OutgoingCallBroadcaster"

    const-string v2, "onCreate: non-null icicle!  Bailing out, not sending NEW_OUTGOING_CALL broadcast..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_21
    return-void

    .line 452
    :cond_22
    invoke-direct {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->processIntent(Landroid/content/Intent;)V

    goto :goto_21
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 866
    packed-switch p1, :pswitch_data_28

    .line 876
    const/4 v0, 0x0

    .line 879
    .local v0, dialog:Landroid/app/Dialog;
    :goto_4
    return-object v0

    .line 868
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e024d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 874
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_4

    .line 866
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 818
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->removeDialog(I)V

    .line 820
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 821
    return-void
.end method
