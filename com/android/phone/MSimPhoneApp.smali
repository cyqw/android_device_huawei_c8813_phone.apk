.class public Lcom/android/phone/MSimPhoneApp;
.super Lcom/android/phone/PhoneApp;
.source "MSimPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimPhoneApp$1;,
        Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;,
        Lcom/android/phone/MSimPhoneApp$MSimMediaButtonBroadcastReceiver;,
        Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mSinglePhones:[Lcom/android/phone/SinglePhone;


# instance fields
.field isCDMACallReallyConnected:Z

.field isGsmCallRemoteAnswered:Z

.field private mActiveFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/InCallFragment;",
            ">;"
        }
    .end annotation
.end field

.field mActiveSubscription:I

.field private mDefaultSubscription:I

.field protected mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

.field mInvalidateInCallControls:Z

.field private mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRingingSub:I

.field private mSubListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field phoneMgrMSim:Lcom/android/phone/MSimPhoneInterfaceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MSimPhoneApp;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;-><init>()V

    .line 155
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    new-instance v0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    iput v2, p0, Lcom/android/phone/MSimPhoneApp;->mDefaultSubscription:I

    .line 167
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveFragments:Ljava/util/HashMap;

    .line 176
    iput v3, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    .line 182
    iput v3, p0, Lcom/android/phone/MSimPhoneApp;->mRingingSub:I

    .line 188
    iput-boolean v2, p0, Lcom/android/phone/MSimPhoneApp;->isCDMACallReallyConnected:Z

    .line 196
    iput-boolean v2, p0, Lcom/android/phone/MSimPhoneApp;->isGsmCallRemoteAnswered:Z

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mSubListener:Ljava/util/List;

    .line 207
    iput-boolean v2, p0, Lcom/android/phone/MSimPhoneApp;->mInvalidateInCallControls:Z

    .line 211
    sput-object p0, Lcom/android/phone/MSimPhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 212
    iput-object p1, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    .line 213
    return-void
.end method

.method static synthetic access$200(I)Lcom/android/phone/SinglePhone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    invoke-static {p0}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MSimPhoneApp;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimPhoneApp;->handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/MSimPhoneApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneApp;->setAutoTimeByNetworkType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MSimPhoneApp;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimPhoneApp;->notifyNetworkChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/phone/MSimPhoneApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/phone/MSimPhoneApp;->mDefaultSubscription:I

    return p1
.end method

.method private static getSinglePhone(I)Lcom/android/phone/SinglePhone;
    .registers 5
    .parameter

    .prologue
    .line 1022
    :try_start_0
    sget-object v0, Lcom/android/phone/MSimPhoneApp;->mSinglePhones:[Lcom/android/phone/SinglePhone;

    aget-object v0, v0, p0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    .line 1025
    :goto_4
    return-object v0

    .line 1023
    :catch_5
    move-exception v0

    .line 1024
    const-string v1, "MSimPhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscripton Index out of bounds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .registers 9
    .parameter "intent"
    .parameter "phone"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 974
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 976
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_65

    .line 977
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 978
    .local v1, state:I
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v1, p2}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(ILcom/android/internal/telephony/Phone;)V

    .line 980
    if-nez v1, :cond_65

    .line 981
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_65

    .line 983
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mMsimtelephonyManager:Landroid/telephony/MSimTelephonyManager;

    sget v3, Lcom/android/phone/MSimPhoneApp;->sub:I

    invoke-virtual {v2, v3}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mImei:Ljava/lang/String;

    .line 984
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mImei:Ljava/lang/String;

    if-eqz v2, :cond_65

    .line 985
    sget-object v2, Lcom/android/phone/MSimPhoneApp;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mImei:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/MSimPhoneApp;->mSimFirstInsert:Z

    .line 987
    iget-boolean v2, p0, Lcom/android/phone/MSimPhoneApp;->mSimFirstInsert:Z

    if-eqz v2, :cond_65

    iget v2, p0, Lcom/android/phone/MSimPhoneApp;->mCallWaitingEnable:I

    if-ne v2, v4, :cond_65

    .line 988
    sget v2, Lcom/android/phone/MSimPhoneApp;->sub:I

    if-nez v2, :cond_66

    .line 989
    sput v5, Lcom/android/phone/MSimPhoneApp;->mSub1:I

    .line 993
    :cond_43
    :goto_43
    sget v2, Lcom/android/phone/MSimPhoneApp;->mSub1:I

    if-nez v2, :cond_4d

    sget v2, Lcom/android/phone/MSimPhoneApp;->mSub2:I

    if-ne v2, v4, :cond_4d

    .line 994
    sput-boolean v4, Lcom/android/phone/MSimPhoneApp;->IsBothSubEnable:Z

    .line 997
    :cond_4d
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 1000
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mCallwaitingPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mImei:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1008
    .end local v1           #state:I
    :cond_65
    return-void

    .line 990
    .restart local v1       #state:I
    :cond_66
    sget v2, Lcom/android/phone/MSimPhoneApp;->sub:I

    if-ne v2, v4, :cond_43

    .line 991
    sput v4, Lcom/android/phone/MSimPhoneApp;->mSub2:I

    goto :goto_43
