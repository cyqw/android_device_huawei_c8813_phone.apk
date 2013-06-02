.class public Lcom/android/phone/MSimCallFeaturesSubSetting;
.super Landroid/preference/PreferenceActivity;
.source "MSimCallFeaturesSubSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field mChangingVMorFwdDueToProviderChange:Z

.field private mContactListIntent:Landroid/content/Intent;

.field mCurrentDialogId:I

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

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubscription:I

.field private mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

.field mVMChangeCompletedSuccesfully:Z

.field mVMOrFwdSetError:I

.field mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 271
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_16
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

    .line 102
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 238
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSubSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$1;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    .line 257
    iput v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    .line 357
    iput-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 363
    iput-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 370
    iput-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 375
    iput-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 380
    iput-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 385
    iput v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    .line 391
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 397
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 403
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccesfully:Z

    .line 409
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    .line 415
    iput v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    .line 451
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    .line 832
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSubSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$2;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 990
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSubSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$3;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1045
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$4;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimCallFeaturesSubSetting;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MSimCallFeaturesSubSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MSimCallFeaturesSubSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/MSimCallFeaturesSubSetting;ILandroid/preference/Preference;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .registers 5

    .prologue
    .line 1080
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_6

    .line 1081
    const/4 v2, 0x1

    .line 1093
    .local v2, result:Z
    :cond_5
    :goto_5
    return v2

    .line 1085
    .end local v2           #result:Z
    :cond_6
    const/4 v2, 0x1

    .line 1086
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

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

    .line 1087
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    .line 1088
    const/4 v2, 0x0

    .line 1089
    goto :goto_5
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1099
    const/4 v3, 0x0

    .line 1100
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1102
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1104
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1105
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_b

    .line 1106
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1107
    if-nez v3, :cond_29

    .line 1108
    const-string v3, ""

    .line 1113
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_29
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    .line 1121
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1122
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 1123
    const-string v0, ""

    .line 1127
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
    .line 1832
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_5

    .line 1839
    :goto_4
    return-void

    .line 1835
    :cond_5
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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
    .line 784
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 790
    :goto_3
    return-void

    .line 785
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1842
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1843
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
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1576
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1577
    .local v0, vibrator:Landroid/os/Vibrator;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1581
    :cond_11
    :goto_11
    return v1

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v1}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    goto :goto_11
.end method

