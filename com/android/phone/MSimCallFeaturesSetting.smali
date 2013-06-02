.class public Lcom/android/phone/MSimCallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "MSimCallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field public static final DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

.field static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final IS_UMTS_GSM:Z

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field mButtonQuickResponses:Landroid/preference/PreferenceScreen;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mCallForward:[Landroid/preference/PreferenceScreen;

.field mChangingVMorFwdDueToProviderChange:[Z

.field mCurrentDialogId:I

.field private mExpectedChangeResultReasons:[Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:[Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mIPCallSettings:[Landroid/preference/PreferenceScreen;

.field private mIsSubActive:[Z

.field private mMoreOptions:[Landroid/preference/PreferenceScreen;

.field private mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:[Ljava/lang/String;

.field private mNumPhones:I

.field private mOldVmNumber:[Ljava/lang/String;

.field mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneObj:[Lcom/android/internal/telephony/Phone;

.field private mPhoneType:[I

.field mPreviousVMProviderKey:[Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:[Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field mSimCategory:[Landroid/preference/PreferenceCategory;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

.field private mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

.field mVMChangeCompletedSuccesfully:[Z

.field mVMOrFwdSetError:[I

.field mVMProviderSettingsForced:[Z

.field private mVMProvidersData:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:[Landroid/os/AsyncResult;

.field mVoicemailProviders:[Landroid/preference/ListPreference;

.field mVoicemailSettings:[Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 301
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vm1"

    aput-object v1, v0, v2

    const-string v1, "vm2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    .line 309
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 330
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "umts_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimCallFeaturesSetting;->IS_UMTS_GSM:Z

    .line 345
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    nop

    :array_32
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 133
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 427
    new-array v0, v1, [Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    .line 432
    new-array v0, v1, [[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    .line 438
    new-array v0, v1, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    .line 445
    new-array v0, v1, [Ljava/util/Collection;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mExpectedChangeResultReasons:[Ljava/util/Collection;

    .line 450
    new-array v0, v1, [Landroid/os/AsyncResult;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailChangeResult:[Landroid/os/AsyncResult;

    .line 455
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    .line 460
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    .line 466
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProviderSettingsForced:[Z

    .line 472
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    .line 478
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMChangeCompletedSuccesfully:[Z

    .line 484
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mFwdChangesRequireRollback:[Z

    .line 490
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    .line 500
    new-array v0, v1, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    .line 503
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    .line 508
    new-array v0, v1, [[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    .line 509
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    .line 533
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mReadingSettingsForDefaultProvider:[Z

    .line 943
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSetting$1;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1100
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSetting$2;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1159
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSetting$3;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    .line 1815
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSetting$4;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimCallFeaturesSetting;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->checkVMChangeSuccess(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MSimCallFeaturesSetting;)[Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MSimCallFeaturesSetting;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->checkForwardingCompleted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/MSimCallFeaturesSetting;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->checkFwdChangeSuccess(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MSimCallFeaturesSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MSimCallFeaturesSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->handleSetVMOrFwdMessage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MSimCallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->enableOrDisableCallFeatureSettings()V

    return-void
.end method

.method private checkForwardingCompleted(I)Z
    .registers 6
    .parameter "sub"

    .prologue
    .line 1200
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aget-object v3, v3, p1

    if-nez v3, :cond_8

    .line 1201
    const/4 v2, 0x1

    .line 1213
    .local v2, result:Z
    :cond_7
    :goto_7
    return v2

    .line 1205
    .end local v2           #result:Z
    :cond_8
    const/4 v2, 0x1

    .line 1206
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mExpectedChangeResultReasons:[Ljava/util/Collection;

    aget-object v3, v3, p1

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1207
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aget-object v3, v3, p1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    .line 1208
    const/4 v2, 0x0

    .line 1209
    goto :goto_7
.end method

.method private checkFwdChangeSuccess(I)Ljava/lang/String;
    .registers 7
    .parameter "sub"

    .prologue
    .line 1219
    const/4 v3, 0x0

    .line 1220
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aget-object v4, v4, p1

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1222
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1223
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1224
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1225
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_d

    .line 1226
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1227
    if-nez v3, :cond_2b

    .line 1228
    const-string v3, ""

    .line 1233
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_2b
    return-object v3
.end method

.method private checkVMChangeSuccess(I)Ljava/lang/String;
    .registers 4
    .parameter "sub"

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailChangeResult:[Landroid/os/AsyncResult;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_17

    .line 1241
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailChangeResult:[Landroid/os/AsyncResult;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_16

    .line 1243
    const-string v0, ""

    .line 1247
    .end local v0           #msg:Ljava/lang/String;
    :cond_16
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, p2

    if-nez v0, :cond_7

    .line 2230
    :goto_6
    return-void

    .line 2226
    :cond_7
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v0, v0, p2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6
.end method

.method private dismissDialogSafely(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 895
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 901
    :goto_3
    return-void

    .line 896
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private enableOrDisableCallFeatureSettings()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1824
    const/4 v0, 0x0

    .local v0, lSubscription:I
    :goto_3
    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    if-ge v0, v1, :cond_3f

    .line 1825
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v1, v1, v0

    if-eqz v1, :cond_30

    .line 1827
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isCardPresent(I)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v2

    :goto_20
    aput-boolean v1, v4, v0

    .line 1829
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v4, v1, v0

    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v3

    :goto_2d
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 1824
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_33
    move v1, v3

    .line 1827
    goto :goto_20

    .line 1829
    :cond_35
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_3d

    move v1, v2

    goto :goto_2d

    :cond_3d
    move v1, v3

    goto :goto_2d

    .line 1833
    :cond_3f
    return-void
.end method

.method private getCurrentVoicemailProviderKey(I)Ljava/lang/String;
    .registers 4
    .parameter "sub"

    .prologue
    .line 2233
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2234
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_b

    .end local v0           #key:Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0       #key:Ljava/lang/String;
    :cond_b
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    aget-object v0, v1, p1

    goto :goto_a
.end method

.method private handleSetVMOrFwdMessage(I)V
    .registers 6
    .parameter "sub"

    .prologue
    .line 1251
    const/4 v2, 0x1

    .line 1252
    .local v2, success:Z
    const/4 v1, 0x0

    .line 1253
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1254
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aget-object v3, v3, p1

    if-eqz v3, :cond_12

    .line 1255
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->checkFwdChangeSuccess(I)Ljava/lang/String;

    move-result-object v0

    .line 1256
    if-eqz v0, :cond_12

    .line 1257
    const/4 v2, 0x0

    .line 1258
    const/4 v1, 0x1

    .line 1261
    :cond_12
    if-eqz v2, :cond_1b

    .line 1262
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->checkVMChangeSuccess(I)Ljava/lang/String;

    move-result-object v0

    .line 1263
    if-eqz v0, :cond_1b

    .line 1264
    const/4 v2, 0x0

    .line 1267
    :cond_1b
    if-eqz v2, :cond_26

    .line 1268
    const/16 v3, 0x2da

    invoke-direct {p0, v3, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->handleVMAndFwdSetSuccess(II)V

    .line 1269
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVoiceNumberField(I)V

    .line 1277
    :goto_25
    return-void

    .line 1271
    :cond_26
    if-eqz v1, :cond_2e

    .line 1272
    const/16 v3, 0x2c6

    invoke-direct {p0, v3, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->handleVMOrFwdSetError(II)V

    goto :goto_25

    .line 1274
    :cond_2e
    const/16 v3, 0x2bc

    invoke-direct {p0, v3, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->handleVMOrFwdSetError(II)V

    goto :goto_25
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .registers 5
    .parameter "objValue"

    .prologue
    .line 1951
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1952
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 1953
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1955
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1956
    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1924
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1925
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1929
    if-eq v0, v2, :cond_36

    .line 1930
    packed-switch v0, :pswitch_data_42

    move v0, v1

    .line 1942
    :goto_1b
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1943
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 1944
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1945
    const-string v2, "ttyPreferredMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1946
    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 1948
    :cond_36
    return-void

    .line 1935
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1b

    .line 1930
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method private handleVMAndFwdSetSuccess(II)V
    .registers 5
    .parameter "msgId"
    .parameter "sub"

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p2

    .line 1293
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->showVMDialog(II)V

    .line 1294
    return-void
.end method

.method private handleVMBtnClickRequest(I)V
    .registers 6
    .parameter "sub"

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->getCurrentVoicemailProviderKey(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V

    .line 860
    return-void
.end method

.method private handleVMOrFwdSetError(II)V
    .registers 5
    .parameter "msgId"
    .parameter "sub"

    .prologue
    const/4 v1, 0x0

    .line 1280
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_13

    .line 1281
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    aput p1, v0, p2

    .line 1282
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    aput-boolean v1, v0, p2

    .line 1283
    invoke-direct {p0, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->switchToPreviousVoicemailProvider(I)V

    .line 1289
    :goto_12
    return-void

    .line 1286
    :cond_13
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    aput-boolean v1, v0, p2

    .line 1287
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->showVMDialog(II)V

    .line 1288
    invoke-direct {p0, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVoiceNumberField(I)V

    goto :goto_12
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .registers 9
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 1028
    const/4 v4, 0x0

    .line 1029
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_f

    .line 1030
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_f

    aget-object v2, v0, v1

    .line 1031
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_10

    .line 1032
    move-object v4, v2

    .line 1037
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_f
    return-object v4

    .line 1030
    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1       #i$:I
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3       #len$:I
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private initVoiceMailProviders(I)V
    .registers 14
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2043
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez p1, :cond_94

    const-string v0, "vm_numbers1"

    :goto_c
    invoke-virtual {v4, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    aput-object v0, v1, p1

    .line 2048
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 2049
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 2050
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2052
    :goto_38
    if-eqz v0, :cond_3d

    .line 2053
    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;I)V

    :cond_3d
    move-object v1, v0

    .line 2057
    :goto_3e
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2060
    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2061
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    aget-object v4, v4, p1

    new-instance v6, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;

    invoke-direct {v6, p0, v5, v2}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2065
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2066
    const-string v2, "com.android.phone.CallFeaturesSettingUG.CONFIGURE_VOICEMAIL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2067
    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 2068
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v4, v0

    .line 2072
    :goto_76
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_be

    .line 2073
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2074
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2075
    invoke-direct {p0, v8}, Lcom/android/phone/MSimCallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 2076
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_98

    .line 2077
    add-int/lit8 v4, v4, -0x1

    .line 2072
    :goto_90
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_76

    .line 2043
    :cond_94
    const-string v0, "vm_numbers2"

    goto/16 :goto_c

    .line 2080
    :cond_98
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2081
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 2082
    const-string v11, "com.android.phone.CallFeaturesSettingUG.CONFIGURE_VOICEMAIL"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2083
    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2085
    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    aget-object v8, v8, p1

    new-instance v11, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;

    invoke-direct {v11, p0, v0, v10}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    .line 2093
    :cond_be
    new-array v6, v4, [Ljava/lang/String;

    .line 2094
    new-array v4, v4, [Ljava/lang/String;

    .line 2095
    aput-object v5, v6, v3

    .line 2096
    sget-object v0, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    aget-object v0, v0, p1

    aput-object v0, v4, v3

    .line 2097
    const/4 v0, 0x1

    move v1, v3

    move v2, v0

    .line 2098
    :goto_cd
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_100

    .line 2099
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2100
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    aget-object v0, v0, p1

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    .line 2098
    :goto_e9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_cd

    .line 2103
    :cond_ed
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    aget-object v0, v0, p1

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    aput-object v0, v6, v2

    .line 2104
    aput-object v5, v4, v2

    .line 2105
    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    .line 2108
    :cond_100
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2110
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    aget-object v1, v4, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2113
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2115
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->getCurrentVoicemailProviderKey(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 2116
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;I)V

    .line 2117
    return-void

    :cond_127
    move-object v0, v2

    goto/16 :goto_38

    :cond_12a
    move-object v1, v2

    goto/16 :goto_3e
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1812
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .registers 5
    .parameter "oldInfo"
    .parameter "newInfo"

    .prologue
    .line 1042
    const/4 v0, 0x1

    .line 1043
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 1046
    if-eqz p1, :cond_c

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 1047
    const/4 v0, 0x0

    .line 1050
    :cond_c
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;I)Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2187
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v2, v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#VMNumber1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2189
    if-nez v3, :cond_28

    .line 2216
    :goto_27
    return-object v0

    .line 2193
    :cond_28
    sget-object v0, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#FWDSettings1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2195
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v2, v2, p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2196
    if-lez v2, :cond_11b

    .line 2197
    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 2198
    :goto_65
    array-length v5, v2

    if-ge v0, v5, :cond_11a

    .line 2199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2200
    new-instance v6, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v6, v2, v0

    .line 2201
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v7, v7, p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Status"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2203
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v7, v7, p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Reason"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2206
    aget-object v6, v2, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2207
    aget-object v6, v2, v0

    const/16 v7, 0x91

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2208
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v7, v7, p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Number"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2210
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v7, v7, p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "#Time"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x14

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 2198
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_65

    :cond_11a
    move-object v0, v2

    .line 2215
    :cond_11b
    new-instance v1, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    move-object v0, v1

    .line 2216
    goto/16 :goto_27
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 3
    .parameter "ai"

    .prologue
    .line 2120
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2150
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v1, v1, p3

    if-nez v1, :cond_8

    .line 2176
    :cond_7
    :goto_7
    return-void

    .line 2153
    :cond_8
    invoke-direct {p0, p1, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;I)Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v1

    .line 2154
    invoke-virtual {p2, v1}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2158
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v1, v1, p3

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#VMNumber1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#FWDSettings1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2161
    iget-object v3, p2, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2162
    sget-object v4, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v3, v4, :cond_f6

    .line 2163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2164
    :goto_6a
    array-length v4, v3

    if-ge v0, v4, :cond_10c

    .line 2165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2166
    aget-object v5, v3, v0

    .line 2167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Reason"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "#Time"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2164
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6a

    .line 2173
    :cond_f6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#Length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2175
    :cond_10c
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_7
.end method

.method private resetForwardingChangeState(I)V
    .registers 4
    .parameter "sub"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, p1

    .line 1055
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mExpectedChangeResultReasons:[Ljava/util/Collection;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    aput-object v1, v0, p1

    .line 1056
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V
    .registers 10
    .parameter "key"
    .parameter "newSettings"
    .parameter "sub"

    .prologue
    const/4 v5, 0x0

    .line 905
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    aput-object v2, v1, p3

    .line 907
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    aget-object v1, v1, p3

    if-nez v1, :cond_13

    .line 908
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p3

    .line 911
    :cond_13
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v2, p2, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v2, v1, p3

    .line 914
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    .line 915
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v2, v1, p3

    .line 919
    :cond_2a
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    aget-object v1, v1, p3

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v1, v1, p3

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_46

    .line 920
    const/16 v1, 0x2e4

    invoke-direct {p0, v1, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->showVMDialog(II)V

    .line 941
    :goto_45
    return-void

    .line 924
    :cond_46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V

    .line 925
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMChangeCompletedSuccesfully:[Z

    aput-boolean v5, v1, p3

    .line 926
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mFwdChangesRequireRollback:[Z

    aput-boolean v5, v1, p3

    .line 927
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    aput v5, v1, p3

    .line 928
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 929
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mReadingSettingsForDefaultProvider:[Z

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v2, v2, p3

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v1, p3

    .line 931
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v2, v1, p3

    .line 932
    const/4 v0, 0x0

    .local v0, i:I
    :goto_79
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_9b

    .line 933
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v1, v1, p3

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 934
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p3

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    add-int/lit16 v4, p3, 0x208

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 932
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 937
    :cond_9b
    const/16 v1, 0x26c

    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_45

    .line 939
    .end local v0           #i:I
    :cond_a1
    invoke-direct {p0, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2(I)V

    goto :goto_45
.end method

.method private saveVoiceMailAndForwardingNumberStage2(I)V
    .registers 14
    .parameter "sub"

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 1061
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aput-object v1, v0, p1

    .line 1062
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailChangeResult:[Landroid/os/AsyncResult;

    aput-object v1, v0, p1

    .line 1063
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_66

    .line 1064
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->resetForwardingChangeState(I)V

    .line 1065
    const/4 v8, 0x0

    .local v8, i:I
    :goto_16
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v0, v0, p1

    array-length v0, v0

    if-ge v8, v0, :cond_60

    .line 1066
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v0, v0, p1

    aget-object v7, v0, v8

    .line 1068
    .local v7, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v0, v0, p1

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/MSimCallFeaturesSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 1070
    .local v6, doUpdate:Z
    if-eqz v6, :cond_5b

    .line 1071
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mExpectedChangeResultReasons:[Ljava/util/Collection;

    aget-object v0, v0, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1073
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e

    const/4 v1, 0x3

    :goto_48
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    add-int/lit16 v10, p1, 0x1fe

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1065
    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_5e
    move v1, v9

    .line 1073
    goto :goto_48

    .line 1084
    .end local v6           #doUpdate:Z
    .end local v7           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_60
    const/16 v0, 0x262

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    .line 1088
    .end local v8           #i:I
    :goto_65
    return-void

    .line 1086
    :cond_66
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->setVMNumberWithCarrier(I)V

    goto :goto_65
.end method

.method private showDialogIfForeground(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForeground:Z

    if-eqz v0, :cond_7

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialog(I)V

    .line 891
    :cond_7
    return-void
.end method

.method private showVMDialog(II)V
    .registers 4
    .parameter "msgStatus"
    .parameter "sub"

    .prologue
    .line 1444
    sparse-switch p1, :sswitch_data_22

    .line 1466
    :goto_3
    return-void

    .line 1448
    :sswitch_4
    const/16 v0, 0x19a

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1451
    :sswitch_a
    const/16 v0, 0x1a4

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1454
    :sswitch_10
    add-int/lit16 v0, p2, 0x1ae

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1457
    :sswitch_16
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1460
    :sswitch_1c
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1444
    :sswitch_data_22
    .sparse-switch
        0x2bc -> :sswitch_4
        0x2c6 -> :sswitch_a
        0x2d0 -> :sswitch_10
        0x2da -> :sswitch_1c
        0x2e4 -> :sswitch_16
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;I)V
    .registers 10
    .parameter "preference"
    .parameter "sub"

    .prologue
    .line 2132
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 2133
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_9
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_25

    .line 2134
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_26

    .line 2135
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2140
    :cond_25
    return-void

    .line 2133
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method private switchToPreviousVoicemailProvider(I)V
    .registers 16
    .parameter "sub"

    .prologue
    const/4 v12, 0x0

    .line 702
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_a4

    .line 703
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMChangeCompletedSuccesfully:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mFwdChangesRequireRollback:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_a1

    .line 705
    :cond_13
    const/16 v0, 0x276

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    .line 706
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;I)Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 708
    .local v9, prevSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMChangeCompletedSuccesfully:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_4b

    .line 709
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    iget-object v1, v9, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    aput-object v1, v0, p1

    .line 710
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    add-int/lit16 v4, p1, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 715
    :cond_4b
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mFwdChangesRequireRollback:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_a4

    .line 716
    iget-object v8, v9, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 718
    .local v8, prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v8, :cond_a4

    .line 719
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aget-object v11, v0, p1

    .line 721
    .local v11, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->resetForwardingChangeState(I)V

    .line 722
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5d
    array-length v0, v8

    if-ge v7, v0, :cond_a4

    .line 723
    aget-object v6, v8, v7

    .line 726
    .local v6, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 727
    .local v10, result:Landroid/os/AsyncResult;
    if-eqz v10, :cond_9c

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_9c

    .line 728
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mExpectedChangeResultReasons:[Ljava/util/Collection;

    aget-object v0, v0, p1

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 729
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9f

    const/4 v1, 0x3

    :goto_8b
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    add-int/lit16 v13, p1, 0x1fe

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 722
    :cond_9c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    :cond_9f
    move v1, v12

    .line 729
    goto :goto_8b

    .line 743
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9           #prevSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_a1
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->onRevertDone(I)V

    .line 746
    :cond_a4
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1959
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1960
    packed-switch p1, :pswitch_data_24

    .line 1968
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1969
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1971
    :goto_1b
    return-void

    .line 1965
    :pswitch_1c
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 1960
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2011
    .line 2012
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;

    .line 2018
    if-nez v0, :cond_35

    .line 2019
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, p2

    const v1, 0x7f0e008f

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2020
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, p2

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2021
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, p2

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2022
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 2031
    :goto_34
    return-void

    .line 2024
    :cond_35
    iget-object v1, v0, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 2025
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2026
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v2, v2, p2

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e01da

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2028
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v1, v1, p2

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2029
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v1, v1, p2

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_34
.end method

.method private updateVoiceNumberField(I)V
    .registers 5
    .parameter "sub"

    .prologue
    .line 1300
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v1, v1, p1

    if-nez v1, :cond_7

    .line 1312
    :goto_6
    return-void

    .line 1304
    :cond_7
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 1305
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-nez v1, :cond_1f

    .line 1306
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p1

    .line 1308
    :cond_1f
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1309
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_40

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 1311
    .local v0, summary:Ljava/lang/String;
    :goto_38
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1309
    .end local v0           #summary:Ljava/lang/String;
    :cond_40
    const v1, 0x7f0e01d9

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_38
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;II)V
    .registers 14
    .parameter "ar"
    .parameter "idx"
    .parameter "sub"

    .prologue
    const/16 v7, 0x26c

    const/4 v9, 0x0

    .line 957
    const/4 v2, 0x0

    .line 958
    .local v2, error:Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    .line 961
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 963
    :cond_a
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_14

    .line 964
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #error:Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 968
    .restart local v2       #error:Ljava/lang/Throwable;
    :cond_14
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, p3

    if-nez v5, :cond_1b

    .line 1025
    :cond_1a
    :goto_1a
    return-void

    .line 973
    :cond_1b
    if-eqz v2, :cond_2b

    .line 975
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v6, 0x0

    aput-object v6, v5, p3

    .line 976
    invoke-direct {p0, v7}, Lcom/android/phone/MSimCallFeaturesSetting;->dismissDialogSafely(I)V

    .line 977
    const/16 v5, 0x2d0

    invoke-direct {p0, v5, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->showVMDialog(II)V

    goto :goto_1a

    .line 982
    :cond_2b
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 983
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 984
    .local v3, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_34
    array-length v5, v0

    if-ge v4, v5, :cond_41

    .line 985
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_92

    .line 986
    aget-object v3, v0, v4

    .line 990
    :cond_41
    if-nez v3, :cond_95

    .line 994
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 995
    .restart local v3       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 996
    sget-object v5, Lcom/android/phone/MSimCallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 997
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1004
    :cond_53
    :goto_53
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, p3

    aput-object v3, v5, p2

    .line 1007
    const/4 v1, 0x1

    .line 1008
    .local v1, done:Z
    const/4 v4, 0x0

    :goto_5b
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, p3

    array-length v5, v5

    if-ge v4, v5, :cond_6b

    .line 1009
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, p3

    aget-object v5, v5, v4

    if-nez v5, :cond_a4

    .line 1010
    const/4 v1, 0x0

    .line 1014
    :cond_6b
    if-eqz v1, :cond_1a

    .line 1015
    invoke-direct {p0, v7}, Lcom/android/phone/MSimCallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1016
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mReadingSettingsForDefaultProvider:[Z

    aget-boolean v5, v5, p3

    if-eqz v5, :cond_8e

    .line 1017
    sget-object v5, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    aget-object v5, v5, p3

    new-instance v6, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v7, v7, p3

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v8, v8, p3

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V

    .line 1019
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mReadingSettingsForDefaultProvider:[Z

    aput-boolean v9, v5, p3

    .line 1021
    :cond_8e
    invoke-direct {p0, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2(I)V

    goto :goto_1a

    .line 984
    .end local v1           #done:Z
    :cond_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 1000
    :cond_95
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_a1

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_53

    .line 1001
    :cond_a1
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_53

    .line 1008
    .restart local v1       #done:Z
    :cond_a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 22
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 764
    const/16 v2, 0xa

    move/from16 v0, p1

    if-eq v0, v2, :cond_c

    const/16 v2, 0xb

    move/from16 v0, p1

    if-ne v0, v2, :cond_af

    .line 765
    :cond_c
    const/4 v10, 0x0

    .line 766
    .local v10, failure:Z
    const/16 v2, 0xa

    move/from16 v0, p1

    if-ne v0, v2, :cond_33

    const/4 v15, 0x0

    .line 769
    .local v15, sub:I
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProviderSettingsForced:[Z

    aget-boolean v14, v2, v15

    .line 770
    .local v14, isVMProviderSettingsForced:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProviderSettingsForced:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v15

    .line 772
    const/16 v17, 0x0

    .line 773
    .local v17, vmNum:Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_35

    .line 774
    const/4 v10, 0x1

    .line 798
    :cond_29
    :goto_29
    if-eqz v10, :cond_82

    .line 799
    if-eqz v14, :cond_32

    .line 800
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/MSimCallFeaturesSetting;->switchToPreviousVoicemailProvider(I)V

    .line 847
    .end local v10           #failure:Z
    .end local v14           #isVMProviderSettingsForced:Z
    .end local v15           #sub:I
    .end local v17           #vmNum:Ljava/lang/String;
    :cond_32
    :goto_32
    return-void

    .line 766
    .restart local v10       #failure:Z
    :cond_33
    const/4 v15, 0x1

    goto :goto_14

    .line 776
    .restart local v14       #isVMProviderSettingsForced:Z
    .restart local v15       #sub:I
    .restart local v17       #vmNum:Ljava/lang/String;
    :cond_35
    if-nez p3, :cond_39

    .line 777
    const/4 v10, 0x1

    goto :goto_29

    .line 779
    :cond_39
    const-string v2, "com.android.phone.Signout"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 780
    if-eqz v14, :cond_4c

    .line 781
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/MSimCallFeaturesSetting;->switchToPreviousVoicemailProvider(I)V

    goto :goto_32

    .line 783
    :cond_4c
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/MSimCallFeaturesSetting;->getCurrentVoicemailProviderKey(I)Ljava/lang/String;

    move-result-object v16

    .line 784
    .local v16, victim:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    .local v13, i:Landroid/content/Intent;
    const-string v2, "com.android.phone.ProviderToIgnore"

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    const-string v2, "SUBSCRIPTION_ID"

    invoke-virtual {v13, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 787
    const/high16 v2, 0x400

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 788
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_32

    .line 792
    .end local v13           #i:Landroid/content/Intent;
    .end local v16           #victim:Ljava/lang/String;
    :cond_70
    const-string v2, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 793
    if-eqz v17, :cond_80

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_29

    .line 794
    :cond_80
    const/4 v10, 0x1

    goto :goto_29

    .line 806
    :cond_82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    aput-boolean v14, v2, v15

    .line 807
    const-string v2, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 811
    .local v11, fwdNum:Ljava/lang/String;
    const-string v2, "com.android.phone.ForwardingNumberTime"

    const/16 v3, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 813
    .local v12, fwdNumTime:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/MSimCallFeaturesSetting;->getCurrentVoicemailProviderKey(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v11, v12}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v15}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V

    goto :goto_32

    .line 818
    .end local v10           #failure:Z
    .end local v11           #fwdNum:Ljava/lang/String;
    .end local v12           #fwdNumTime:I
    .end local v14           #isVMProviderSettingsForced:Z
    .end local v15           #sub:I
    .end local v17           #vmNum:Ljava/lang/String;
    :cond_af
    const/16 v2, 0x14

    move/from16 v0, p1

    if-eq v0, v2, :cond_bb

    const/16 v2, 0x15

    move/from16 v0, p1

    if-ne v0, v2, :cond_f0

    .line 819
    :cond_bb
    const/16 v2, 0x14

    move/from16 v0, p1

    if-ne v0, v2, :cond_ee

    const/4 v15, 0x0

    .line 820
    .restart local v15       #sub:I
    :goto_c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 821
    .local v8, IPData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v2, v2, v15

    if-eqz v2, :cond_32

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v2, v2, v15

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0275

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .end local v8           #IPData:Ljava/lang/String;
    :cond_e9
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 819
    .end local v15           #sub:I
    :cond_ee
    const/4 v15, 0x1

    goto :goto_c2

    .line 829
    :cond_f0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_32

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/phone/MSimCallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 835
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_32

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 839
    packed-switch p1, :pswitch_data_126

    goto/16 :goto_32

    .line 842
    :pswitch_113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 839
    nop

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_113
        :pswitch_113
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v2, 0x1af

    const/16 v1, 0x1ae

    .line 1411
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1412
    packed-switch p2, :pswitch_data_42

    .line 1437
    :cond_a
    :goto_a
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1438
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->finish()V

    .line 1440
    :cond_1d
    :goto_1d
    return-void

    .line 1416
    :pswitch_1e
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    if-eq v0, v1, :cond_26

    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v2, :cond_a

    .line 1419
    :cond_26
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    add-int/lit16 v0, v0, -0x1ae

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->switchToPreviousVoicemailProvider(I)V

    goto :goto_a

    .line 1423
    :pswitch_2e
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    if-eq v0, v1, :cond_36

    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v2, :cond_3e

    .line 1426
    :cond_36
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    add-int/lit16 v0, v0, -0x1ae

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2(I)V

    goto :goto_1d

    .line 1428
    :cond_3e
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->finish()V

    goto :goto_1d

    .line 1412
    :pswitch_data_42
    .packed-switch -0x3
        :pswitch_a
        :pswitch_1e
        :pswitch_2e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1502
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1504
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1735
    :cond_c
    :goto_c
    return-void

    .line 1508
    :cond_d
    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1510
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1512
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1515
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 1516
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    .line 1518
    const-string v0, "button_respond_via_sms_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonQuickResponses:Landroid/preference/PreferenceScreen;

    .line 1521
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    .line 1522
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    .line 1523
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v0, v0, [Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    .line 1524
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v0, v0, [Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    .line 1525
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v0, v0, [Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    .line 1526
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v0, v0, [Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    .line 1527
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v0, v0, [Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    .line 1528
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    .line 1529
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    .line 1530
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v0, v0, [Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    .line 1531
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v0, v0, [Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    .line 1532
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v0, v0, [Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    .line 1534
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v0, v2

    .line 1535
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v0, v1

    .line 1537
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_fdn_key1"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v3, v2

    .line 1538
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_fdn_key2"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v3, v1

    .line 1539
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    const-string v0, "button_voicemail_key1"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    aput-object v0, v3, v2

    .line 1540
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    const-string v0, "button_voicemail_key2"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    aput-object v0, v3, v1

    .line 1541
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    const-string v0, "button_voicemail_provider_key1"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    aput-object v0, v3, v2

    .line 1542
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    const-string v0, "button_voicemail_provider_key2"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    aput-object v0, v3, v1

    .line 1543
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_ipcall_setting_key1"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v3, v2

    .line 1544
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_ipcall_setting_key2"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v3, v1

    .line 1545
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    const-string v0, "button_sim_key1"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    aput-object v0, v3, v2

    .line 1546
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    const-string v0, "button_sim_key2"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    aput-object v0, v3, v1

    .line 1547
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_voicemail_setting_key1"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v3, v2

    .line 1548
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_voicemail_setting_key2"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v3, v1

    move v3, v2

    .line 1550
    :goto_129
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    if-ge v3, v0, :cond_304

    .line 1551
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    aput-object v5, v0, v3

    .line 1552
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    aput v5, v0, v3

    .line 1554
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v0

    if-eqz v0, :cond_25c

    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isCardPresent(I)Z

    move-result v0

    if-eqz v0, :cond_25c

    move v0, v1

    :goto_158
    aput-boolean v0, v5, v3

    .line 1556
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    aget v0, v0, v3

    const/4 v5, 0x2

    if-ne v0, v5, :cond_25f

    .line 1557
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, v3

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1559
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, v3

    const-string v5, "button_gsm_cf_expand_key1"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1560
    if-eqz v0, :cond_181

    .line 1562
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v5, v5, v3

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1566
    :cond_181
    const-string v0, "button_gsm_more_expand_key1"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1567
    if-eqz v0, :cond_192

    .line 1569
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v5, v5, v3

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1572
    :cond_192
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_cdma_cf_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v5, v3

    .line 1573
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v5, v3

    .line 1603
    :cond_1aa
    :goto_1aa
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1be

    .line 1604
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v5, v0, v3

    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2e8

    move v0, v1

    :goto_1bb
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 1606
    :cond_1be
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1d6

    .line 1607
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1608
    if-eqz v5, :cond_1d6

    .line 1609
    const-string v6, "subscription"

    if-nez v3, :cond_2eb

    move v0, v2

    :goto_1d3
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1613
    :cond_1d6
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, v3

    if-eqz v0, :cond_221

    .line 1616
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "ipcall_enabled"

    invoke-static {v0, v5, v1}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1618
    if-eqz v0, :cond_2ee

    move v0, v1

    .line 1619
    :goto_1e9
    if-nez v0, :cond_1ef

    sget-boolean v0, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-eqz v0, :cond_2f4

    .line 1621
    :cond_1ef
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1622
    if-eqz v5, :cond_201

    .line 1623
    const-string v6, "subscription"

    if-nez v3, :cond_2f1

    move v0, v2

    :goto_1fe
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1626
    :cond_201
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1627
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v5, v5, v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_21e

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e0275

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_21e
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1635
    :cond_221
    :goto_221
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, v3

    if-eqz v0, :cond_231

    .line 1636
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1637
    invoke-direct {p0, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->initVoiceMailProviders(I)V

    .line 1639
    :cond_231
    invoke-direct {p0, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVoiceNumberField(I)V

    .line 1642
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v0, v0, v3

    if-eqz v0, :cond_257

    .line 1643
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v5, v0, v3

    if-nez v3, :cond_301

    move v0, v2

    :goto_241
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, p0, v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1645
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1647
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v0, v0, v3

    const v5, 0x7f0e016d

    invoke-virtual {v0, v5}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1550
    :cond_257
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_129

    :cond_25c
    move v0, v2

    .line 1554
    goto/16 :goto_158

    .line 1574
    :cond_25f
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    aget v0, v0, v3

    if-ne v0, v1, :cond_1aa

    .line 1575
    if-nez v3, :cond_2cb

    .line 1577
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, v3

    const-string v5, "button_cdma_cf_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1579
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, v3

    const-string v5, "button_cdma_more_expand_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1580
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_gsm_cf_expand_key1"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v5, v3

    .line 1581
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_gsm_more_expand_key1"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v5, v3

    .line 1586
    :goto_299
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2b1

    .line 1587
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1588
    if-eqz v5, :cond_2b1

    .line 1589
    const-string v6, "subscription"

    if-nez v3, :cond_2e4

    move v0, v2

    :goto_2ae
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1593
    :cond_2b1
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1aa

    .line 1594
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1595
    if-eqz v5, :cond_1aa

    .line 1596
    const-string v6, "subscription"

    if-nez v3, :cond_2e6

    move v0, v2

    :goto_2c6
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1aa

    .line 1583
    :cond_2cb
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_gsm_cf_expand_key2"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v5, v3

    .line 1584
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    const-string v0, "button_gsm_more_expand_key2"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    aput-object v0, v5, v3

    goto :goto_299

    :cond_2e4
    move v0, v1

    .line 1589
    goto :goto_2ae

    :cond_2e6
    move v0, v1

    .line 1596
    goto :goto_2c6

    :cond_2e8
    move v0, v2

    .line 1604
    goto/16 :goto_1bb

    :cond_2eb
    move v0, v1

    .line 1609
    goto/16 :goto_1d3

    :cond_2ee
    move v0, v2

    .line 1618
    goto/16 :goto_1e9

    :cond_2f1
    move v0, v1

    .line 1623
    goto/16 :goto_1fe

    .line 1631
    :cond_2f4
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, v3

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_221

    :cond_301
    move v0, v1

    .line 1643
    goto/16 :goto_241

    .line 1656
    :cond_304
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v2, v0, v2

    sget-boolean v0, Lcom/android/phone/MSimCallFeaturesSetting;->IS_UMTS_GSM:Z

    if-eqz v0, :cond_3c7

    const v0, 0x7f0e03c8

    :goto_30f
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 1657
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v2, v0, v1

    sget-boolean v0, Lcom/android/phone/MSimCallFeaturesSetting;->IS_UMTS_GSM:Z

    if-eqz v0, :cond_3cc

    const v0, 0x7f0e03c9

    :goto_31d
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 1660
    const-string v0, "button_dtmf_settings"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 1661
    const-string v0, "button_auto_retry_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 1662
    const-string v0, "button_hac_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 1663
    const-string v0, "button_tty_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 1666
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v0, :cond_35e

    .line 1667
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3d1

    .line 1668
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1675
    :cond_35e
    :goto_35e
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_374

    .line 1676
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3d9

    .line 1677
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1684
    :cond_374
    :goto_374
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_38a

    .line 1685
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3e1

    .line 1687
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1694
    :cond_38a
    :goto_38a
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3a0

    .line 1695
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3e9

    .line 1696
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1705
    :cond_3a0
    :goto_3a0
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1706
    if-eqz v0, :cond_3a9

    .line 1708
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1711
    :cond_3a9
    const-string v0, "button_call_independent_serv"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1712
    if-eqz v0, :cond_c

    .line 1713
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1714
    const-string v1, "PACKAGE"

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1715
    const-string v1, "TARGET_CLASS"

    const-string v2, "com.android.phone.MSimCallFeaturesSubSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_c

    .line 1656
    :cond_3c7
    const v0, 0x7f0e03ae

    goto/16 :goto_30f

    .line 1657
    :cond_3cc
    const v0, 0x7f0e03af

    goto/16 :goto_31d

    .line 1670
    :cond_3d1
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1671
    iput-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto :goto_35e

    .line 1679
    :cond_3d9
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1680
    iput-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto :goto_374

    .line 1689
    :cond_3e1
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1690
    iput-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto :goto_38a

    .line 1698
    :cond_3e9
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1699
    iput-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto :goto_3a0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const/16 v9, 0x276

    const/16 v8, 0x262

    const/4 v7, 0x0

    const v6, 0x7f0e0085

    .line 1332
    const/16 v5, 0x19a

    if-eq p1, v5, :cond_20

    const/16 v5, 0x190

    if-eq p1, v5, :cond_20

    const/16 v5, 0x1a4

    if-eq p1, v5, :cond_20

    const/16 v5, 0x1ae

    if-eq p1, v5, :cond_20

    const/16 v5, 0x1af

    if-eq p1, v5, :cond_20

    const/16 v5, 0x258

    if-ne p1, v5, :cond_85

    .line 1336
    :cond_20
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1339
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e007d

    .line 1340
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_bc

    .line 1372
    const v3, 0x7f0e0082

    .line 1375
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1379
    :goto_31
    invoke-virtual {p0, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1380
    invoke-virtual {p0, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1381
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1382
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1383
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1386
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1403
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_52
    return-object v1

    .line 1342
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_53
    const v3, 0x7f0e008a

    .line 1343
    .restart local v3       #msgId:I
    const v4, 0x7f0e0053

    .line 1345
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1350
    .end local v3           #msgId:I
    :sswitch_5d
    const v3, 0x7f0e008e

    .line 1351
    .restart local v3       #msgId:I
    const v4, 0x7f0e0053

    .line 1353
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1356
    .end local v3           #msgId:I
    :sswitch_67
    const v3, 0x7f0e008b

    .line 1358
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1361
    .end local v3           #msgId:I
    :sswitch_6e
    const v3, 0x7f0e008c

    .line 1363
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1367
    .end local v3           #msgId:I
    :sswitch_75
    const v3, 0x7f0e008d

    .line 1368
    .restart local v3       #msgId:I
    const v5, 0x7f0e01d3

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1369
    const v5, 0x7f0e01d4

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1389
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_85
    if-eq p1, v8, :cond_8d

    const/16 v5, 0x26c

    if-eq p1, v5, :cond_8d

    if-ne p1, v9, :cond_ba

    .line 1391
    :cond_8d
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1392
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0e007c

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1393
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1394
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1395
    if-ne p1, v8, :cond_b0

    const v5, 0x7f0e007f

    :goto_a8
    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_52

    :cond_b0
    if-ne p1, v9, :cond_b6

    const v5, 0x7f0e0080

    goto :goto_a8

    :cond_b6
    const v5, 0x7f0e007e

    goto :goto_a8

    .line 1403
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_ba
    const/4 v1, 0x0

    goto :goto_52

    .line 1340
    :sswitch_data_bc
    .sparse-switch
        0x190 -> :sswitch_5d
        0x19a -> :sswitch_67
        0x1a4 -> :sswitch_6e
        0x1ae -> :sswitch_75
        0x1af -> :sswitch_75
        0x258 -> :sswitch_53
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .registers 7
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 649
    const/4 v3, -0x2

    if-ne p2, v3, :cond_6

    .line 660
    :cond_5
    :goto_5
    return-void

    .line 652
    :cond_6
    instance-of v3, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_5

    .line 653
    move-object v0, p1

    .line 655
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v3, v3, v1

    if-eq v0, v3, :cond_17

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v3, v3, v2

    if-ne v0, v3, :cond_5

    .line 656
    :cond_17
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v3, v3, v1

    if-ne p1, v3, :cond_21

    .line 657
    .local v1, sub:I
    :goto_1d
    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->handleVMBtnClickRequest(I)V

    goto :goto_5

    .end local v1           #sub:I
    :cond_21
    move v1, v2

    .line 656
    goto :goto_1d
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .registers 8
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, sub:I
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v5, v5, v2

    if-eq p1, v5, :cond_10

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v5, v5, v3

    if-ne p1, v5, :cond_1e

    .line 670
    :cond_10
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v5, v5, v2

    if-ne p1, v5, :cond_1c

    move v0, v2

    .line 673
    :goto_17
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVoiceNumberField(I)V

    move-object v2, v4

    .line 685
    :goto_1b
    return-object v2

    :cond_1c
    move v0, v3

    .line 670
    goto :goto_17

    .line 677
    :cond_1e
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, vmDisplay:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object v2, v4

    .line 681
    goto :goto_1b

    .line 685
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e0054

    invoke-virtual {p0, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 1979
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1980
    const v1, 0x102002c

    if-ne v0, v1, :cond_24

    .line 1982
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PHONE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1983
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SettingsEMUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1984
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1986
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    .line 1987
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->finish()V

    .line 1988
    const/4 v0, 0x1

    .line 1990
    :goto_23
    return v0

    :cond_24
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_23
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 515
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 517
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 525
    :goto_9
    return-void

    .line 521
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForeground:Z

    .line 523
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_9
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 602
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v6, v6, v4

    if-eq p1, v6, :cond_e

    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v6, v6, v5

    if-ne p1, v6, :cond_40

    .line 603
    :cond_e
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v6, v6, v4

    if-ne p1, v6, :cond_26

    .line 604
    .local v4, sub:I
    :goto_14
    invoke-direct {p0, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->getCurrentVoicemailProviderKey(I)Ljava/lang/String;

    move-result-object v0

    .local v0, currentProviderKey:Ljava/lang/String;
    move-object v2, p2

    .line 605
    check-cast v2, Ljava/lang/String;

    .line 606
    .local v2, newProviderKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 643
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v2           #newProviderKey:Ljava/lang/String;
    .end local v4           #sub:I
    .end local p2
    :cond_25
    :goto_25
    return v5

    .restart local p2
    :cond_26
    move v4, v5

    .line 603
    goto :goto_14

    .line 609
    .restart local v0       #currentProviderKey:Ljava/lang/String;
    .restart local v2       #newProviderKey:Ljava/lang/String;
    .restart local v4       #sub:I
    :cond_28
    invoke-direct {p0, v2, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;I)V

    .line 611
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aput-object v0, v6, v4

    .line 613
    invoke-direct {p0, v2, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;I)Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v3

    .line 622
    .local v3, newProviderSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    if-nez v3, :cond_5c

    .line 624
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProviderSettingsForced:[Z

    aput-boolean v5, v6, v4

    .line 625
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v6, v6, v4

    invoke-direct {p0, v6, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;I)V

    .line 633
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v2           #newProviderKey:Ljava/lang/String;
    .end local v3           #newProviderSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    .end local v4           #sub:I
    :cond_40
    :goto_40
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_64

    .line 634
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 635
    .local v1, index:I
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dtmf_tone_type"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_25

    .line 628
    .end local v1           #index:I
    .restart local v0       #currentProviderKey:Ljava/lang/String;
    .restart local v2       #newProviderKey:Ljava/lang/String;
    .restart local v3       #newProviderSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    .restart local v4       #sub:I
    .restart local p2
    :cond_5c
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    aput-boolean v5, v6, v4

    .line 629
    invoke-direct {p0, v2, v3, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V

    goto :goto_40

    .line 637
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v2           #newProviderKey:Ljava/lang/String;
    .end local v3           #newProviderSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    .end local v4           #sub:I
    :cond_64
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_6c

    .line 638
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_25

    .line 639
    :cond_6c
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_25

    .line 640
    invoke-direct {p0, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 542
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_7

    .line 589
    :cond_6
    :goto_6
    return v2

    .line 544
    :cond_7
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v3, :cond_6

    .line 546
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_28

    .line 547
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_auto_retry"

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_24

    move v1, v2

    :cond_24
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 551
    :cond_28
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_55

    .line 552
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_50

    move v0, v2

    .line 554
    .local v0, hac:I
    :goto_35
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "hearing_aid"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 558
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "HACSetting"

    if-eqz v0, :cond_52

    const-string v1, "ON"

    :goto_4c
    invoke-virtual {v3, v4, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .end local v0           #hac:I
    :cond_50
    move v0, v1

    .line 552
    goto :goto_35

    .line 558
    .restart local v0       #hac:I
    :cond_52
    const-string v1, "OFF"

    goto :goto_4c

    .line 566
    .end local v0           #hac:I
    :cond_55
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v3, v3, v1

    if-eq p2, v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v3, v3, v2

    if-eq p2, v3, :cond_6

    .line 570
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, v1

    if-ne p2, v3, :cond_77

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 572
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    .line 575
    :cond_77
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, v2

    if-ne p2, v3, :cond_8e

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_8e

    .line 577
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    .line 582
    :cond_8e
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, v1

    if-eq p2, v3, :cond_9a

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, v2

    if-ne p2, v3, :cond_b5

    :cond_9a
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_b5

    .line 584
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "subscription"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {p0, v3, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    :cond_b5
    move v2, v1

    .line 589
    goto/16 :goto_6
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1325
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1326
    iput p1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    .line 1327
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1871
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1873
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1920
    :cond_b
    :goto_b
    return-void

    .line 1878
    :cond_c
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForeground:Z

    .line 1881
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1882
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1885
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1886
    const-string v0, "sip_settings_category_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1887
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 1888
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    move v0, v2

    .line 1889
    :goto_2f
    if-ge v0, v4, :cond_b

    .line 1890
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 1891
    if-eq v5, v1, :cond_3a

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1889
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1896
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v0, :cond_50

    .line 1897
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1899
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1902
    :cond_50
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_66

    .line 1903
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_auto_retry"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1905
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_97

    move v0, v1

    :goto_63
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1908
    :cond_66
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7b

    .line 1909
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hearing_aid"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1910
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_99

    :goto_78
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1913
    :cond_7b
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_b

    .line 1914
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1917
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1918
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    goto/16 :goto_b

    :cond_97
    move v0, v2

    .line 1905
    goto :goto_63

    :cond_99
    move v1, v2

    .line 1910
    goto :goto_78
.end method

.method onRevertDone(I)V
    .registers 4
    .parameter "sub"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;I)V

    .line 751
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVoiceNumberField(I)V

    .line 752
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    aget v0, v0, p1

    if-eqz v0, :cond_27

    .line 753
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    aget v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->showVMDialog(II)V

    .line 754
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 756
    :cond_27
    return-void
.end method

.method setVMNumberWithCarrier(I)V
    .registers 7
    .parameter "sub"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    add-int/lit16 v4, p1, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1095
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 692
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 694
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 699
    :goto_6
    return-void

    .line 698
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method