.end method

.method private notifyNetworkChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .parameter "intent"
    .parameter "phone"

    .prologue
    .line 1011
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1013
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_13

    .line 1014
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1015
    .local v1, state:I
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v1, p2}, Lcom/android/phone/NotificationMgr;->notifyNetworkChanged(ILcom/android/internal/telephony/Phone;)V

    .line 1017
    .end local v1           #state:I
    :cond_13
    return-void
.end method

.method private setAutoTimeByNetworkType()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 917
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 918
    const/4 v1, 0x4

    if-eq v1, v0, :cond_15

    const/4 v1, 0x5

    if-eq v1, v0, :cond_15

    const/4 v1, 0x6

    if-eq v1, v0, :cond_15

    const/4 v1, 0x7

    if-ne v1, v0, :cond_33

    .line 923
    :cond_15
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 924
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 927
    :cond_33
    return-void
.end method

.method private updatePhoneAppCdmaVariables(I)V
    .registers 5
    .parameter "subscription"

    .prologue
    .line 948
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 950
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 951
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 952
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 953
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 954
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 955
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 957
    :cond_23
    return-void
.end method


# virtual methods
.method public clearInCallScreenMode()V
    .registers 2

    .prologue
    .line 1360
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_e

    .line 1361
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_d

    .line 1362
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->resetInCallScreenMode()V

    .line 1367
    :cond_d
    :goto_d
    return-void

    .line 1365
    :cond_e
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    goto :goto_d
.end method

.method public clearOtaState()V
    .registers 3

    .prologue
    .line 1336
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_13

    .line 1337
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_12

    .line 1339
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1344
    :cond_12
    :goto_12
    return-void

    .line 1342
    :cond_13
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    goto :goto_12
.end method

.method createInCallIntent(I)Landroid/content/Intent;
    .registers 5
    .parameter "subscription"

    .prologue
    .line 583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 584
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 588
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    return-object v0
.end method

