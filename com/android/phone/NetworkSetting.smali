.class public Lcom/android/phone/NetworkSetting;
.super Landroid/preference/PreferenceActivity;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkSetting$DataStateReceiver;
    }
.end annotation


# static fields
.field private static display_name_list:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IS_CHINA_TELECOM:Z

.field private haveDisabledDataBeforeSearching:Z

.field private haveSendNetworkScanEvent:Z

.field private mAutoSelect:Landroid/preference/Preference;

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mContext:Landroid/content/Context;

.field private mDataStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

.field private mNetworkList:Landroid/preference/PreferenceGroup;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchButton:Landroid/preference/Preference;

.field private showAlertDialog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 148
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 162
    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    .line 166
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    .line 167
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    .line 169
    const-string v1, "ro.config.hw_opta"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "92"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "ro.config.hw_optb"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "156"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->IS_CHINA_TELECOM:Z

    .line 172
    const-string v0, "false"

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    .line 217
    new-instance v0, Lcom/android/phone/NetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$1;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    .line 324
    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 327
    new-instance v0, Lcom/android/phone/NetworkSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$2;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 347
    new-instance v0, Lcom/android/phone/NetworkSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$3;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkSetting;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/NetworkSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->displayNetworkSearching()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/NetworkSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryServiceCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkSetting;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method private clearList()V
    .registers 4

    .prologue
    .line 847
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 848
    .local v1, p:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 850
    .end local v1           #p:Landroid/preference/Preference;
    :cond_1c
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 851
    return-void
.end method

.method private displayEmptyNetworkList(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_b

    const v0, 0x7f0e0094

    :goto_7
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 657
    return-void

    .line 656
    :cond_b
    const v0, 0x7f0e0092

    goto :goto_7
.end method

.method private displayNetworkQueryFailed(I)V
    .registers 6
    .parameter "error"

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 672
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 674
    return-void
.end method

.method private displayNetworkSearching()V
    .registers 5

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 712
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 714
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "ex"

    .prologue
    .line 679
    if-eqz p1, :cond_26

    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_26

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_26

    .line 683
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, status:Ljava/lang/String;
    :goto_1b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 689
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 691
    return-void

    .line 685
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #status:Ljava/lang/String;
    :cond_26
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #status:Ljava/lang/String;
    goto :goto_1b
.end method

.method private displayNetworkSelectionSucceeded()V
    .registers 7

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 697
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 700
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/NetworkSetting$7;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSetting$7;-><init>(Lcom/android/phone/NetworkSetting;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 705
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .registers 6
    .parameter "networkStr"

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0097

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    .line 663
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_1c

    .line 664
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 666
    :cond_1c
    return-void
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .registers 5
    .parameter "ni"

    .prologue
    .line 832
    const-string v0, ""

    .line 833
    .local v0, mccmnc:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->IS_CHINA_TELECOM:Z

    if-eqz v1, :cond_23

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    :cond_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 842
    :goto_42
    return-object v1

    .line 838
    :cond_43
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    .line 842
    :cond_63
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_42
.end method

.method private getOperatorNameFromCust(Ljava/io/File;)V
    .registers 11
    .parameter "file"

    .prologue
    .line 524
    const/4 v4, 0x0

    .line 525
    .local v4, mcc_mnc_name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 526
    .local v0, display_name:Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    .line 527
    const/4 v2, 0x0

    .line 529
    .local v2, in:Ljava/io/InputStream;
    :try_start_a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_f} :catch_67
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_73

    .line 530
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 532
    .local v5, xml:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 534
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 535
    .local v6, xmlEventType:I
    :goto_1b
    const/4 v7, 0x1

    if-eq v6, v7, :cond_54

    .line 536
    const/4 v7, 0x2

    if-ne v6, v7, :cond_45

    const-string v7, "search"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 537
    const/4 v7, 0x0

    const-string v8, "mcc_mnc_name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 538
    const/4 v7, 0x0

    const-string v8, "display_name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    sget-object v7, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_40
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_1b

    .line 541
    :cond_45
    const/4 v7, 0x3

    if-ne v6, v7, :cond_40

    const-string v7, "OperatorName"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_88
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_51} :catch_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_51} :catch_8e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_51} :catch_8b

    move-result v7

    if-eqz v7, :cond_40

    .line 557
    :cond_54
    if-eqz v3, :cond_59

    .line 558
    :try_start_56
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5b

    :cond_59
    move-object v2, v3

    .line 566
    .end local v3           #in:Ljava/io/InputStream;
    .end local v5           #xml:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #xmlEventType:I
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_5a
    :goto_5a
    return-void

    .line 560
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v5       #xml:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #xmlEventType:I
    :catch_5b
    move-exception v7

    move-object v2, v3

    .line 565
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_5a

    .line 546
    .end local v5           #xml:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #xmlEventType:I
    :catch_5e
    move-exception v7

    .line 557
    :goto_5f
    if-eqz v2, :cond_5a

    .line 558
    :try_start_61
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_5a

    .line 560
    :catch_65
    move-exception v7

    goto :goto_5a

    .line 550
    :catch_67
    move-exception v1

    .line 551
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_68
    :try_start_68
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_7f

    .line 557
    if-eqz v2, :cond_5a

    .line 558
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_5a

    .line 560
    :catch_71
    move-exception v7

    goto :goto_5a

    .line 552
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_73
    move-exception v1

    .line 553
    .local v1, e:Ljava/io/IOException;
    :goto_74
    :try_start_74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_7f

    .line 557
    if-eqz v2, :cond_5a

    .line 558
    :try_start_79
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_5a

    .line 560
    :catch_7d
    move-exception v7

    goto :goto_5a

    .line 555
    .end local v1           #e:Ljava/io/IOException;
    :catchall_7f
    move-exception v7

    .line 557
    :goto_80
    if-eqz v2, :cond_85

    .line 558
    :try_start_82
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    .line 564
    :cond_85
    :goto_85
    throw v7

    .line 560
    :catch_86
    move-exception v8

    goto :goto_85

    .line 555
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catchall_88
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_80

    .line 552
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_8b
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_74

    .line 550
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_8e
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_68

    .line 546
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_91
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_5f
.end method