.method private handleSetVMOrFwdMessage()V
    .registers 5

    .prologue
    .line 1131
    const/4 v2, 0x1

    .line 1132
    .local v2, success:Z
    const/4 v1, 0x0

    .line 1133
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1134
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_10

    .line 1135
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1136
    if-eqz v0, :cond_10

    .line 1137
    const/4 v2, 0x0

    .line 1138
    const/4 v1, 0x1

    .line 1141
    :cond_10
    if-eqz v2, :cond_19

    .line 1142
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1143
    if-eqz v0, :cond_19

    .line 1144
    const/4 v2, 0x0

    .line 1147
    :cond_19
    if-eqz v2, :cond_24

    .line 1148
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1149
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 1157
    :goto_23
    return-void

    .line 1151
    :cond_24
    if-eqz v1, :cond_2c

    .line 1152
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMOrFwdSetError(I)V

    goto :goto_23

    .line 1154
    :cond_2c
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMOrFwdSetError(I)V

    goto :goto_23
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .registers 5
    .parameter "objValue"

    .prologue
    .line 1599
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1600
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 1601
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1603
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1604
    return-void
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .registers 3
    .parameter "msgId"

    .prologue
    .line 1179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1180
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 1181
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .registers 5

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    .line 749
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .registers 4
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    .line 1167
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_d

    .line 1168
    iput p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 1169
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1170
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    .line 1176
    :goto_c
    return-void

    .line 1173
    :cond_d
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1174
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 1175
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    goto :goto_c
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .registers 9
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 917
    const/4 v4, 0x0

    .line 918
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_f

    .line 919
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_f

    aget-object v2, v0, v1

    .line 920
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_10

    .line 921
    move-object v4, v2

    .line 926
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_f
    return-object v4

    .line 919
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

    .line 1655
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vm_numbers"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 1660
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 1661
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 1662
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1664
    :goto_34
    if-eqz v0, :cond_39

    .line 1665
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    :cond_39
    move-object v1, v0

    .line 1669
    :goto_3a
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1672
    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1673
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    const-string v4, ""

    new-instance v6, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    invoke-direct {v6, p0, v5, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1677
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1678
    const-string v2, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1679
    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1680
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v4, v0

    .line 1684
    :goto_6c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_ae

    .line 1685
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1686
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1687
    invoke-direct {p0, v8}, Lcom/android/phone/MSimCallFeaturesSubSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 1688
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 1689
    add-int/lit8 v4, v4, -0x1

    .line 1684
    :goto_86
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6c

    .line 1692
    :cond_8a
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1693
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1694
    const-string v11, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1695
    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    new-instance v11, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    invoke-direct {v11, p0, v0, v10}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_86

    .line 1705
    :cond_ae
    new-array v2, v4, [Ljava/lang/String;

    .line 1706
    new-array v4, v4, [Ljava/lang/String;

    .line 1707
    aput-object v5, v2, v3

    .line 1708
    const-string v0, ""

    aput-object v0, v4, v3

    .line 1709
    const/4 v0, 0x1

    move v1, v0

    .line 1710
    :goto_ba
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_ea

    .line 1711
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1712
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    move v0, v1

    .line 1710
    :goto_d5
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_ba

    .line 1715
    :cond_d9
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 1716
    aput-object v5, v4, v1

    .line 1717
    add-int/lit8 v0, v1, 0x1

    goto :goto_d5

    .line 1720
    :cond_ea
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1721
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1723
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1724
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1725
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

    .line 1594
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

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
    .line 931
    const/4 v0, 0x1

    .line 932
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 935
    if-eqz p1, :cond_c

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 936
    const/4 v0, 0x0

    .line 939
    :cond_c
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1795
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1797
    if-nez v3, :cond_1e

    .line 1825
    :goto_1d
    return-object v0

    .line 1802
    :cond_1e
    sget-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#FWDSettings"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1804
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1805
    if-lez v2, :cond_ff

    .line 1806
    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 1807
    :goto_51
    array-length v5, v2

    if-ge v0, v5, :cond_fe

    .line 1808
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

    .line 1809
    new-instance v6, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v6, v2, v0

    .line 1810
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1812
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1815
    aget-object v6, v2, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1816
    aget-object v6, v2, v0

    const/16 v7, 0x91

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1817
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1819
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1807
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_51

    :cond_fe
    move-object v0, v2

    .line 1824
    :cond_ff
    new-instance v1, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    move-object v0, v1

    .line 1825
    goto/16 :goto_1d
.end method

.method private lookupRingtoneName()V
    .registers 3

    .prologue
    .line 1590
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1591
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 3
    .parameter "ai"

    .prologue
    .line 1728
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1758
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v1, :cond_6

    .line 1784
    :cond_5
    :goto_5
    return-void

    .line 1761
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v1

    .line 1762
    invoke-virtual {p2, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1766
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#VMNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#FWDSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1769
    iget-object v3, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1770
    sget-object v4, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v3, v4, :cond_e2

    .line 1771
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

    .line 1772
    :goto_5e
    array-length v4, v3

    if-ge v0, v4, :cond_f8

    .line 1773
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

    .line 1774
    aget-object v5, v3, v0

    .line 1775
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

    .line 1776
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

    .line 1777
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

    .line 1778
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

    .line 1772
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5e

    .line 1781
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

    .line 1783
    :cond_f8
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5
.end method

.method private resetForwardingChangeState()V
    .registers 2

    .prologue
    .line 943
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 944
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 945
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V
    .registers 9
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const/4 v5, 0x0

    .line 794
    iget-object v1, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    .line 796
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 797
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    .line 800
    :cond_d
    iget-object v1, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 803
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    .line 804
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 808
    :cond_1e
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_34

    .line 809
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 830
    :goto_33
    return-void

    .line 813
    :cond_34
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    .line 814
    iput-boolean v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccesfully:Z

    .line 815
    iput-boolean v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    .line 816
    iput v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 817
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 818
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    .line 820
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 821
    const/4 v0, 0x0

    .local v0, i:I
    :goto_57
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_75

    .line 822
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 823
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 826
    :cond_75
    const/16 v1, 0x25a

    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_33

    .line 828
    .end local v0           #i:I
    :cond_7b
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_33
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .registers 13

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 950
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 951
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 952
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_56

    .line 953
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->resetForwardingChangeState()V

    .line 954
    const/4 v8, 0x0

    .local v8, i:I
    :goto_10
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_50

    .line 955
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    .line 957
    .local v7, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/MSimCallFeaturesSubSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 960
    .local v6, doUpdate:Z
    if-eqz v6, :cond_4b

    .line 961
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4e

    const/4 v1, 0x3

    :goto_38
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f5

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 954
    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_4e
    move v1, v9

    .line 963
    goto :goto_38

    .line 974
    .end local v6           #doUpdate:Z
    .end local v7           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_50
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    .line 978
    .end local v8           #i:I
    :goto_55
    return-void

    .line 976
    :cond_56
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->setVMNumberWithCarrier()V

    goto :goto_55
.end method

.method private showDialogIfForeground(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForeground:Z

    if-eqz v0, :cond_7

    .line 778
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialog(I)V

    .line 780
    :cond_7
    return-void
.end method

.method private showVMDialog(I)V
    .registers 3
    .parameter "msgStatus"

    .prologue
    .line 1330
    sparse-switch p1, :sswitch_data_22

    .line 1352
    :goto_3
    return-void

    .line 1334
    :sswitch_4
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1337
    :sswitch_a
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1340
    :sswitch_10
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1343
    :sswitch_16
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1346
    :sswitch_1c
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1330
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
    .line 1740
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1741
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_9
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_25

    .line 1742
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_26

    .line 1743
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1748
    :cond_25
    return-void

    .line 1741
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method private switchToPreviousVoicemailProvider()V
    .registers 15

    .prologue
    const/4 v12, 0x0

    .line 593
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_d3

    .line 594
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_d0

    .line 596
    :cond_d
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    .line 597
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 599
    .local v9, prevSettings:Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    if-nez v9, :cond_3a

    .line 601
    const-string v0, "MSimCallFeaturesSubSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceMailProviderSettings for the key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" becomes null, which is unexpected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_3a
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_7b

    .line 605
    iget-object v0, v9, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    .line 606
    const-string v0, "MSimCallFeaturesSubSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM change is already completed successfully.Have to revert VM back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 613
    :cond_7b
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_d3

    .line 614
    const-string v0, "MSimCallFeaturesSubSetting"

    const-string v1, "Requested to rollback Fwd changes."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v8, v9, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 617
    .local v8, prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v8, :cond_d3

    .line 618
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 620
    .local v11, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->resetForwardingChangeState()V

    .line 621
    const/4 v7, 0x0

    .local v7, i:I
    :goto_90
    array-length v0, v8

    if-ge v7, v0, :cond_d3

    .line 622
    aget-object v6, v8, v7

    .line 625
    .local v6, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 626
    .local v10, result:Landroid/os/AsyncResult;
    if-eqz v10, :cond_cb

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_cb

    .line 627
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ce

    const/4 v1, 0x3

    :goto_ba
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 621
    :cond_cb
    add-int/lit8 v7, v7, 0x1

    goto :goto_90

    :cond_ce
    move v1, v12

    .line 628
    goto :goto_ba

    .line 642
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9           #prevSettings:Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_d0
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->onRevertDone()V

    .line 645
    :cond_d3
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1502
    if-nez p2, :cond_3

    .line 1524
    :goto_2
    return-void

    .line 1503
    :cond_3
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1504
    const v0, 0x1040402

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1506
    if-nez v1, :cond_23

    .line 1507
    const v0, 0x1040400

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1523
    :goto_17
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1511
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1513
    if-eqz v1, :cond_4e

    .line 1514
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1515
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_42} :catch_49

    move-result-object v0

    .line 1517
    :goto_43
    :try_start_43
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_17

    .line 1519
    :catch_47
    move-exception v1

    goto :goto_17

    :catch_49
    move-exception v0

    move-object v0, v6

    goto :goto_17

    :cond_4c
    move-object v0, v6

    goto :goto_43

    :cond_4e
    move-object v0, v6

    goto :goto_17
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1616
    .line 1617
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    .line 1623
    if-nez v0, :cond_37

    .line 1624
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v1, 0x7f0e008f

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1625
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1626
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1627
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1629
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1630
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1643
    :goto_36
    return-void

    .line 1632
    :cond_37
    iget-object v1, v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 1633
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1634
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e01da

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1636
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1637
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1639
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1640
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_36
.end method

.method private updateVoiceNumberField()V
    .registers 4

    .prologue
    .line 1187
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v1, :cond_5

    .line 1199
    :goto_4
    return-void

    .line 1191
    :cond_5
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1192
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 1193
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1195
    :cond_15
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1196
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1198
    .local v0, summary:Ljava/lang/String;
    :goto_26
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1196
    .end local v0           #summary:Ljava/lang/String;
    :cond_2c
    const v1, 0x7f0e01d9

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .registers 13
    .parameter "ar"
    .parameter "idx"

    .prologue
    const/16 v6, 0x25a

    const/4 v9, 0x0

    .line 845
    const/4 v2, 0x0

    .line 846
    .local v2, error:Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    .line 849
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 851
    :cond_a
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_14

    .line 852
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #error:Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 856
    .restart local v2       #error:Ljava/lang/Throwable;
    :cond_14
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_19

    .line 914
    :cond_18
    :goto_18
    return-void

    .line 862
    :cond_19
    if-eqz v2, :cond_27

    .line 863
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 864
    invoke-direct {p0, v6}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    .line 865
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    goto :goto_18

    .line 870
    :cond_27
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 871
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 872
    .local v3, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_30
    array-length v5, v0

    if-ge v4, v5, :cond_3d

    .line 873
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7e

    .line 874
    aget-object v3, v0, v4

    .line 878
    :cond_3d
    if-nez v3, :cond_81

    .line 882
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 883
    .restart local v3       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 884
    sget-object v5, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 885
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 892
    :cond_4f
    :goto_4f
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 895
    const/4 v1, 0x1

    .line 896
    .local v1, done:Z
    const/4 v4, 0x0

    :goto_55
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_61

    .line 897
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_90

    .line 898
    const/4 v1, 0x0

    .line 902
    :cond_61
    if-eqz v1, :cond_18

    .line 903
    invoke-direct {p0, v6}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    .line 904
    iget-boolean v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_7a

    .line 905
    const-string v5, ""

    new-instance v6, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/MSimCallFeaturesSubSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    .line 908
    iput-boolean v9, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    .line 910
    :cond_7a
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_18

    .line 872
    .end local v1           #done:Z
    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 888
    :cond_81
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_8d

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4f

    .line 889
    :cond_8d
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_4f

    .line 896
    .restart local v1       #done:Z
    :cond_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_55
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 19
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 661
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_7b

    .line 662
    const/4 v8, 0x0

    .line 665
    .local v8, failure:Z
    iget-boolean v12, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 666
    .local v12, isVMProviderSettingsForced:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 668
    const/4 v14, 0x0

    .line 669
    .local v14, vmNum:Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1a

    .line 670
    const/4 v8, 0x1

    .line 694
    :cond_12
    :goto_12
    if-eqz v8, :cond_5a

    .line 695
    if-eqz v12, :cond_19

    .line 696
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    .line 736
    .end local v8           #failure:Z
    .end local v12           #isVMProviderSettingsForced:Z
    .end local v14           #vmNum:Ljava/lang/String;
    :cond_19
    :goto_19
    return-void

    .line 672
    .restart local v8       #failure:Z
    .restart local v12       #isVMProviderSettingsForced:Z
    .restart local v14       #vmNum:Ljava/lang/String;
    :cond_1a
    if-nez p3, :cond_1e

    .line 673
    const/4 v8, 0x1

    goto :goto_12

    .line 675
    :cond_1e
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 676
    if-eqz v12, :cond_2f

    .line 677
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_19

    .line 679
    :cond_2f
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v13

    .line 680
    .local v13, victim:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v11, i:Landroid/content/Intent;
    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const/high16 v1, 0x400

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSubSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_19

    .line 687
    .end local v11           #i:Landroid/content/Intent;
    .end local v13           #victim:Ljava/lang/String;
    :cond_48
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 688
    if-eqz v14, :cond_58

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 690
    :cond_58
    const/4 v8, 0x1

    goto :goto_12

    .line 702
    :cond_5a
    iput-boolean v12, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 703
    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 707
    .local v9, fwdNum:Ljava/lang/String;
    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 709
    .local v10, fwdNumTime:I
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    invoke-direct {v2, p0, v14, v9, v10}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    goto :goto_19

    .line 714
    .end local v8           #failure:Z
    .end local v9           #fwdNum:Ljava/lang/String;
    .end local v10           #fwdNumTime:I
    .end local v12           #isVMProviderSettingsForced:Z
    .end local v14           #vmNum:Ljava/lang/String;
    :cond_7b
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_19

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 720
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSubSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 722
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_19

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 727
    packed-switch p1, :pswitch_data_b0

    goto/16 :goto_19

    .line 729
    :pswitch_a4
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 727
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_a4
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0x1f6

    .line 1297
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1298
    packed-switch p2, :pswitch_data_30

    .line 1323
    :cond_8
    :goto_8
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1324
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->finish()V

    .line 1326
    :cond_1b
    :goto_1b
    return-void

    .line 1302
    :pswitch_1c
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_8

    .line 1305
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_8

    .line 1309
    :pswitch_24
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2c

    .line 1312
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1b

    .line 1314
    :cond_2c
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->finish()V

    goto :goto_1b

    .line 1298
    :pswitch_data_30
    .packed-switch -0x3
        :pswitch_8
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1360
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1362
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1478
    :cond_b
    :goto_b
    return-void

    .line 1366
    :cond_c
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->addPreferencesFromResource(I)V

    .line 1369
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    .line 1371
    const-string v0, "button_fdn_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    .line 1372
    const-string v0, "button_gsm_more_expand_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

    .line 1373
    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

    .line 1374
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1375
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1376
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1378
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1380
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1383
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1384
    const-string v0, "button_voicemail_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1385
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_9d

    .line 1386
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1387
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1388
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f0e016d

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1391
    :cond_9d
    const-string v0, "button_ringtone_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRingtonePreference:Landroid/preference/Preference;

    .line 1392
    const-string v0, "button_vibrate_on_ring"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 1393
    const-string v0, "button_voicemail_provider_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1394
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_de

    .line 1395
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1396
    const-string v0, "button_voicemail_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1397
    const-string v0, "button_voicemail_notification_vibrate_when_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    .line 1399
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1401
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->initVoiceMailProviders()V

    .line 1404
    :cond_de
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_f7

    .line 1405
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1406
    if-eqz v0, :cond_18b

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 1407
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1414
    :cond_f7
    :goto_f7
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_141

    .line 1415
    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1416
    if-eqz v0, :cond_10f

    .line 1417
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1418
    :cond_10f
    const-string v0, "button_gsm_more_expand_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1419
    if-eqz v0, :cond_11a

    .line 1420
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1422
    :cond_11a
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1423
    const/4 v2, 0x2

    if-ne v0, v2, :cond_195

    .line 1424
    const-string v0, "button_fdn_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_12e

    .line 1426
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1427
    :cond_12e
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_141

    .line 1428
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->addPreferencesFromResource(I)V

    .line 1438
    :cond_141
    :goto_141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mContactListIntent:Landroid/content/Intent;

    .line 1439
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1446
    if-nez p1, :cond_174

    .line 1447
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_174

    .line 1449
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v3, :cond_1b7

    .line 1450
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1457
    :cond_174
    :goto_174
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 1458
    iput-boolean v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 1463
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$5;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 1473
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1474
    if-eqz v0, :cond_b

    .line 1476
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_b

    .line 1409
    :cond_18b
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_f7

    .line 1430
    :cond_195
    if-ne v0, v3, :cond_19e

    .line 1431
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->addPreferencesFromResource(I)V

    goto :goto_141

    .line 1433
    :cond_19e
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

    .line 1452
    :cond_1b7
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1453
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_174
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const/16 v9, 0x25b

    const/16 v8, 0x259

    const/4 v7, 0x0

    const v6, 0x7f0e0085

    .line 1219
    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_1c

    const/16 v5, 0x190

    if-eq p1, v5, :cond_1c

    const/16 v5, 0x1f5

    if-eq p1, v5, :cond_1c

    const/16 v5, 0x1f6

    if-eq p1, v5, :cond_1c

    const/16 v5, 0x258

    if-ne p1, v5, :cond_81

    .line 1223
    :cond_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1226
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e007d

    .line 1227
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_b8

    .line 1258
    const v3, 0x7f0e0082

    .line 1261
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1265
    :goto_2d
    invoke-virtual {p0, v4}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1266
    invoke-virtual {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1267
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1268
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1272
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1289
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_4e
    return-object v1

    .line 1229
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_4f
    const v3, 0x7f0e008a

    .line 1230
    .restart local v3       #msgId:I
    const v4, 0x7f0e0053

    .line 1232
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2d

    .line 1237
    .end local v3           #msgId:I
    :sswitch_59
    const v3, 0x7f0e008e

    .line 1238
    .restart local v3       #msgId:I
    const v4, 0x7f0e0053

    .line 1240
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2d

    .line 1243
    .end local v3           #msgId:I
    :sswitch_63
    const v3, 0x7f0e008b

    .line 1245
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2d

    .line 1248
    .end local v3           #msgId:I
    :sswitch_6a
    const v3, 0x7f0e008c

    .line 1250
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2d

    .line 1253
    .end local v3           #msgId:I
    :sswitch_71
    const v3, 0x7f0e008d

    .line 1254
    .restart local v3       #msgId:I
    const v5, 0x7f0e01d3

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1255
    const v5, 0x7f0e01d4

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2d

    .line 1275
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_81
    if-eq p1, v8, :cond_89

    const/16 v5, 0x25a

    if-eq p1, v5, :cond_89

    if-ne p1, v9, :cond_b6

    .line 1277
    :cond_89
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1278
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0e007c

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1279
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1280
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1281
    if-ne p1, v8, :cond_ac

    const v5, 0x7f0e007f

    :goto_a4
    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_4e

    :cond_ac
    if-ne p1, v9, :cond_b2

    const v5, 0x7f0e0080

    goto :goto_a4

    :cond_b2
    const v5, 0x7f0e007e

    goto :goto_a4

    .line 1289
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_b6
    const/4 v1, 0x0

    goto :goto_4e

    .line 1227
    :sswitch_data_b8
    .sparse-switch
        0x190 -> :sswitch_59
        0x1f4 -> :sswitch_63
        0x1f5 -> :sswitch_6a
        0x1f6 -> :sswitch_71
        0x258 -> :sswitch_4f
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .registers 5
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 539
    const/4 v1, -0x2

    if-ne p2, v1, :cond_4

    .line 553
    :cond_3
    :goto_3
    return-void

    .line 542
    :cond_4
    instance-of v1, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_10

    .line 543
    move-object v0, p1

    .line 545
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_10

    .line 546
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMBtnClickRequest()V

    .line 550
    .end local v0           #epn:Lcom/android/phone/EditPhoneNumberPreference;
    :cond_10
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_3

    .line 551
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMBtnClickRequest()V

    goto :goto_3
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_9

    .line 564
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 576
    :cond_8
    :goto_8
    return-object v1

    .line 568
    :cond_9
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, vmDisplay:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0054

    invoke-virtual {p0, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

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
    .line 1848
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1849
    const v1, 0x102002c

    if-ne v0, v1, :cond_22

    .line 1850
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1851
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1852
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1853
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->startActivity(Landroid/content/Intent;)V

    .line 1854
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->finish()V

    .line 1855
    const/4 v0, 0x1

    .line 1857
    :goto_21
    return v0

    :cond_22
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_21
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 441
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForeground:Z

    .line 443
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x1

    .line 490
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_20

    .line 491
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 493
    .local v1, doVibrate:Z
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vibrate_when_ringing"

    if-eqz v1, :cond_1e

    move v4, v5

    :goto_1a
    invoke-static {v6, v7, v4}, Lcom/huawei/android/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    .end local v1           #doVibrate:Z
    :cond_1d
    :goto_1d
    return v5

    .line 493
    .restart local v1       #doVibrate:Z
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1a

    .line 496
    .end local v1           #doVibrate:Z
    .restart local p2
    :cond_20
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_4a

    .line 497
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    .local v0, currentProviderKey:Ljava/lang/String;
    move-object v2, p2

    .line 498
    check-cast v2, Ljava/lang/String;

    .line 500
    .local v2, newProviderKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 504
    invoke-direct {p0, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 508
    invoke-direct {p0, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v3

    .line 517
    .local v3, newProviderSettings:Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    if-nez v3, :cond_44

    .line 519
    iput-boolean v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 520
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4}, Lcom/android/phone/MSimCallFeaturesSubSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_1d

    .line 523
    :cond_44
    iput-boolean v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 524
    invoke-direct {p0, v2, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    goto :goto_1d

    .line 526
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v2           #newProviderKey:Ljava/lang/String;
    .end local v3           #newProviderSettings:Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    :cond_4a
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_61

    .line 527
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 528
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 530
    .restart local p2
    :cond_61
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1d

    .line 531
    invoke-direct {p0, p2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 460
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v2, :cond_7

    .line 477
    :goto_6
    return v0

    .line 462
    :cond_7
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_22

    .line 463
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 465
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    .line 470
    :cond_1a
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 471
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    move v0, v1

    .line 474
    goto :goto_6

    :cond_22
    move v0, v1

    .line 477
    goto :goto_6
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1212
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1213
    iput p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    .line 1214
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1545
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1547
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1567
    :cond_a
    :goto_a
    return-void

    .line 1551
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForeground:Z

    .line 1553
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1554
    const-string v0, "sip_settings_category_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1555
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 1556
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    move v0, v1

    .line 1557
    :goto_23
    if-ge v0, v4, :cond_a

    .line 1558
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 1559
    if-eq v5, v2, :cond_2e

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1557
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1563
    :cond_31
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3e

    .line 1564
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1566
    :cond_3e
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->lookupRingtoneName()V

    goto :goto_a
.end method

.method onRevertDone()V
    .registers 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 650
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 651
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_1b

    .line 652
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 653
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 655
    :cond_1b
    return-void
.end method

.method setVMNumberWithCarrier()V
    .registers 6

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 985
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 583
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 585
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 590
    :goto_6
    return-void

    .line 589
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method