.method dismissCallScreen(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_31

    .line 659
    invoke-static {p1}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_32

    .line 668
    :cond_26
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->wakeUpScreen()V

    .line 671
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->displayCallScreen()V

    .line 673
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 690
    :cond_31
    :goto_31
    return-void

    .line 680
    :cond_32
    iget-boolean v0, p0, Lcom/android/phone/MSimPhoneApp;->mWakeUpScreen:Z

    if-eqz v0, :cond_3d

    .line 681
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->wakeUpScreen()V

    .line 682
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->clearUserActivityTimeout()V

    goto :goto_31

    .line 684
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_31
.end method

.method dismissCallScreen_DSDA(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_35

    .line 707
    invoke-static {p1}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_36

    .line 716
    :cond_26
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->wakeUpScreen()V

    .line 719
    invoke-static {p1}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneApp;->displayCallScreen(I)V

    .line 721
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->handleOtaCallEnd()V

    .line 738
    :cond_35
    :goto_35
    return-void

    .line 728
    :cond_36
    iget-boolean v0, p0, Lcom/android/phone/MSimPhoneApp;->mWakeUpScreen:Z

    if-eqz v0, :cond_41

    .line 729
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->wakeUpScreen()V

    .line 730
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->clearUserActivityTimeout()V

    goto :goto_35

    .line 732
    :cond_41
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->finish()V

    goto :goto_35
.end method

.method public dismissOtaDialogs()V
    .registers 2

    .prologue
    .line 1348
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_12

    .line 1349
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_11

    .line 1351
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 1356
    :cond_11
    :goto_11
    return-void

    .line 1354
    :cond_12
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    goto :goto_11
.end method

.method displayCallScreen()V
    .registers 6

    .prologue
    .line 596
    sget-boolean v1, Lcom/android/phone/MSimPhoneApp;->sVoiceCapable:Z

    if-nez v1, :cond_13

    .line 597
    const-string v1, "MSimPhoneApp"

    const-string v2, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "stack dump"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    :goto_12
    return-void

    .line 604
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CallManagerEx;->getPhoneInCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MSimPhoneApp;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_26} :catch_2a

    .line 611
    :goto_26
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_12

    .line 605
    :catch_2a
    move-exception v0

    .line 609
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "MSimPhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method displayCallScreen(I)V
    .registers 7
    .parameter "sub"

    .prologue
    .line 621
    sget-boolean v1, Lcom/android/phone/MSimPhoneApp;->sVoiceCapable:Z

    if-nez v1, :cond_13

    .line 622
    const-string v1, "MSimPhoneApp"

    const-string v2, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "stack dump"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    :goto_12
    return-void

    .line 629
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/phone/MSimPhoneApp;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_1c} :catch_20

    .line 636
    :goto_1c
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_12

    .line 630
    :catch_20
    move-exception v0

    .line 634
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "MSimPhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataSubscription()I
    .registers 2

    .prologue
    .line 1147
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v0

    return v0
.end method

.method getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSubscription()I
    .registers 2

    .prologue
    .line 1135
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method getInCallScreen_DSDA()Lcom/android/phone/InCallScreen_DSDA;
    .registers 2

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 4
    .parameter "subscription"

    .prologue
    .line 1041
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 1042
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    if-eqz v0, :cond_9

    .line 1043
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1045
    :goto_8
    return-object v1

    :cond_9
    sget-object v1, Lcom/android/phone/MSimPhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_8
.end method

.method public getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .registers 3

    .prologue
    .line 1216
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    if-eq v0, v1, :cond_c

    .line 1217
    iget v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1221
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/huawei/internal/telephony/CallManagerEx;->getPhoneInCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_b
.end method

.method getPhoneState(I)Lcom/android/internal/telephony/Phone$State;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 743
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/SinglePhone;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getVoiceSubscription()I
    .registers 2

    .prologue
    .line 1141
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v0

    return v0
.end method

.method public getVoiceSubscriptionInService()I
    .registers 10

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->getVoiceSubscription()I

    move-result v6

    .line 1090
    .local v6, voiceSub:I
    const/4 v4, 0x0

    .line 1091
    .local v4, sub:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    .line 1092
    .local v0, count:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v5

    .line 1094
    .local v5, subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_26

    .line 1095
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v0, :cond_22

    .line 1096
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1097
    move v4, v1

    .line 1112
    :cond_22
    return v4

    .line 1095
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1102
    .end local v1           #i:I
    :cond_26
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_27
    if-ge v1, v0, :cond_22

    .line 1103
    invoke-virtual {p0, v1}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1104
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 1105
    .local v3, ss:I
    if-eqz v3, :cond_3a

    const/4 v7, 0x2

    if-ne v3, v7, :cond_3d

    .line 1107
    :cond_3a
    move v4, v1

    .line 1108
    if-eq v4, v6, :cond_22

    .line 1102
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_27
.end method

.method public getmActiveSubscription()I
    .registers 2

    .prologue
    .line 1184
    iget v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    return v0
.end method