.method private loadNetworksList()V
    .registers 4

    .prologue
    .line 720
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 721
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 724
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 725
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0396

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0397

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0398

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 746
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_43
    return-void

    .line 735
    :cond_44
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v1, :cond_4d

    .line 736
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 741
    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_54} :catch_59

    .line 745
    :goto_54
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto :goto_43

    .line 742
    :catch_59
    move-exception v1

    goto :goto_54
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 863
    const-string v0, "NetworkSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .registers 12
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 758
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 759
    iget-boolean v5, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    if-eqz v5, :cond_24

    .line 760
    const-string v5, "NetworkSetting, ended searching, reenable data."

    invoke-direct {p0, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 761
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 763
    .local v1, cm:Landroid/net/ConnectivityManager;
    iput-boolean v8, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    .line 764
    iput-boolean v8, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    .line 765
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 774
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :cond_24
    :try_start_24
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 775
    .local v3, kgm:Landroid/app/KeyguardManager;
    iget-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-nez v5, :cond_38

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 776
    :cond_38
    const/16 v5, 0xc8

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->dismissDialog(I)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_3d} :catch_ca

    .line 783
    .end local v3           #kgm:Landroid/app/KeyguardManager;
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 784
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 786
    if-eqz p2, :cond_50

    .line 787
    invoke-direct {p0, p2}, Lcom/android/phone/NetworkSetting;->displayNetworkQueryFailed(I)V

    .line 788
    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 819
    :cond_4f
    :goto_4f
    return-void

    .line 790
    :cond_50
    if-eqz p1, :cond_c6

    .line 791
    invoke-direct {p0, v8}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 796
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo;

    .line 797
    .local v4, ni:Lcom/android/internal/telephony/OperatorInfo;
    new-instance v0, Landroid/preference/Preference;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 800
    .local v0, carrier:Landroid/preference/Preference;
    sget-object v5, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    if-eqz v5, :cond_be

    sget-object v5, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_be

    sget-object v5, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    sget-object v5, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_be

    const-string v5, ""

    sget-object v6, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_be

    .line 804
    sget-object v5, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 809
    :goto_b0
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 810
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 811
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    .line 806
    :cond_be
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_b0

    .line 816
    .end local v0           #carrier:Landroid/preference/Preference;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #ni:Lcom/android/internal/telephony/OperatorInfo;
    :cond_c6
    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto :goto_4f

    .line 778
    :catch_ca
    move-exception v5

    goto/16 :goto_3d
.end method

