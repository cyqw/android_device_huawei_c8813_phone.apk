.class public Lcom/android/phone/MSimCdmaOptions;
.super Ljava/lang/Object;
.source "MSimCdmaOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;
    }
.end annotation


# static fields
.field private static final IS_UMTS_GSM:Z


# instance fields
.field protected final DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

.field public card1DualModeStageinProgress:I

.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

.field private mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

.field private mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

.field public mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefCategory:Landroid/preference/PreferenceCategory;

.field public mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

.field private mPrefCdmaNetworkSelect:Landroid/preference/PreferenceScreen;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 121
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "umts_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimCdmaOptions;->IS_UMTS_GSM:Z

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "prefActivity"
    .parameter "prefScreen"
    .parameter "phone"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/MSimCdmaOptions;->DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/MSimCdmaOptions;->card1DualModeStageinProgress:I

    .line 581
    new-instance v0, Lcom/android/phone/MSimCdmaOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCdmaOptions$1;-><init>(Lcom/android/phone/MSimCdmaOptions;)V

    iput-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mHandler:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 126
    iput-object p2, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 127
    iput-object p3, p0, Lcom/android/phone/MSimCdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/MSimCdmaOptions;->create()V

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MSimCdmaOptions;)Landroid/preference/PreferenceActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MSimCdmaOptions;)Lcom/android/internal/telephony/msim/SubscriptionData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MSimCdmaOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->setDualModePrefValueAndSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MSimCdmaOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->activateCard1DualModeGSM()V

    return-void
.end method

.method private activateCard1DualModeCDMA()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 402
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->updateAllSubscriptions()V

    .line 404
    const/4 v1, 0x0

    .local v1, subid:I
    :goto_7
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v1, v2, :cond_4f

    .line 405
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v0, v2, v1

    .line 406
    .local v0, sub:Lcom/android/internal/telephony/msim/Subscription;
    if-nez v0, :cond_18

    .line 404
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 410
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

    .line 411
    :cond_2c
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 412
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 413
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 414
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 420
    .end local v0           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_4f
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-nez v2, :cond_97

    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    if-eq v2, v6, :cond_97

    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    if-ne v2, v6, :cond_97

    .line 424
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 425
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 426
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 427
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 428
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 431
    :cond_97
    return-void
.end method

.method private activateCard1DualModeGSM()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 376
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->updateAllSubscriptions()V

    .line 377
    const/4 v1, 0x0

    .local v1, subid:I
    :goto_7
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v1, v2, :cond_4f

    .line 378
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v0, v2, v1

    .line 379
    .local v0, sub:Lcom/android/internal/telephony/msim/Subscription;
    if-nez v0, :cond_18

    .line 377
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 383
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

    .line 384
    :cond_2c
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 385
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 386
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 387
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 393
    .end local v0           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_4f
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 394
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 395
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 396
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 397
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 399
    return-void
.end method

.method private deviceSupportsNvAndRuim()Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 230
    const-string v9, "ril.subscription.types"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, subscriptionsSupported:Ljava/lang/String;
    const/4 v3, 0x0

    .line 232
    .local v3, nvSupported:Z
    const/4 v4, 0x0

    .line 234
    .local v4, ruimSupported:Z
    iget-object v9, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v9}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "cdma_ssp"

    invoke-static {v9, v10, v7}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_19

    .line 252
    :goto_18
    return v8

    .line 238
    :cond_19
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_44

    .line 241
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_27
    if-ge v1, v2, :cond_44

    aget-object v5, v0, v1

    .line 242
    .local v5, subscriptionType:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 243
    const-string v9, "NV"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 244
    const/4 v3, 0x1

    .line 246
    :cond_38
    const-string v9, "RUIM"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 247
    const/4 v4, 0x1

    .line 241
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 252
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #subscriptionType:Ljava/lang/String;
    :cond_44
    if-eqz v3, :cond_4a

    if-eqz v4, :cond_4a

    :goto_48
    move v8, v7

    goto :goto_18

    :cond_4a
    move v7, v8

    goto :goto_48
.end method