.method public getmRingingSubscription()I
    .registers 2

    .prologue
    .line 1205
    iget v0, p0, Lcom/android/phone/MSimPhoneApp;->mRingingSub:I

    return v0
.end method

.method initForNewRadioTechnology(I)V
    .registers 6
    .parameter

    .prologue
    .line 760
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 762
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 764
    invoke-static {v1}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 766
    invoke-virtual {v0}, Lcom/android/phone/SinglePhone;->initializeCdmaVariables()V

    .line 767
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneApp;->updatePhoneAppCdmaVariables(I)V

    .line 768
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->clearOtaState()V

    .line 771
    :cond_15
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v2}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 772
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 773
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_2a

    .line 774
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 778
    :cond_2a
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_45

    .line 779
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_37

    .line 780
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->updateAfterRadioTechnologyChange()V

    .line 791
    :cond_37
    :goto_37
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_44

    .line 796
    :try_start_3d
    iget-object v1, p0, Lcom/android/phone/MSimPhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/internal/telephony/IccCardEx;->registerForNetworkLocked(Lcom/android/internal/telephony/IccCard;Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_44
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_3d .. :try_end_44} :catch_4f

    .line 802
    :cond_44
    :goto_44
    return-void

    .line 783
    :cond_45
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_37

    .line 784
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    goto :goto_37

    .line 797
    :catch_4f
    move-exception v0

    .line 798
    const-string v0, "MSimPhoneApp"

    const-string v1, "initForNewRadioTechnology->NoExtAPIException!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method initIccDepersonalizationPanel(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    .line 550
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 551
    .local v2, subtype:I
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 553
    .local v1, subscription:I
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;II)V

    .line 556
    .local v0, dpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    .line 557
    return-void
.end method

.method public isCDMACallReallyConnected()Z
    .registers 2

    .prologue
    .line 1227
    iget-boolean v0, p0, Lcom/android/phone/MSimPhoneApp;->isCDMACallReallyConnected:Z

    return v0
.end method

.method protected isDialerOpened()Z
    .registers 2

    .prologue
    .line 1287
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_14

    .line 1288
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 1290
    :goto_11
    return v0

    .line 1288
    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 1290
    :cond_14
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->isDialerOpened()Z

    move-result v0

    goto :goto_11
.end method

.method public isGsmCallRemoteAnswered()Z
    .registers 2

    .prologue
    .line 1238
    iget-boolean v0, p0, Lcom/android/phone/MSimPhoneApp;->isGsmCallRemoteAnswered:Z

    return v0
.end method

.method public isInvalidateInCallControls()Z
    .registers 2

    .prologue
    .line 1430
    iget-boolean v0, p0, Lcom/android/phone/MSimPhoneApp;->mInvalidateInCallControls:Z

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .registers 2

    .prologue
    .line 1313
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_11

    .line 1314
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_f

    .line 1315
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isOtaCallInActiveState()Z

    move-result v0

    .line 1319
    :goto_e
    return v0

    .line 1317
    :cond_f
    const/4 v0, 0x0

    goto :goto_e

    .line 1319
    :cond_11
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v0

    goto :goto_e
.end method

.method isShowingCallScreen()Z
    .registers 2

    .prologue
    .line 1267
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_11

    .line 1268
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 1271
    :goto_9
    return v0

    .line 1269
    :cond_a
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isForegroundActivity()Z

    move-result v0

    goto :goto_9

    .line 1271
    :cond_11
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    goto :goto_9
.end method

.method isShowingCallScreenForProximity()Z
    .registers 2

    .prologue
    .line 1276
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_11

    .line 1277
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 1280
    :goto_9
    return v0

    .line 1278
    :cond_a
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isForegroundActivityForProximity()Z

    move-result v0

    goto :goto_9

    .line 1280
    :cond_11
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreenForProximity()Z

    move-result v0

    goto :goto_9
.end method

