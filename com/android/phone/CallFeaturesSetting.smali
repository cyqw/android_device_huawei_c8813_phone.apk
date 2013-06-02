.class public Lcom/android/phone/CallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field private static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final IS_MULTI_SIM:Z

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static final isHideVoiceSettings:Z

.field private static final isSupportSDN:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonIPCall:Landroid/preference/PreferenceScreen;

.field private mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

.field private mButtonSDN:Landroid/preference/PreferenceScreen;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mCallBarring:Landroid/preference/PreferenceCategory;

.field private mCallBarringChangePassword:Landroid/preference/Preference;

.field private mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

.field private mChangingVMorFwdDueToProviderChange:Z

.field private mConfirmPasswordText:Ljava/lang/String;

.field private mContactListIntent:Landroid/content/Intent;

.field private mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mNewPasswordText:Ljava/lang/String;

.field private mNewVMNumber:Ljava/lang/String;

.field private mOldPasswordText:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field private final mPasswordHandler:Landroid/os/Handler;

.field private mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mVMChangeCompletedSuccessfully:Z

.field private mVMOrFwdSetError:I

.field private mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CallFeaturesSetting;->IS_MULTI_SIM:Z

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 331
    const-string v0, "ro.config.hw_voicemail_settings"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CallFeaturesSetting;->isHideVoiceSettings:Z

    .line 334
    const-string v0, "ro.config.hw_support_sdn"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CallFeaturesSetting;->isSupportSDN:Z

    .line 351
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_2c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 292
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$1;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    .line 437
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 443
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 450
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 455
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 460
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 465
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 471
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 477
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 483
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    .line 489
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 495
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    .line 531
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1005
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$2;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1174
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$3;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1238
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$4;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    .line 1557
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$5;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPasswordHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100()[I
    .registers 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CallFeaturesSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/CallFeaturesSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->showOperationFailureInfo()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/CallFeaturesSetting;)Lcom/android/phone/CallBarringChangePasswordDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/CallFeaturesSetting;ILandroid/preference/Preference;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallFeaturesSetting;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/AsyncResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/CallFeaturesSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallFeaturesSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .registers 5

    .prologue
    .line 1276
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_6

    .line 1277
    const/4 v2, 0x1

    .line 1289
    .local v2, result:Z
    :cond_5
    :goto_5
    return v2

    .line 1281
    .end local v2           #result:Z
    :cond_6
    const/4 v2, 0x1

    .line 1282
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1283
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    .line 1284
    const/4 v2, 0x0

    .line 1285
    goto :goto_5
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1295
    const/4 v3, 0x0

    .line 1296
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1298
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1299
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1300
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1301
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_b

    .line 1302
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1303
    if-nez v3, :cond_29

    .line 1304
    const-string v3, ""

    .line 1309
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_29
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    .line 1317
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1318
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 1319
    const-string v0, ""

    .line 1323
    .end local v0           #msg:Ljava/lang/String;
    :cond_12
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_5

    .line 2396
    :goto_4
    return-void

    .line 2392
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

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

    const-string v2, "#FWDSettings"

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

    goto :goto_4
.end method