.method private getCurrentDualModeSubscription()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 314
    const-string v0, "RUIM"

    .line 315
    .local v0, sDualModeNetworkApp:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v1

    .line 317
    .local v1, subid:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_21

    .line 318
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->updateAllSubscriptions()V

    .line 320
    iget-object v3, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_21
    const-string v3, "SIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "USIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 326
    :cond_31
    const/4 v2, 0x1

    .line 328
    :cond_32
    return v2
.end method

.method private setDualModePrefValueAndSummary()V
    .registers 4

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->getCurrentDualModeSubscription()I

    move-result v0

    .line 549
    .local v0, dualmodetype:I
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 550
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 551
    return-void
.end method

.method private updateAllSubscriptions()V
    .registers 5

    .prologue
    .line 335
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v2, v2, [Lcom/android/internal/telephony/msim/SubscriptionData;

    iput-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 336
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_1a

    .line 337
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-static {}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v3

    aput-object v3, v2, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 341
    :cond_1a
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;

    if-eqz v2, :cond_40

    .line 342
    new-instance v2, Lcom/android/internal/telephony/msim/SubscriptionData;

    sget v3, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    iput-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 343
    const/4 v0, 0x0

    :goto_28
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_47

    .line 344
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    .line 345
    .local v1, sub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 350
    .end local v1           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_40
    const-string v2, "MSimCdmaOptions"

    const-string v3, "onCreate: Card info not available: mCardSubscrInfo == NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_47
    return-void
.end method


# virtual methods
.method protected create()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 133
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 226
    :cond_8
    :goto_8
    return-void

    .line 137
    :cond_9
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v6, 0x7f060016

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 140
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "category_cdma_network"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    .line 142
    iget-object v6, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    sget-boolean v4, Lcom/android/phone/MSimCdmaOptions;->IS_UMTS_GSM:Z

    if-eqz v4, :cond_10d

    const v4, 0x7f0e03c6

    :goto_26
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 144
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "select_cdma_network_key"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaNetworkSelect:Landroid/preference/PreferenceScreen;

    .line 148
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "cdma_button_apn_key"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 150
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_52

    .line 151
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 152
    .local v2, lIntent:Landroid/content/Intent;
    if-eqz v2, :cond_52

    .line 153
    const-string v4, "subscription"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    .end local v2           #lIntent:Landroid/content/Intent;
    :cond_52
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "cdma_system_select_key"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CdmaSystemSelectListPreference;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    .line 162
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "cdma_subscription_key"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CdmaSubscriptionListPreference;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    .line 165
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v4, v0}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEnabled(Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->deviceSupportsNvAndRuim()Z

    move-result v4

    if-eqz v4, :cond_112

    .line 167
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v4, v0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setEnabled(Z)V

    .line 173
    :goto_7a
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1110028

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 175
    .local v3, voiceCapable:Z
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v4

    if-ne v4, v0, :cond_121

    .line 176
    .local v0, isLTE:Z
    :goto_8f
    if-nez v3, :cond_93

    if-eqz v0, :cond_a0

    .line 179
    :cond_93
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "cdma_activate_device_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    :cond_a0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_b0

    .line 185
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 192
    :cond_b0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    .line 195
    .local v1, isMultiSim:Z
    if-eqz v1, :cond_c1

    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    if-eqz v4, :cond_c1

    .line 196
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    :cond_c1
    if-eqz v1, :cond_ce

    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    if-eqz v4, :cond_ce

    .line 199
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :cond_ce
    if-eqz v1, :cond_e7

    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "cdma_activate_device_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_e7

    .line 202
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "cdma_activate_device_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    :cond_e7
    if-nez v1, :cond_f4

    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaNetworkSelect:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_f4

    .line 205
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaNetworkSelect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    :cond_f4
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "cdma_dual_mode_card_settings_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    .line 211
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-eqz v4, :cond_8

    .line 214
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 142
    .end local v0           #isLTE:Z
    .end local v1           #isMultiSim:Z
    .end local v3           #voiceCapable:Z
    :cond_10d
    const v4, 0x7f0e03ab

    goto/16 :goto_26

    .line 169
    :cond_112
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "cdma_subscription_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7a

    .restart local v3       #voiceCapable:Z
    :cond_121
    move v0, v5

    .line 175
    goto/16 :goto_8f
.end method

.method public isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 485
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

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

.method protected log(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 281
    const-string v0, "MSimCdmaOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public makecard2subsForDeactivation()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 358
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v0

    .line 359
    .local v0, subid:I
    if-ne v0, v3, :cond_e

    .line 360
    const/4 v1, 0x0

    .line 370
    :goto_d
    return v1

    .line 364
    :cond_e
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    iput v3, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 365
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    iput v3, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 366
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    iput v3, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 367
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, v0

    iput v0, v2, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 368
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

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

    .line 437
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, option:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_5e

    .line 439
    iget-object v7, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 440
    .local v1, lIndex:I
    const/4 v0, 0x0

    .line 442
    .local v0, iserr:Z
    iget-object v7, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 443
    .local v2, oldIndex:I
    if-ne v1, v2, :cond_27

    .line 445
    const-string v6, "MSimCdmaOptions"

    const-string v7, "preferenceChange; same mode selected, so no need to modify it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v0           #iserr:Z
    .end local v1           #lIndex:I
    .end local v2           #oldIndex:I
    :cond_26
    :goto_26
    return v5

    .line 450
    .restart local v0       #iserr:Z
    .restart local v1       #lIndex:I
    .restart local v2       #oldIndex:I
    :cond_27
    if-ne v1, v5, :cond_56

    .line 452
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v4

    .line 454
    .local v4, subid:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_4f

    .line 456
    iput v6, p0, Lcom/android/phone/MSimCdmaOptions;->card1DualModeStageinProgress:I

    .line 457
    invoke-virtual {p0}, Lcom/android/phone/MSimCdmaOptions;->makecard2subsForDeactivation()Z

    move-result v7

    if-nez v7, :cond_4d

    move v0, v5

    .line 471
    .end local v4           #subid:I
    :goto_3d
    if-nez v0, :cond_26

    .line 473
    new-instance v6, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;-><init>(Lcom/android/phone/MSimCdmaOptions;Lcom/android/phone/MSimCdmaOptions$1;)V

    invoke-virtual {v6, v1}, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;->Instance(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_26

    .restart local v4       #subid:I
    :cond_4d
    move v0, v6

    .line 457
    goto :goto_3d

    .line 460
    :cond_4f
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/phone/MSimCdmaOptions;->card1DualModeStageinProgress:I

    .line 462
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->activateCard1DualModeGSM()V

    goto :goto_3d

    .line 464
    .end local v4           #subid:I
    :cond_56
    if-nez v1, :cond_5c

    .line 466
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->activateCard1DualModeCDMA()V

    goto :goto_3d

    .line 468
    :cond_5c
    const/4 v0, 0x1

    goto :goto_3d

    .end local v0           #iserr:Z
    .end local v1           #lIndex:I
    .end local v2           #oldIndex:I
    :cond_5e
    move v5, v6

    .line 480
    goto :goto_26
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 256
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_system_select_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 257
    const-string v1, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCdmaOptions;->log(Ljava/lang/String;)V

    .line 269
    :goto_12
    return v0

    .line 260
    :cond_13
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_subscription_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 261
    const-string v1, "preferenceTreeClick: return CDMA_SUBSCRIPTION_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_12

    .line 265
    :cond_25
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2c

    .line 266
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->setDualModePrefValueAndSummary()V

    .line 269
    :cond_2c
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public setEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_27

    .line 292
    iget-object v3, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    if-eqz p1, :cond_28

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 296
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getCurrentDualModeStatus()I

    move-result v0

    if-eq v0, v1, :cond_22

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 300
    :cond_22
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 304
    :cond_27
    return-void

    :cond_28
    move v0, v2

    .line 292
    goto :goto_b
.end method

.method public showDialog(Landroid/preference/Preference;)V
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 274
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 278
    :cond_12
    :goto_12
    return-void

    .line 275
    :cond_13
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_subscription_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 276
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_12
.end method