.method isSimPinEnabled(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 642
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 643
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    iget-boolean v1, v0, Lcom/android/phone/SinglePhone;->mIsSimPinEnabled:Z

    return v1
.end method

.method isSimPukLocked(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1068
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/SinglePhone;->mIsSimPukLocked:Z

    return v0
.end method

.method public notifyListener()V
    .registers 4

    .prologue
    .line 1384
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mSubListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

    .line 1385
    .local v1, listener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;
    if-eqz v1, :cond_6

    .line 1386
    invoke-interface {v1}, Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;->onSubscriptionChanged()V

    goto :goto_6

    .line 1389
    .end local v1           #listener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;
    :cond_18
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 1156
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_11

    .line 1157
    iput-boolean v1, p0, Lcom/android/phone/MSimPhoneApp;->mIsHardKeyboardOpen:Z

    .line 1163
    :goto_7
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1164
    return-void

    .line 1159
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MSimPhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_7
.end method

.method public onCreate()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 226
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 546
    :cond_a
    :goto_a
    return-void

    .line 231
    :cond_b
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 233
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "phone_msim"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mMsimtelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 234
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "call_waiting_prefs"

    invoke-virtual {v0, v3, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mCallwaitingPreferences:Landroid/content/SharedPreferences;

    .line 235
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hw_call_waiting_enable"

    invoke-static {v0, v3, v8}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/MSimPhoneApp;->mCallWaitingEnable:I

    .line 238
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hw_notOnlyUse2g_restoreFactory"

    invoke-static {v0, v3}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->ifNotOnlyUse2gAfterRestoreFactory:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "com.android.phone_preferences"

    invoke-virtual {v0, v3, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->sharePref:Landroid/content/SharedPreferences;

    .line 245
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimPhoneApp;->sVoiceCapable:Z

    .line 254
    const-string v0, "hw_call_wakeup"

    invoke-static {v2, v0, v8}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_66

    .line 255
    iput-boolean v8, p0, Lcom/android/phone/MSimPhoneApp;->mWakeUpScreen:Z

    .line 259
    :cond_66
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_298

    .line 261
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->makeMultiSimDefaultPhones(Landroid/content/Context;)V

    .line 264
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 267
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/phone/TelephonyDebugService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 270
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 271
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    .line 273
    new-array v0, v3, [Lcom/android/phone/SinglePhone;

    sput-object v0, Lcom/android/phone/MSimPhoneApp;->mSinglePhones:[Lcom/android/phone/SinglePhone;

    move v0, v1

    .line 274
    :goto_96
    if-ge v0, v3, :cond_af

    .line 275
    sget-object v4, Lcom/android/phone/MSimPhoneApp;->mSinglePhones:[Lcom/android/phone/SinglePhone;

    new-instance v5, Lcom/android/phone/SinglePhone;

    invoke-direct {v5, v0}, Lcom/android/phone/SinglePhone;-><init>(I)V

    aput-object v5, v4, v0

    .line 276
    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    sget-object v5, Lcom/android/phone/MSimPhoneApp;->mSinglePhones:[Lcom/android/phone/SinglePhone;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 280
    :cond_af
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->getDefaultSubscription()I

    move-result v0

    iput v0, p0, Lcom/android/phone/MSimPhoneApp;->mDefaultSubscription:I

    .line 283
    iget v0, p0, Lcom/android/phone/MSimPhoneApp;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneApp;->setDefaultPhone(I)V

    .line 284
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 288
    invoke-static {p0}, Lcom/android/phone/MSimNotificationMgr;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/MSimNotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 290
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 291
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/MSimPhoneInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phoneMgrMSim:Lcom/android/phone/MSimPhoneInterfaceManager;

    .line 293
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 295
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 297
    if-ne v0, v9, :cond_f2

    .line 299
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 300
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 303
    :cond_f2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1d2

    .line 306
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v3}, Lcom/android/phone/BluetoothHandsfree;->init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 307
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 313
    :goto_110
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 315
    new-instance v0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v7}, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/MSimPhoneApp;Lcom/android/phone/MSimPhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    new-instance v0, Lcom/android/phone/MSimPhoneApp$MSimMediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v7}, Lcom/android/phone/MSimPhoneApp$MSimMediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/MSimPhoneApp;Lcom/android/phone/MSimPhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 320
    const v3, 0x1000001a

    const-string v4, "MSimPhoneApp"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 324
    const v3, 0x20000001

    const-string v4, "MSimPhoneApp"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 327
    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_158

    .line 329
    const/16 v3, 0x20

    const-string v4, "MSimPhoneApp"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 333
    :cond_158
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_167

    .line 334
    new-instance v0, Lcom/android/phone/AccelerometerListener;

    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p0}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 337
    :cond_167
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 341
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 347
    new-instance v0, Landroid/os/UpdateLock;

    const-string v3, "phone"

    invoke-direct {v0, v3}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    .line 352
    invoke-static {p0}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->callController:Lcom/android/phone/CallController;

    .line 357
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/MSimInCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/MSimInCallUiState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 365
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    .line 371
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    new-instance v5, Lcom/android/phone/CallLogAsync;

    invoke-direct {v5}, Lcom/android/phone/CallLogAsync;-><init>()V

    invoke-static {p0, v0, v3, v4, v5}, Lcom/android/phone/MSimCallNotifier;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/MSimCallNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move v0, v1

    .line 375
    :goto_1b0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_1df

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 377
    if-eqz v3, :cond_1cf

    .line 380
    :try_start_1c4
    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v4, v5, v6}, Lcom/huawei/internal/telephony/IccCardEx;->registerForNetworkLocked(Lcom/android/internal/telephony/IccCard;Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_1cf
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_1c4 .. :try_end_1cf} :catch_1d6

    .line 375
    :cond_1cf
    :goto_1cf
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b0

    .line 310
    :cond_1d2
    iput-object v7, p0, Lcom/android/phone/MSimPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    goto/16 :goto_110

    .line 381
    :catch_1d6
    move-exception v3

    .line 382
    const-string v3, "MSimPhoneApp"

    const-string v4, "onCreate->NoExtAPIException!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cf

    .line 389
    :cond_1df
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x34

    invoke-virtual {v0, v3, v4, v7}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 395
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0006

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/MSimPhoneApp;->mTtyEnabled:Z

    .line 398
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 400
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v3, "com.huawei.numberlocation"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    iget-boolean v3, p0, Lcom/android/phone/MSimPhoneApp;->mTtyEnabled:Z

    if-eqz v3, :cond_248

    .line 415
    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    :cond_248
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 432
    iget-object v3, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 435
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 439
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    const v3, 0x7f060020

    invoke-static {v0, v3, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 441
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    const v3, 0x7f060001

    invoke-static {v0, v3, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 446
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    :cond_298
    move v0, v1

    .line 451
    :goto_299
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_2bb

    .line 452
    invoke-static {v0}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v3

    .line 453
    if-eqz v3, :cond_2b8

    iget-object v4, v3, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_2b8

    .line 455
    iget-object v3, v3, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_2b8

    .line 456
    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneApp;->updatePhoneAppCdmaVariables(I)V

    .line 451
    :cond_2b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_299

    .line 464
    :cond_2bb
    const-string v0, "content://iccmsim/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 467
    iput-boolean v1, p0, Lcom/android/phone/MSimPhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 476
    iget-boolean v0, p0, Lcom/android/phone/MSimPhoneApp;->mTtyEnabled:Z

    if-eqz v0, :cond_2dc

    .line 477
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_tty_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/MSimPhoneApp;->mPreferredTtyMode:I

    .line 483
    :cond_2dc
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_30e

    .line 484
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hearing_aid"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 487
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 489
    const-string v2, "HACSetting"

    if-eqz v1, :cond_33c

    const-string v1, "ON"

    :goto_30b
    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_30e
    :try_start_30e
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 499
    :cond_31b
    :goto_31b
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v8, :cond_a

    .line 500
    if-ne v1, v9, :cond_31b

    .line 501
    const-string v1, "cfu_activation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33f

    .line 503
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cfu_activation:Ljava/lang/String;
    :try_end_338
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30e .. :try_end_338} :catch_339
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30e .. :try_end_338} :catch_355
    .catch Ljava/io/IOException; {:try_start_30e .. :try_end_338} :catch_371

    goto :goto_31b

    .line 537
    :catch_339
    move-exception v0

    goto/16 :goto_a

    .line 489
    :cond_33c
    const-string v1, "OFF"

    goto :goto_30b

    .line 504
    :cond_33f
    :try_start_33f
    const-string v1, "cfu_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35b

    .line 506
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cfu_deactivation:Ljava/lang/String;
    :try_end_354
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33f .. :try_end_354} :catch_339
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33f .. :try_end_354} :catch_355
    .catch Ljava/io/IOException; {:try_start_33f .. :try_end_354} :catch_371

    goto :goto_31b

    .line 540
    :catch_355
    move-exception v0

    .line 541
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_a

    .line 507
    :cond_35b
    :try_start_35b
    const-string v1, "cfb_activation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_377

    .line 509
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cfb_activation:Ljava/lang/String;
    :try_end_370
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35b .. :try_end_370} :catch_339
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35b .. :try_end_370} :catch_355
    .catch Ljava/io/IOException; {:try_start_35b .. :try_end_370} :catch_371

    goto :goto_31b

    .line 542
    :catch_371
    move-exception v0

    .line 543
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 510
    :cond_377
    :try_start_377
    const-string v1, "cfb_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38d

    .line 512
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cfb_deactivation:Ljava/lang/String;

    goto :goto_31b

    .line 513
    :cond_38d
    const-string v1, "cfnry_activation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a4

    .line 515
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cfnry_activation:Ljava/lang/String;

    goto/16 :goto_31b

    .line 516
    :cond_3a4
    const-string v1, "cfnry_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3bb

    .line 518
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cfnry_deactivation:Ljava/lang/String;

    goto/16 :goto_31b

    .line 519
    :cond_3bb
    const-string v1, "cfnrc_activation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d2

    .line 521
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cfnrc_activation:Ljava/lang/String;

    goto/16 :goto_31b

    .line 522
    :cond_3d2
    const-string v1, "cfnrc_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e9

    .line 524
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cfnrc_deactivation:Ljava/lang/String;

    goto/16 :goto_31b

    .line 525
    :cond_3e9
    const-string v1, "cf_all_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_400

    .line 527
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cf_all_deactivation:Ljava/lang/String;

    goto/16 :goto_31b

    .line 528
    :cond_400
    const-string v1, "cw_activation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_417

    .line 530
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cw_activation:Ljava/lang/String;

    goto/16 :goto_31b

    .line 531
    :cond_417
    const-string v1, "cw_deactivation"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31b

    .line 533
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->cw_deactivation:Ljava/lang/String;
    :try_end_42c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_377 .. :try_end_42c} :catch_339
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_377 .. :try_end_42c} :catch_355
    .catch Ljava/io/IOException; {:try_start_377 .. :try_end_42c} :catch_371

    goto/16 :goto_31b
