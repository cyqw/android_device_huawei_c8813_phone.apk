.class public Lcom/android/phone/MSimGsmUmtsOptions;
.super Ljava/lang/Object;
.source "MSimGsmUmtsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;
    }
.end annotation


# static fields
.field private static final IS_CHINA_TELECOM_OPTA_OPTB:Z

.field private static final IS_UMTS_GSM:Z


# instance fields
.field protected final DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

.field public card1DualModeStageinProgress:I

.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

.field private mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

.field private mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

.field public mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefCategory:Landroid/preference/PreferenceCategory;

.field public mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 111
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "umts_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimGsmUmtsOptions;->IS_UMTS_GSM:Z

    .line 113
    const-string v0, "ro.config.hw_opta"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "92"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "ro.config.hw_optb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    :goto_2f
    sput-boolean v0, Lcom/android/phone/MSimGsmUmtsOptions;->IS_CHINA_TELECOM_OPTA_OPTB:Z

    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .registers 4
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/MSimGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V
    .registers 6
    .parameter "prefActivity"
    .parameter "prefScreen"
    .parameter "subscription"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    .line 88
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->card1DualModeStageinProgress:I

    .line 600
    new-instance v0, Lcom/android/phone/MSimGsmUmtsOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimGsmUmtsOptions$1;-><init>(Lcom/android/phone/MSimGsmUmtsOptions;)V

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mHandler:Landroid/os/Handler;

    .line 129
    iput-object p1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 130
    iput-object p2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 131
    iput p3, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    .line 132
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 133
    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-nez v0, :cond_3e

    .line 134
    invoke-virtual {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->create()V

    .line 139
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    sget-boolean v0, Lcom/android/phone/MSimGsmUmtsOptions;->IS_UMTS_GSM:Z

    if-eqz v0, :cond_4b

    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-nez v0, :cond_47

    const v0, 0x7f0e03c6

    :goto_3a
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 150
    return-void

    .line 135
    :cond_3e
    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 136
    invoke-virtual {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->createSub2()V

    goto :goto_2d

    .line 139
    :cond_47
    const v0, 0x7f0e03c7

    goto :goto_3a

    :cond_4b
    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-nez v0, :cond_53

    const v0, 0x7f0e03ab

    goto :goto_3a

    :cond_53
    const v0, 0x7f0e03ac

    goto :goto_3a
.end method

.method static synthetic access$100(Lcom/android/phone/MSimGsmUmtsOptions;)Landroid/preference/PreferenceActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MSimGsmUmtsOptions;)Lcom/android/internal/telephony/msim/SubscriptionData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MSimGsmUmtsOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->setDualModePrefValueAndSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MSimGsmUmtsOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->activateCard1DualModeGSM()V

    return-void
.end method

.method private activateCard1DualModeCDMA()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 419
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->updateAllSubscriptions()V

    .line 421
    const/4 v1, 0x0

    .local v1, subid:I
    :goto_7
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v1, v2, :cond_4f

    .line 422
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v0, v2, v1

    .line 423
    .local v0, sub:Lcom/android/internal/telephony/msim/Subscription;
    if-nez v0, :cond_18

    .line 421
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 427
    :cond_18
    iget-object v2, v0, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v3, "RUIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, v0, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v3, "CSIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 428
    :cond_2c
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 429
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 430
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 431
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 437
    .end local v0           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_4f
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-nez v2, :cond_97

    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    if-eq v2, v6, :cond_97

    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    if-ne v2, v6, :cond_97

    .line 441
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 442
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 443
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 444
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 445
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 448
    :cond_97
    return-void
.end method

.method private activateCard1DualModeGSM()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 392
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->updateAllSubscriptions()V

    .line 394
    const/4 v1, 0x0

    .local v1, subid:I
    :goto_7
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v1, v2, :cond_4f

    .line 395
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v0, v2, v1

    .line 396
    .local v0, sub:Lcom/android/internal/telephony/msim/Subscription;
    if-nez v0, :cond_18

    .line 394
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 400
    :cond_18
    iget-object v2, v0, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, v0, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 401
    :cond_2c
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 402
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 403
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 404
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 410
    .end local v0           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_4f
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 411
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 412
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 413
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 414
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 416
    return-void
.end method

.method private enableorDisableDualModeSelect()V
    .registers 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-nez v0, :cond_1c

    const-string v0, "dual_mode_card_settings_key"

    :goto_8
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    .line 198
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1b

    .line 201
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_1b
    return-void

    .line 196
    :cond_1c
    const-string v0, "dual_mode_card_settings_key_sub2"

    goto :goto_8
.end method

.method private getCurrentDualModeSubscription()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 330
    const-string v0, "RUIM"

    .line 331
    .local v0, sDualModeNetworkApp:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v1

    .line 333
    .local v1, subid:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_21

    .line 334
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->updateAllSubscriptions()V

    .line 336
    iget-object v3, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_21
    const-string v3, "SIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "USIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 342
    :cond_31
    const/4 v2, 0x1

    .line 344
    :cond_32
    return v2
.end method

.method private setDualModePrefValueAndSummary()V
    .registers 4

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->getCurrentDualModeSubscription()I

    move-result v0

    .line 568
    .local v0, dualmodetype:I
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 569
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 570
    return-void
.end method

.method private updateAllSubscriptions()V
    .registers 5

    .prologue
    .line 351
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v2, v2, [Lcom/android/internal/telephony/msim/SubscriptionData;

    iput-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 352
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_1a

    .line 353
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-static {}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v3

    aput-object v3, v2, v0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 357
    :cond_1a
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    if-eqz v2, :cond_40

    .line 358
    new-instance v2, Lcom/android/internal/telephony/msim/SubscriptionData;

    sget v3, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    iput-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 359
    const/4 v0, 0x0

    :goto_28
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_47

    .line 360
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    .line 361
    .local v1, sub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 366
    .end local v1           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_40
    const-string v2, "MSimGsmUmtsOptions"

    const-string v3, "onCreate: Card info not available: mCardSubscrInfo == NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_47
    return-void
.end method


# virtual methods
.method protected create()V
    .registers 4

    .prologue
    .line 226
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 260
    :goto_6
    return-void

    .line 230
    :cond_7
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 232
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "category_gsm_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    .line 234
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_apn_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 235
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_carrier_sel_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    .line 238
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_prefer_2g_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    .line 244
    sget-boolean v0, Lcom/android/phone/MSimGsmUmtsOptions;->IS_CHINA_TELECOM_OPTA_OPTB:Z

    if-eqz v0, :cond_80

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_80

    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-nez v0, :cond_80

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getCurrentDualModeStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_80

    .line 251
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    :goto_79
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableorDisableDualModeSelect()V

    .line 259
    invoke-virtual {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableScreen()V

    goto :goto_6

    .line 253
    :cond_80
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->updatePhone(Lcom/android/internal/telephony/Phone;)V

    goto :goto_79
.end method

.method protected createSub2()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 153
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 155
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "category_gsm_network_sub2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    .line 157
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_apn_key_sub2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 158
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_carrier_sel_key_sub2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    .line 161
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_prefer_2g_key_sub2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    .line 166
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_68

    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-ne v0, v3, :cond_68

    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_68

    .line 169
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_68
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 183
    const-string v0, "wdb"

    const-string v1, "MSimGsmUmtsOptions createSub2()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 189
    :cond_7f
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableorDisableDualModeSelect()V

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableScreen()V

    .line 192
    return-void
.end method

.method public enableScreen()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v3, :cond_13

    .line 266
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 268
    :cond_13
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_24

    .line 269
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v3, :cond_25

    .line 270
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 281
    :cond_24
    :goto_24
    return-void

    .line 271
    :cond_25
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/huawei/internal/telephony/PhoneEx;->isManualNetSelAllowed(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 272
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_24

    .line 273
    :cond_33
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 274
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 275
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_24

    .line 277
    :cond_50
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_24
.end method

.method public isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 501
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public makecard2subsForDeactivation()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 373
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v0

    .line 374
    .local v0, subid:I
    if-ne v0, v3, :cond_e

    .line 375
    const/4 v1, 0x0

    .line 386
    :goto_d
    return v1

    .line 380
    :cond_e
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    iput v3, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 381
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    iput v3, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 382
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    iput v3, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 383
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    iput v0, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 384
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    goto :goto_d
.end method

.method public preferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 453
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, option:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_5e

    .line 455
    iget-object v7, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 456
    .local v1, lIndex:I
    const/4 v0, 0x0

    .line 458
    .local v0, iserr:Z
    iget-object v7, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 459
    .local v2, oldIndex:I
    if-ne v1, v2, :cond_27

    .line 461
    const-string v6, "MSimGsmUmtsOptions"

    const-string v7, "preferenceChange; same mode selected, so no need to modify it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .end local v0           #iserr:Z
    .end local v1           #lIndex:I
    .end local v2           #oldIndex:I
    :cond_26
    :goto_26
    return v5

    .line 466
    .restart local v0       #iserr:Z
    .restart local v1       #lIndex:I
    .restart local v2       #oldIndex:I
    :cond_27
    if-ne v1, v5, :cond_56

    .line 468
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v4

    .line 470
    .local v4, subid:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_4f

    .line 472
    iput v6, p0, Lcom/android/phone/MSimGsmUmtsOptions;->card1DualModeStageinProgress:I

    .line 473
    invoke-virtual {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->makecard2subsForDeactivation()Z

    move-result v7

    if-nez v7, :cond_4d

    move v0, v5

    .line 487
    .end local v4           #subid:I
    :goto_3d
    if-nez v0, :cond_26

    .line 489
    new-instance v6, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;-><init>(Lcom/android/phone/MSimGsmUmtsOptions;Lcom/android/phone/MSimGsmUmtsOptions$1;)V

    invoke-virtual {v6, v1}, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;->Instance(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_26

    .restart local v4       #subid:I
    :cond_4d
    move v0, v6

    .line 473
    goto :goto_3d

    .line 476
    :cond_4f
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/phone/MSimGsmUmtsOptions;->card1DualModeStageinProgress:I

    .line 478
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->activateCard1DualModeGSM()V

    goto :goto_3d

    .line 480
    .end local v4           #subid:I
    :cond_56
    if-nez v1, :cond_5c

    .line 482
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->activateCard1DualModeCDMA()V

    goto :goto_3d

    .line 484
    :cond_5c
    const/4 v0, 0x1

    goto :goto_3d

    .end local v0           #iserr:Z
    .end local v1           #lIndex:I
    .end local v2           #oldIndex:I
    :cond_5e
    move v5, v6

    .line 496
    goto :goto_26
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 285
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_a

    .line 294
    :goto_9
    return v0

    .line 288
    :cond_a
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_12

    .line 290
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->setDualModePrefValueAndSummary()V

    goto :goto_9

    .line 294
    :cond_12
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_c

    .line 314
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 321
    :cond_c
    return-void

    .line 314
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