.method private dismissDialogSafely(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 951
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 957
    :goto_3
    return-void

    .line 952
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2399
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2400
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_9

    .end local v0           #key:Ljava/lang/String;
    :goto_8
    return-object v0

    .restart local v0       #key:Ljava/lang/String;
    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public static getVibrateWhenRinging(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2050
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2051
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_11
    move v0, v1

    .line 2055
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_12

    :cond_21
    move v0, v1

    goto :goto_12
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 2425
    new-instance v1, Landroid/content/Intent;

    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->IS_MULTI_SIM:Z

    if-eqz v0, :cond_1c

    const-class v0, Lcom/android/phone/MSimCallFeaturesSetting;

    :goto_8
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2428
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2429
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2430
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2431
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2432
    return-void

    .line 2425
    :cond_1c
    const-class v0, Lcom/android/phone/CallFeaturesSetting;

    goto :goto_8
.end method

.method private handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .registers 13
    .parameter "ar"
    .parameter "idx"

    .prologue
    const/16 v6, 0x25a

    const/4 v9, 0x0

    .line 1019
    const/4 v2, 0x0

    .line 1020
    .local v2, error:Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    .line 1023
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1025
    :cond_a
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_14

    .line 1028
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #error:Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 1032
    .restart local v2       #error:Ljava/lang/Throwable;
    :cond_14
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_19

    .line 1095
    :cond_18
    :goto_18
    return-void

    .line 1038
    :cond_19
    if-eqz v2, :cond_27

    .line 1040
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1041
    invoke-direct {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1042
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    goto :goto_18

    .line 1047
    :cond_27
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1048
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 1049
    .local v3, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_30
    array-length v5, v0

    if-ge v4, v5, :cond_3d

    .line 1050
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7e

    .line 1051
    aget-object v3, v0, v4

    .line 1055
    :cond_3d
    if-nez v3, :cond_81

    .line 1060
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1061
    .restart local v3       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1062
    sget-object v5, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1063
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1072
    :cond_4f
    :goto_4f
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 1075
    const/4 v1, 0x1

    .line 1076
    .local v1, done:Z
    const/4 v4, 0x0

    :goto_55
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_61

    .line 1077
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_90

    .line 1078
    const/4 v1, 0x0

    .line 1082
    :cond_61
    if-eqz v1, :cond_18

    .line 1084
    invoke-direct {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1085
    iget-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_7a

    .line 1086
    const-string v5, ""

    new-instance v6, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1089
    iput-boolean v9, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1091
    :cond_7a
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_18

    .line 1049
    .end local v1           #done:Z
    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 1066
    :cond_81
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_8d

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4f

    .line 1067
    :cond_8d
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_4f

    .line 1076
    .restart local v1       #done:Z
    :cond_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_55
.end method

.method private handleSetVMOrFwdMessage()V
    .registers 7

    .prologue
    .line 1330
    const/4 v2, 0x1

    .line 1331
    .local v2, success:Z
    const/4 v1, 0x0

    .line 1332
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1333
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_10

    .line 1334
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1335
    if-eqz v0, :cond_10

    .line 1336
    const/4 v2, 0x0

    .line 1337
    const/4 v1, 0x1

    .line 1340
    :cond_10
    if-eqz v2, :cond_19

    .line 1341
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1342
    if-eqz v0, :cond_19

    .line 1343
    const/4 v2, 0x0

    .line 1346
    :cond_19
    if-eqz v2, :cond_21

    .line 1348
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1358
    :goto_20
    return-void

    .line 1350
    :cond_21
    if-eqz v1, :cond_41

    .line 1351
    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to change fowarding setting. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_20

    .line 1354
    :cond_41
    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to change voicemail. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_20
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .registers 5
    .parameter "objValue"

    .prologue
    .line 2103
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2104
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 2105
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2107
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2108
    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2074
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2075
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2081
    if-eq v0, v2, :cond_36

    .line 2082
    packed-switch v0, :pswitch_data_42

    move v0, v1

    .line 2094
    :goto_1b
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2095
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 2096
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2097
    const-string v2, "ttyPreferredMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2098
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 2100
    :cond_36
    return-void

    .line 2087
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1b

    .line 2082
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1388
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1390
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1391
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1392
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .registers 5

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 916
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .registers 4
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    .line 1368
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_d

    .line 1369
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 1370
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1371
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 1377
    :goto_c
    return-void

    .line 1374
    :cond_d
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1375
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1376
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    goto :goto_c
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .registers 9
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 1098
    const/4 v4, 0x0

    .line 1099
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_f

    .line 1100
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_f

    aget-object v2, v0, v1

    .line 1101
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_10

    .line 1102
    move-object v4, v2

    .line 1107
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_f
    return-object v4

    .line 1100
    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1       #i$:I
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3       #len$:I
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private initVoiceMailProviders()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2190
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vm_numbers"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 2195
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 2196
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 2197
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2200
    :goto_34
    if-eqz v0, :cond_39

    .line 2202
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    :cond_39
    move-object v1, v0

    .line 2206
    :goto_3a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2209
    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2210
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    const-string v4, ""

    new-instance v6, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    invoke-direct {v6, p0, v5, v2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2215
    const-string v2, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2216
    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 2217
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v4, v0

    .line 2221
    :goto_6c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_ae

    .line 2222
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2223
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2224
    invoke-direct {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 2225
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 2227
    add-int/lit8 v4, v4, -0x1

    .line 2221
    :goto_86
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6c

    .line 2231
    :cond_8a
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2232
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 2233
    const-string v11, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2234
    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2240
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    new-instance v11, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    invoke-direct {v11, p0, v0, v10}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_86

    .line 2248
    :cond_ae
    new-array v2, v4, [Ljava/lang/String;

    .line 2249
    new-array v4, v4, [Ljava/lang/String;

    .line 2250
    aput-object v5, v2, v3

    .line 2251
    const-string v0, ""

    aput-object v0, v4, v3

    .line 2252
    const/4 v0, 0x1

    move v1, v0

    .line 2253
    :goto_ba
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_ea

    .line 2254
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2255
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    move v0, v1

    .line 2253
    :goto_d5
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_ba

    .line 2258
    :cond_d9
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 2259
    aput-object v5, v4, v1

    .line 2260
    add-int/lit8 v0, v1, 0x1

    goto :goto_d5

    .line 2264
    :cond_ea
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2265
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2270
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 2274
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 2275
    return-void

    :cond_100
    move-object v0, v2

    goto/16 :goto_34

    :cond_103
    move-object v1, v2

    goto/16 :goto_3a
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2068
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

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
    .line 1112
    const/4 v0, 0x1

    .line 1113
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 1116
    if-eqz p1, :cond_c

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 1117
    const/4 v0, 0x0

    .line 1120
    :cond_c
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2349
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#VMNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2351
    if-nez v3, :cond_42

    .line 2352
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceMailProvider settings for the key \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not found. Returning null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :goto_41
    return-object v0

    .line 2357
    :cond_42
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#FWDSettings"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2359
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 2360
    if-lez v2, :cond_123

    .line 2361
    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 2362
    :goto_75
    array-length v5, v2

    if-ge v0, v5, :cond_122

    .line 2363
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

    .line 2364
    new-instance v6, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v6, v2, v0

    .line 2365
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 2367
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 2370
    aget-object v6, v2, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2371
    aget-object v6, v2, v0

    const/16 v7, 0x91

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2372
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 2374
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 2362
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_75

    :cond_122
    move-object v0, v2

    .line 2379
    :cond_123
    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    move-object v0, v1

    .line 2381
    goto/16 :goto_41
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 2126
    const-string v0, "CallFeaturesSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    return-void
.end method

.method private lookupRingtoneName()V
    .registers 3

    .prologue
    .line 2064
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2065
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 3
    .parameter "ai"

    .prologue
    .line 2278
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2308
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v1, :cond_6

    .line 2338
    :cond_5
    :goto_5
    return-void

    .line 2311
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v1

    .line 2312
    invoke-virtual {p2, v1}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2320
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#VMNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#FWDSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2323
    iget-object v3, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2324
    sget-object v4, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v3, v4, :cond_e2

    .line 2325
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

    .line 2326
    :goto_5e
    array-length v4, v3

    if-ge v0, v4, :cond_f8

    .line 2327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2328
    aget-object v5, v3, v0

    .line 2329
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

    .line 2330
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

    .line 2331
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

    .line 2332
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

    .line 2326
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5e

    .line 2335
    :cond_e2
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

    .line 2337
    :cond_f8
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5
.end method

.method private onRevertDone()V
    .registers 3

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 808
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 809
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_1b

    .line 810
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 811
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 813
    :cond_1b
    return-void
.end method

.method private resetForwardingChangeState()V
    .registers 2

    .prologue
    .line 1124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 1126
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .registers 9
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const/4 v5, 0x0

    .line 962
    iget-object v1, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 964
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 965
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 968
    :cond_d
    iget-object v1, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 974
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    .line 976
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 980
    :cond_1e
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_34

    .line 981
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1003
    :goto_33
    return-void

    .line 985
    :cond_34
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 986
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    .line 987
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 988
    iput v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 989
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 990
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 993
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 994
    const/4 v0, 0x0

    .local v0, i:I
    :goto_57
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_75

    .line 995
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 996
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 999
    :cond_75
    const/16 v1, 0x25a

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_33

    .line 1001
    .end local v0           #i:I
    :cond_7b
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_33
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .registers 13

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 1131
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1132
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1133
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_56

    .line 1134
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    .line 1135
    const/4 v8, 0x0

    .local v8, i:I
    :goto_10
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_50

    .line 1136
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    .line 1138
    .local v7, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/CallFeaturesSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 1141
    .local v6, doUpdate:Z
    if-eqz v6, :cond_4b

    .line 1143
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1145
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4e

    const/4 v1, 0x3

    :goto_38
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f5

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1135
    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_4e
    move v1, v9

    .line 1145
    goto :goto_38

    .line 1156
    .end local v6           #doUpdate:Z
    .end local v7           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_50
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    .line 1161
    .end local v8           #i:I
    :goto_55
    return-void

    .line 1159
    :cond_56
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    goto :goto_55
.end method

.method private setVMNumberWithCarrier()V
    .registers 6

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1169
    return-void
.end method

.method private showDialogIfForeground(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    if-eqz v0, :cond_7

    .line 945
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    .line 947
    :cond_7
    return-void
.end method

.method private showOperationFailureInfo()V
    .registers 3

    .prologue
    .line 1555
    const v0, 0x7f0e043b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1556
    return-void
.end method

.method private showVMDialog(I)V
    .registers 3
    .parameter "msgStatus"

    .prologue
    .line 1611
    sparse-switch p1, :sswitch_data_22

    .line 1633
    :goto_3
    return-void

    .line 1615
    :sswitch_4
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1618
    :sswitch_a
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1621
    :sswitch_10
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1624
    :sswitch_16
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1627
    :sswitch_1c
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1611
    :sswitch_data_22
    .sparse-switch
        0x190 -> :sswitch_4
        0x191 -> :sswitch_a
        0x192 -> :sswitch_10
        0x258 -> :sswitch_1c
        0x2bc -> :sswitch_16
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .registers 9
    .parameter "preference"

    .prologue
    .line 2290
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 2291
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_9
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_25

    .line 2292
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_26

    .line 2293
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2298
    :cond_25
    return-void

    .line 2291
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method private switchToPreviousVoicemailProvider()V
    .registers 15

    .prologue
    const/4 v12, 0x0

    .line 737
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_d3

    .line 738
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_d0

    .line 746
    :cond_d
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    .line 747
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 749
    .local v9, prevSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    if-nez v9, :cond_3a

    .line 751
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceMailProviderSettings for the key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" becomes null, which is unexpected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_3a
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    if-eqz v0, :cond_7b

    .line 760
    iget-object v0, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 761
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM change is already completed successfully.Have to revert VM back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 768
    :cond_7b
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_d3

    .line 769
    const-string v0, "CallFeaturesSetting"

    const-string v1, "Requested to rollback Fwd changes."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v8, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 772
    .local v8, prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v8, :cond_d3

    .line 773
    iget-object v11, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 775
    .local v11, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    .line 776
    const/4 v7, 0x0

    .local v7, i:I
    :goto_90
    array-length v0, v8

    if-ge v7, v0, :cond_d3

    .line 777
    aget-object v6, v8, v7

    .line 781
    .local v6, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 782
    .local v10, result:Landroid/os/AsyncResult;
    if-eqz v10, :cond_cb

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_cb

    .line 783
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 784
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ce

    const/4 v1, 0x3

    :goto_ba
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 776
    :cond_cb
    add-int/lit8 v7, v7, 0x1

    goto :goto_90

    :cond_ce
    move v1, v12

    .line 784
    goto :goto_ba

    .line 799
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9           #prevSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_d0
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    .line 802
    :cond_d3
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2111
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2112
    packed-switch p1, :pswitch_data_24

    .line 2120
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2121
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2123
    :goto_1b
    return-void

    .line 2117
    :pswitch_1c
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 2112
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1902
    if-nez p2, :cond_4

    .line 1948
    :goto_3
    return-void

    .line 1903
    :cond_4
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1904
    const v0, 0x1040402

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1906
    if-nez v1, :cond_24

    .line 1907
    const v0, 0x1040400

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1947
    :goto_18
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 1911
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1913
    if-eqz v1, :cond_92

    .line 1914
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1915
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_43} :catch_8e

    move-result-object v0

    .line 1917
    :goto_44
    :try_start_44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_18

    .line 1919
    :catch_48
    move-exception v1

    move-object v6, v0

    .line 1922
    :goto_4a
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_ringtone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1924
    if-eqz v0, :cond_94

    .line 1925
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ringtone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1926
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1928
    :goto_63
    if-eqz v1, :cond_92

    .line 1930
    :try_start_65
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1934
    if-eqz v1, :cond_92

    .line 1935
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1936
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_84
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_65 .. :try_end_84} :catch_8b

    move-result-object v0

    .line 1938
    :goto_85
    :try_start_85
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_88
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_18

    .line 1940
    :catch_89
    move-exception v1

    goto :goto_18

    :catch_8b
    move-exception v0

    move-object v0, v6

    goto :goto_18

    .line 1919
    :catch_8e
    move-exception v0

    goto :goto_4a

    :cond_90
    move-object v0, v6

    goto :goto_85

    :cond_92
    move-object v0, v6

    goto :goto_18

    :cond_94
    move-object v1, v7

    goto :goto_63

    :cond_96
    move-object v0, v6

    goto :goto_44
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2135
    .line 2136
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    .line 2142
    if-nez v0, :cond_3b

    .line 2146
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v1, 0x7f0e008f

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2148
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->isHideVoiceSettings:Z

    if-nez v0, :cond_3a

    .line 2149
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2150
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2151
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 2152
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2153
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2179
    :cond_3a
    :goto_3a
    return-void

    .line 2163
    :cond_3b
    iget-object v1, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 2164
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2166
    sget-boolean v2, Lcom/android/phone/CallFeaturesSetting;->isHideVoiceSettings:Z

    if-nez v2, :cond_3a

    .line 2167
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e01da

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2169
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2170
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 2172
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2173
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3a
.end method

.method private updateVoiceNumberField()V
    .registers 6

    .prologue
    .line 1401
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v2, :cond_5

    .line 1422
    :cond_4
    :goto_4
    return-void

    .line 1405
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1406
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 1407
    const-string v2, ""

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1409
    :cond_15
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1410
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_40

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1412
    .local v0, summary:Ljava/lang/String;
    :goto_26
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1415
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicemailNumber_disabled"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1418
    .local v1, voicemailNumDisabled:I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_4

    .line 1419
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    goto :goto_4

    .line 1410
    .end local v0           #summary:Ljava/lang/String;
    .end local v1           #voicemailNumDisabled:I
    :cond_40
    const v2, 0x7f0e01d9

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 19
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 824
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_7b

    .line 825
    const/4 v8, 0x0

    .line 829
    .local v8, failure:Z
    iget-boolean v12, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 830
    .local v12, isVMProviderSettingsForced:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 832
    const/4 v14, 0x0

    .line 833
    .local v14, vmNum:Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1a

    .line 835
    const/4 v8, 0x1

    .line 863
    :cond_12
    :goto_12
    if-eqz v8, :cond_5a

    .line 865
    if-eqz v12, :cond_19

    .line 866
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 903
    .end local v8           #failure:Z
    .end local v12           #isVMProviderSettingsForced:Z
    .end local v14           #vmNum:Ljava/lang/String;
    :cond_19
    :goto_19
    return-void

    .line 837
    .restart local v8       #failure:Z
    .restart local v12       #isVMProviderSettingsForced:Z
    .restart local v14       #vmNum:Ljava/lang/String;
    :cond_1a
    if-nez p3, :cond_1e

    .line 839
    const/4 v8, 0x1

    goto :goto_12

    .line 841
    :cond_1e
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 843
    if-eqz v12, :cond_2f

    .line 845
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_19

    .line 847
    :cond_2f
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v13

    .line 849
    .local v13, victim:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 850
    .local v11, i:Landroid/content/Intent;
    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    const/high16 v1, 0x400

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 852
    invoke-virtual {p0, v11}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_19

    .line 856
    .end local v11           #i:Landroid/content/Intent;
    .end local v13           #victim:Ljava/lang/String;
    :cond_48
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 857
    if-eqz v14, :cond_58

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 859
    :cond_58
    const/4 v8, 0x1

    goto :goto_12

    .line 872
    :cond_5a
    iput-boolean v12, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 873
    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 877
    .local v9, fwdNum:Ljava/lang/String;
    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 881
    .local v10, fwdNumTime:I
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v2, p0, v14, v9, v10}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto :goto_19

    .line 886
    .end local v8           #failure:Z
    .end local v9           #fwdNum:Ljava/lang/String;
    .end local v10           #fwdNumTime:I
    .end local v12           #isVMProviderSettingsForced:Z
    .end local v14           #vmNum:Ljava/lang/String;
    :cond_7b
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_aa

    .line 887
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_19

    .line 892
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 894
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_19

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 898
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 902
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_aa
    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_19
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0x1f6

    .line 1575
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1576
    packed-switch p2, :pswitch_data_30

    .line 1604
    :cond_8
    :goto_8
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1605
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    .line 1607
    :cond_1b
    :goto_1b
    return-void

    .line 1582
    :pswitch_1c
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_8

    .line 1585
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_8

    .line 1590
    :pswitch_24
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2c

    .line 1593
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1b

    .line 1595
    :cond_2c
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    goto :goto_1b

    .line 1576
    :pswitch_data_30
    .packed-switch -0x3
        :pswitch_8
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 1526
    const-string v0, "onClick"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    if-eqz v0, :cond_57

    .line 1528
    const-string v0, "null != mCallBarringChangePasswordDialog)"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallBarringChangePasswordDialog;->isSaveButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1530
    const-string v0, "isSaveButton"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringChangePasswordDialog;->disableAllButton()V

    .line 1532
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringChangePasswordDialog;->getOldPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldPasswordText:Ljava/lang/String;

    .line 1533
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringChangePasswordDialog;->getNewPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewPasswordText:Ljava/lang/String;

    .line 1534
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringChangePasswordDialog;->getConfirmPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mConfirmPasswordText:Ljava/lang/String;

    .line 1535
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewPasswordText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mConfirmPasswordText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1536
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringChangePasswordDialog;->cleanEnterPassword()V

    .line 1537
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringChangePasswordDialog;->enableAllButton()V

    .line 1538
    const v0, 0x7f0e043a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1553
    :cond_57
    :goto_57
    return-void

    .line 1540
    :cond_58
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_6d

    .line 1541
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldPasswordText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewPasswordText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPasswordHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_57

    .line 1544
    :cond_6d
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringChangePasswordDialog;->dismiss()V

    .line 1545
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->showOperationFailureInfo()V

    goto :goto_57

    .line 1548
    :cond_76
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallBarringChangePasswordDialog;->isCancelButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1549
    const-string v0, "isCancelButton"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringChangePasswordDialog;->dismiss()V

    goto :goto_57
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1641
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1643
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1645
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1646
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MSimCallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1647
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    .line 1648
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    .line 1894
    :cond_1e
    :goto_1e
    return-void

    .line 1652
    :cond_1f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1654
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1656
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1659
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 1660
    const-string v0, "button_voicemail_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1661
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_59

    .line 1662
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1663
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1664
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e016d

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1667
    :cond_59
    const-string v0, "button_ringtone_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtonePreference:Landroid/preference/Preference;

    .line 1668
    const-string v0, "button_vibrate_on_ring"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 1669
    const-string v0, "button_play_dtmf_tone"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 1670
    const-string v0, "button_dtmf_settings"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 1671
    const-string v0, "button_auto_retry_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 1673
    const-string v0, "button_Proximity_sensor"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    .line 1675
    const-string v0, "button_hac_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 1676
    const-string v0, "button_tty_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 1678
    const-string v0, "button_ipcall_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCall:Landroid/preference/PreferenceScreen;

    .line 1681
    const-string v0, "button_sdn_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSDN:Landroid/preference/PreferenceScreen;

    .line 1683
    const-string v0, "button_voicemail_provider_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1685
    const-string v0, "button_voicemail_category_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1687
    const-string v1, "button_call_barring_change_password_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePassword:Landroid/preference/Preference;

    .line 1688
    const-string v1, "call_barring_category_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarring:Landroid/preference/PreferenceCategory;

    .line 1690
    if-eqz v4, :cond_f2

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "hw_default_support_call_barring"

    invoke-static {v1, v5, v3}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_f2

    .line 1692
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarring:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1695
    :cond_f2
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v1, :cond_126

    .line 1696
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1697
    const-string v1, "button_voicemail_setting_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1698
    const-string v1, "button_voicemail_notification_vibrate_when_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    .line 1700
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1701
    sget-boolean v1, Lcom/android/phone/CallFeaturesSetting;->isHideVoiceSettings:Z

    if-eqz v1, :cond_123

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_123

    .line 1702
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1703
    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1706
    :cond_123
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initVoiceMailProviders()V

    .line 1709
    :cond_126
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_13f

    .line 1710
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1711
    if-eqz v0, :cond_287

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_287

    .line 1712
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1719
    :cond_13f
    :goto_13f
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_155

    .line 1720
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "dtmf_tone"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_290

    move v0, v2

    :goto_152
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1724
    :cond_155
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v0, :cond_16b

    .line 1725
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_293

    .line 1726
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1733
    :cond_16b
    :goto_16b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_192

    .line 1734
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_29c

    .line 1735
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1741
    :goto_181
    const-string v0, "ro.config.hw_proximitySensor"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a5

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2a5

    .line 1742
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1750
    :cond_192
    :goto_192
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1ac

    .line 1753
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hac_enabled"

    invoke-static {v0, v1, v7}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1755
    if-eq v0, v7, :cond_2b1

    if-ne v0, v2, :cond_2ae

    move v0, v2

    .line 1758
    :goto_1a5
    if-eqz v0, :cond_2be

    .line 1759
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1766
    :cond_1ac
    :goto_1ac
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1c6

    .line 1769
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tty_enabled"

    invoke-static {v0, v1, v7}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1771
    if-eq v0, v7, :cond_2ca

    if-ne v0, v2, :cond_2c7

    move v0, v2

    .line 1774
    :goto_1bf
    if-eqz v0, :cond_2d7

    .line 1775
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1784
    :cond_1c6
    :goto_1c6
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCall:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1e4

    .line 1785
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ipcall_enabled"

    invoke-static {v0, v1, v2}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1787
    if-eqz v0, :cond_2e0

    move v0, v2

    .line 1789
    :goto_1d7
    if-eqz v0, :cond_1dd

    sget-boolean v0, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-nez v0, :cond_1e4

    .line 1790
    :cond_1dd
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1791
    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCall:Landroid/preference/PreferenceScreen;

    .line 1796
    :cond_1e4
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSDN:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1f3

    .line 1797
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->isSupportSDN:Z

    if-nez v0, :cond_1f3

    .line 1798
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSDN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1799
    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSDN:Landroid/preference/PreferenceScreen;

    .line 1804
    :cond_1f3
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_23d

    .line 1805
    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1806
    if-eqz v0, :cond_20b

    .line 1807
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1808
    :cond_20b
    const-string v0, "button_gsm_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1809
    if-eqz v0, :cond_216

    .line 1810
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1812
    :cond_216
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1813
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e3

    .line 1814
    const-string v0, "button_fdn_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1815
    if-eqz v0, :cond_22a

    .line 1816
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1817
    :cond_22a
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_23d

    .line 1818
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1850
    :cond_23d
    :goto_23d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    .line 1851
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1858
    if-nez p1, :cond_270

    .line 1859
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_270

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_270

    .line 1865
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v2, :cond_348

    .line 1866
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1873
    :cond_270
    :goto_270
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1874
    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 1879
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$6;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 1889
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1890
    if-eqz v0, :cond_1e

    .line 1892
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_1e

    .line 1714
    :cond_287
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1715
    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_13f

    :cond_290
    move v0, v3

    .line 1720
    goto/16 :goto_152

    .line 1728
    :cond_293
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1729
    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_16b

    .line 1737
    :cond_29c
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1738
    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_181

    .line 1744
    :cond_2a5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1745
    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_192

    :cond_2ae
    move v0, v3

    .line 1755
    goto/16 :goto_1a5

    :cond_2b1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto/16 :goto_1a5

    .line 1761
    :cond_2be
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1762
    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1ac

    :cond_2c7
    move v0, v3

    .line 1771
    goto/16 :goto_1bf

    :cond_2ca
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto/16 :goto_1bf

    .line 1777
    :cond_2d7
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1778
    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto/16 :goto_1c6

    :cond_2e0
    move v0, v3

    .line 1787
    goto/16 :goto_1d7

    .line 1820
    :cond_2e3
    if-ne v0, v2, :cond_32f

    .line 1821
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1823
    const-string v0, "button_fdn_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1825
    :try_start_2f1
    const-string v0, "com.android.internal.telephony.TelephonyProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1826
    const-string v1, "PROPERTY_ICC_FDN_VALUE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1827
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1828
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1831
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1832
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eq v2, v5, :cond_31c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_358

    :cond_31c
    move v0, v3

    .line 1837
    :goto_31d
    if-nez v0, :cond_23d

    .line 1838
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_323
    .catch Ljava/lang/Exception; {:try_start_2f1 .. :try_end_323} :catch_325

    goto/16 :goto_23d

    .line 1840
    :catch_325
    move-exception v0

    .line 1841
    const-string v0, "CallFeaturesSetting"

    const-string v1, "Unfound property PROPERTY_ICC_FDN_VALUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23d

    .line 1845
    :cond_32f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1868
    :cond_348
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1869
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_270

    :cond_358
    move v0, v1

    goto :goto_31d
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 13
    .parameter "id"

    .prologue
    const/16 v10, 0x25b

    const/16 v9, 0x259

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0e0085

    .line 1442
    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_1d

    const/16 v5, 0x190

    if-eq p1, v5, :cond_1d

    const/16 v5, 0x1f5

    if-eq p1, v5, :cond_1d

    const/16 v5, 0x1f6

    if-eq p1, v5, :cond_1d

    const/16 v5, 0x258

    if-ne p1, v5, :cond_82

    .line 1446
    :cond_1d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1449
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e007d

    .line 1450
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_ce

    .line 1481
    const v3, 0x7f0e0082

    .line 1484
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1488
    :goto_2e
    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1489
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1490
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1491
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1492
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1495
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1521
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_4f
    return-object v1

    .line 1452
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_50
    const v3, 0x7f0e008a

    .line 1453
    .restart local v3       #msgId:I
    const v4, 0x7f0e0053

    .line 1455
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2e

    .line 1460
    .end local v3           #msgId:I
    :sswitch_5a
    const v3, 0x7f0e008e

    .line 1461
    .restart local v3       #msgId:I
    const v4, 0x7f0e0053

    .line 1463
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2e

    .line 1466
    .end local v3           #msgId:I
    :sswitch_64
    const v3, 0x7f0e008b

    .line 1468
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2e

    .line 1471
    .end local v3           #msgId:I
    :sswitch_6b
    const v3, 0x7f0e008c

    .line 1473
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2e

    .line 1476
    .end local v3           #msgId:I
    :sswitch_72
    const v3, 0x7f0e008d

    .line 1477
    .restart local v3       #msgId:I
    const v5, 0x7f0e01d3

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1478
    const v5, 0x7f0e01d4

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2e

    .line 1498
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_82
    if-eq p1, v9, :cond_8a

    const/16 v5, 0x25a

    if-eq p1, v5, :cond_8a

    if-ne p1, v10, :cond_b6

    .line 1500
    :cond_8a
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1501
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0e007c

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1502
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1503
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1504
    if-ne p1, v9, :cond_ac

    const v5, 0x7f0e007f

    :goto_a4
    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_4f

    :cond_ac
    if-ne p1, v10, :cond_b2

    const v5, 0x7f0e0080

    goto :goto_a4

    :cond_b2
    const v5, 0x7f0e007e

    goto :goto_a4

    .line 1510
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_b6
    if-ne p1, v8, :cond_cb

    .line 1511
    new-instance v5, Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-direct {v5, p0, p0}, Lcom/android/phone/CallBarringChangePasswordDialog;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    .line 1512
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    if-eqz v5, :cond_c8

    .line 1513
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    invoke-virtual {v5, v7}, Lcom/android/phone/CallBarringChangePasswordDialog;->setCancelable(Z)V

    .line 1516
    :cond_c8
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;

    goto :goto_4f

    .line 1521
    :cond_cb
    const/4 v1, 0x0

    goto :goto_4f

    .line 1450
    nop

    :sswitch_data_ce
    .sparse-switch
        0x190 -> :sswitch_5a
        0x1f4 -> :sswitch_64
        0x1f5 -> :sswitch_6b
        0x1f6 -> :sswitch_72
        0x258 -> :sswitch_50
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .registers 4
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 685
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    .line 692
    :cond_3
    :goto_3
    return-void

    .line 689
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_3

    .line 690
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleVMBtnClickRequest()V

    goto :goto_3
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 701
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_9

    .line 705
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 718
    :cond_8
    :goto_8
    return-object v1

    .line 709
    :cond_9
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, vmDisplay:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0054

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 2405
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2406
    const v1, 0x102002c

    if-ne v0, v1, :cond_24

    .line 2408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PHONE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2409
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SettingsEMUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2410
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2412
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    .line 2413
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    .line 2414
    const/4 v0, 0x1

    .line 2416
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
    .line 521
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 523
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x1

    .line 625
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_20

    .line 626
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 628
    .local v0, doVibrate:Z
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vibrate_when_ringing"

    if-eqz v0, :cond_1e

    move v4, v5

    :goto_1a
    invoke-static {v6, v7, v4}, Lcom/huawei/android/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 678
    .end local v0           #doVibrate:Z
    :cond_1d
    :goto_1d
    return v5

    .line 628
    .restart local v0       #doVibrate:Z
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1a

    .line 631
    .end local v0           #doVibrate:Z
    .restart local p2
    :cond_20
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_3c

    .line 632
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 633
    .local v1, index:I
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dtmf_tone_type"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1d

    .line 635
    .end local v1           #index:I
    .restart local p2
    :cond_3c
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_44

    .line 636
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_1d

    .line 637
    :cond_44
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_71

    move-object v2, p2

    .line 638
    check-cast v2, Ljava/lang/String;

    .line 644
    .local v2, newProviderKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 648
    invoke-direct {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 650
    invoke-direct {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v3

    .line 659
    .local v3, newProviderSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    if-nez v3, :cond_6b

    .line 661
    const-string v4, "CallFeaturesSetting"

    const-string v6, "Saved preferences not found - invoking config"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 663
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_1d

    .line 667
    :cond_6b
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 668
    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto :goto_1d

    .line 670
    .end local v2           #newProviderKey:Ljava/lang/String;
    .end local v3           #newProviderSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    :cond_71
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_88

    .line 671
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 672
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 674
    .restart local p2
    :cond_88
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1d

    .line 675
    invoke-direct {p0, p2}, Lcom/android/phone/CallFeaturesSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 540
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v5, :cond_7

    .line 608
    :cond_6
    :goto_6
    return v3

    .line 542
    :cond_7
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_20

    .line 543
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dtmf_tone"

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1e

    :goto_19
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1c
    :goto_1c
    move v3, v4

    .line 608
    goto :goto_6

    :cond_1e
    move v3, v4

    .line 543
    goto :goto_19

    .line 545
    :cond_20
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eq p2, v5, :cond_6

    .line 547
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v5, :cond_6

    .line 549
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_45

    .line 550
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_auto_retry"

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_41

    move v4, v3

    :cond_41
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 555
    :cond_45
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_80

    .line 557
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 559
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 560
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "ProximitySensor"

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_60

    move v4, v3

    :cond_60
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 561
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 562
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 563
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0e0289

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_6

    .line 565
    :cond_77
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0e0288

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_6

    .line 569
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_80
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_ae

    .line 570
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a9

    move v1, v3

    .line 572
    .local v1, hac:I
    :goto_8d
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_aid"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "HACSetting"

    if-eqz v1, :cond_ab

    const-string v4, "ON"

    :goto_a4
    invoke-virtual {v5, v6, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .end local v1           #hac:I
    :cond_a9
    move v1, v4

    .line 570
    goto :goto_8d

    .line 576
    .restart local v1       #hac:I
    :cond_ab
    const-string v4, "OFF"

    goto :goto_a4

    .line 578
    .end local v1           #hac:I
    :cond_ae
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_cb

    .line 580
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_c2

    .line 587
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/CallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    .line 597
    :cond_c2
    const-string v3, ""

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 598
    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    move v3, v4

    .line 601
    goto/16 :goto_6

    .line 604
    :cond_cb
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePassword:Landroid/preference/Preference;

    if-ne p2, v5, :cond_1c

    .line 605
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto/16 :goto_1c
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1435
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1436
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 1437
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1985
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1986
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 1988
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1989
    const-string v0, "sip_settings_category_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1990
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 1991
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    move v0, v2

    .line 1992
    :goto_1c
    if-ge v0, v4, :cond_b8

    .line 1993
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 1994
    if-eq v5, v1, :cond_27

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1992
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1999
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_37

    .line 2000
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2003
    :cond_37
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4a

    .line 2004
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2006
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2009
    :cond_4a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_60

    .line 2010
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_auto_retry"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2012
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b9

    move v0, v1

    :goto_5d
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2016
    :cond_60
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_86

    .line 2017
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2018
    const-string v3, "ProximitySensor"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2019
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_bb

    move v0, v1

    :goto_73
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2020
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 2021
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0e0289

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 2027
    :cond_86
    :goto_86
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9b

    .line 2028
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hearing_aid"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2029
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_c6

    :goto_98
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2032
    :cond_9b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_b5

    .line 2033
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2036
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2037
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 2040
    :cond_b5
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->lookupRingtoneName()V

    .line 2041
    :cond_b8
    return-void

    :cond_b9
    move v0, v2

    .line 2012
    goto :goto_5d

    :cond_bb
    move v0, v2

    .line 2019
    goto :goto_73

    .line 2023
    :cond_bd
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonProximitySensor:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0e0288

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_86

    :cond_c6
    move v1, v2

    .line 2029
    goto :goto_98
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 725
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 727
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 733
    :goto_6
    return-void

    .line 732
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method