.end method

.method public onMMIComplete(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter

    .prologue
    .line 750
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 751
    invoke-static {v0}, Lcom/huawei/internal/telephony/MmiCodeEx;->getPhone(Lcom/android/internal/telephony/MmiCode;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 752
    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    :try_end_13
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_13} :catch_14

    .line 757
    :goto_13
    return-void

    .line 753
    :catch_14
    move-exception v0

    .line 754
    const-string v0, "MSimPhoneApp"

    const-string v1, "onMMIComplete()->NoExtAPIException!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public removeSubscriptionListenr(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V
    .registers 3
    .parameter "aListener"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mSubListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1381
    return-void
.end method

.method protected requestUpdateBluetoothIndication()V
    .registers 2

    .prologue
    .line 1304
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_e

    .line 1306
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->updateInCallScreenAll()V

    .line 1310
    :cond_d
    :goto_d
    return-void

    .line 1308
    :cond_e
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->requestUpdateBluetoothIndication()V

    goto :goto_d
.end method

.method resetInCallFragmentInstance(I)V
    .registers 4
    .parameter "subscription"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveFragments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    return-void
.end method

.method public resetmActiveSubscription()V
    .registers 2

    .prologue
    .line 1195
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    .line 1196
    return-void
.end method

.method public resetmRingingSubscription()V
    .registers 2

    .prologue
    .line 1209
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/MSimPhoneApp;->mRingingSub:I

    .line 1210
    return-void
.end method

.method public setCDMACallReallyConnected(Z)V
    .registers 2
    .parameter "isCDMACallReallyConnected"

    .prologue
    .line 1231
    iput-boolean p1, p0, Lcom/android/phone/MSimPhoneApp;->isCDMACallReallyConnected:Z

    .line 1232
    return-void
.end method

.method setDefaultPhone(I)V
    .registers 4
    .parameter "subscription"

    .prologue
    .line 1126
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 1127
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 1128
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/phone/MSimPhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 1129
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneApp;->updatePhoneAppCdmaVariables(I)V

    .line 1130
    iput p1, p0, Lcom/android/phone/MSimPhoneApp;->mDefaultSubscription:I

    .line 1131
    return-void
.end method

.method public setGsmCallRemoteAnswered(Z)V
    .registers 2
    .parameter "isGsmCallRemoteAnswered"

    .prologue
    .line 1242
    iput-boolean p1, p0, Lcom/android/phone/MSimPhoneApp;->isGsmCallRemoteAnswered:Z

    .line 1243
    return-void
.end method

.method setInCallFragmentInstance(ILcom/android/phone/InCallFragment;)V
    .registers 5
    .parameter "subscription"
    .parameter "f"

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveFragments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    return-void
.end method

.method setInCallScreenInstance_DSDA(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 1248
    return-void
.end method

.method public setInvalidateInCallControls(Z)V
    .registers 2
    .parameter "invalidateInCallControls"

    .prologue
    .line 1434
    iput-boolean p1, p0, Lcom/android/phone/MSimPhoneApp;->mInvalidateInCallControls:Z

    .line 1435
    return-void
.end method

.method public setSubscriptionListener(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V
    .registers 3
    .parameter "aListener"

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mSubListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    return-void
.end method

.method public setmActiveSubscription(I)V
    .registers 2
    .parameter "activeSubscription"

    .prologue
    .line 1188
    iput p1, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    .line 1190
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->notifyListener()V

    .line 1192
    return-void
.end method

.method public setmRingingSubscription(I)V
    .registers 2
    .parameter "sub"

    .prologue
    .line 1201
    iput p1, p0, Lcom/android/phone/MSimPhoneApp;->mRingingSub:I

    .line 1202
    return-void
.end method

.method protected updateAfterRadioTechnologyChange()V
    .registers 4

    .prologue
    .line 1177
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mActiveFragments:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1178
    .local v0, f:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/phone/InCallFragment;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/InCallFragment;

    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->updateAfterRadioTechnologyChange()V

    goto :goto_a

    .line 1180
    .end local v0           #f:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/phone/InCallFragment;>;"
    :cond_26
    return-void
.end method

.method updateInCallScreen()V
    .registers 3

    .prologue
    .line 1408
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_12

    .line 1409
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_11

    .line 1410
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->getmActiveSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen_DSDA;->updateFragmentScreen(I)V

    .line 1415
    :cond_11
    :goto_11
    return-void

    .line 1413
    :cond_12
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_11
.end method

.method updateInCallScreenAll()V
    .registers 2

    .prologue
    .line 1419
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_e

    .line 1420
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_d

    .line 1421
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->updateAllScreenAll()V

    .line 1426
    :cond_d
    :goto_d
    return-void

    .line 1424
    :cond_e
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_d
.end method

.method protected updateKeyguardPolicy(Lcom/android/internal/telephony/Phone$State;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 1295
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_15

    .line 1296
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_12

    .line 1297
    iget-object v1, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen_DSDA;->updateKeyguardPolicy(Z)V

    .line 1301
    :cond_12
    :goto_12
    return-void

    .line 1297
    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    .line 1299
    :cond_15
    invoke-super {p0, p1}, Lcom/android/phone/PhoneApp;->updateKeyguardPolicy(Lcom/android/internal/telephony/Phone$State;)V

    goto :goto_12
.end method