.method private selectNetworkAutomatic()V
    .registers 4

    .prologue
    const/16 v2, 0x12c

    .line 854
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v1, :cond_9

    .line 855
    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 858
    :cond_9
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 859
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 860
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 416
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 417
    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    if-eqz v2, :cond_24

    .line 418
    const-string v2, "NetworkSetting,ended searching by cancel, reenable data."

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 419
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 421
    .local v0, cm:Landroid/net/ConnectivityManager;
    iput-boolean v4, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    .line 422
    iput-boolean v4, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    .line 423
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 429
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v2, v3}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_2f

    .line 433
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    .line 434
    return-void

    .line 430
    :catch_2f
    move-exception v1

    .line 431
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 175
    const/4 v3, -0x1

    if-ne p2, v3, :cond_65

    .line 176
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 179
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkSetting, mNetworkInfo state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 181
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-eq v3, v4, :cond_4b

    .line 182
    const-string v3, "NetworkSetting, currently no data connectivity exist,start network scan immediately"

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 183
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    .line 184
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    :cond_4b
    const-string v3, "NetworkSetting, Ok button clicked, send disable data msg."

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x258

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 188
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 189
    iget-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v3, :cond_65

    .line 190
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 193
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #mNetworkInfo:Landroid/net/NetworkInfo;
    .end local v2           #msg:Landroid/os/Message;
    :cond_65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 445
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 447
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->addPreferencesFromResource(I)V

    .line 449
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 453
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    const-string v2, "subscription"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    iput-object p0, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    .line 461
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "list_networks_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    .line 462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    .line 464
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "button_srch_netwrks_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    .line 465
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "button_auto_select_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    .line 467
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/cust/xml"

    const-string v3, "operator_name.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v2, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    if-nez v2, :cond_8c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 469
    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->getOperatorNameFromCust(Ljava/io/File;)V

    .line 474
    :cond_8c
    const-string v0, "ro.config.hw_show_alert_dialog"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 476
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 478
    new-instance v2, Lcom/android/phone/NetworkSetting$DataStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/NetworkSetting$DataStateReceiver;-><init>(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$1;)V

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    .line 479
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/NetworkSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 487
    :cond_b4
    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 488
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/NetworkSetting;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 492
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 496
    new-instance v0, Lcom/android/phone/NetworkSetting$6;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$6;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/NetworkSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 517
    :cond_dd
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 610
    const/16 v1, 0x64

    if-eq p1, v1, :cond_e

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_e

    const/16 v1, 0x12c

    if-ne p1, v1, :cond_4f

    .line 612
    :cond_e
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 613
    .local v0, dialog:Landroid/app/ProgressDialog;
    sparse-switch p1, :sswitch_data_52

    .line 632
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 633
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 634
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 636
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 642
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_2d
    return-object v0

    .line 620
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :sswitch_2e
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 621
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 622
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_2d

    .line 625
    :sswitch_3a
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 627
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_2d

    .line 642
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_4f
    const/4 v0, 0x0

    goto :goto_2d

    .line 613
    nop

    :sswitch_data_52
    .sparse-switch
        0x64 -> :sswitch_2e
        0x12c -> :sswitch_3a
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->unbindService(Landroid/content/ServiceConnection;)V

    .line 590
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 591
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 596
    :cond_14
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1d

    .line 600
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 604
    :cond_1d
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 605
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 576
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 578
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, handled:Z
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    if-ne p2, v3, :cond_a

    .line 362
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    .line 363
    const/4 v0, 0x1

    .line 394
    :goto_9
    return v0

    .line 364
    :cond_a
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    if-ne p2, v3, :cond_13

    .line 365
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic()V

    .line 366
    const/4 v0, 0x1

    goto :goto_9

    .line 369
    :cond_13
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 370
    .local v1, resolver:Landroid/content/ContentResolver;
    move-object v2, p2

    .line 372
    .local v2, selectedCarrier:Landroid/preference/Preference;
    const-string v3, "show_outofservice_notify"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_58

    .line 373
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e045e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e045f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e01d3

    new-instance v5, Lcom/android/phone/NetworkSetting$5;

    invoke-direct {v5, p0, v2}, Lcom/android/phone/NetworkSetting$5;-><init>(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e01d4

    new-instance v5, Lcom/android/phone/NetworkSetting$4;

    invoke-direct {v5, p0}, Lcom/android/phone/NetworkSetting$4;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 390
    :goto_56
    const/4 v0, 0x1

    goto :goto_9

    .line 388
    :cond_58
    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->selectNetworkManually(Landroid/preference/Preference;)V

    goto :goto_56
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 647
    const/16 v0, 0x64

    if-eq p1, v0, :cond_c

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_c

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_14

    .line 651
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 653
    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 570
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 572
    return-void
.end method

.method public selectNetworkManually(Landroid/preference/Preference;)V
    .registers 8
    .parameter "selectedCarrier"

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, networkStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 402
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    invoke-interface {v3, v2, v0}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 404
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 407
    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    .line 409
    return-void
.end method
