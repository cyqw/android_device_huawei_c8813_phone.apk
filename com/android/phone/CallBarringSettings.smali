.class public Lcom/android/phone/CallBarringSettings;
.super Landroid/preference/PreferenceActivity;
.source "CallBarringSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallBarringSettings$1;,
        Lcom/android/phone/CallBarringSettings$MainHandler;,
        Lcom/android/phone/CallBarringSettings$SettingHandler;,
        Lcom/android/phone/CallBarringSettings$LoadingHandler;
    }
.end annotation


# instance fields
.field private callBarringSettings:Landroid/preference/PreferenceScreen;

.field private mAllIncomingPref:Landroid/preference/CheckBoxPreference;

.field private mAllOutgoingPref:Landroid/preference/CheckBoxPreference;

.field private mCheckedAllIncoming:Z

.field private mCheckedAllOutgoing:Z

.field private mCheckedIncomingCallsWhenRoaming:Z

.field private mCheckedOutgoingInternational:Z

.field private mCheckedOutgoingInternationalRoaming:Z

.field private mClickPreference:Landroid/preference/Preference;

.field private mDeactivateAllPref:Landroid/preference/Preference;

.field private mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;

.field private mIncomingCallsWhenRoamingPref:Landroid/preference/CheckBoxPreference;

.field private mLoadingHandler:Lcom/android/phone/CallBarringSettings$LoadingHandler;

.field private mMainHandler:Lcom/android/phone/CallBarringSettings$MainHandler;

.field private mOutgoingInternationalPref:Landroid/preference/CheckBoxPreference;

.field private mOutgoingInternationalRoamingPref:Landroid/preference/CheckBoxPreference;

.field private mPasswordText:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSettingHandler:Lcom/android/phone/CallBarringSettings$SettingHandler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/android/phone/CallBarringSettings$SettingHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallBarringSettings$SettingHandler;-><init>(Lcom/android/phone/CallBarringSettings;Lcom/android/phone/CallBarringSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mSettingHandler:Lcom/android/phone/CallBarringSettings$SettingHandler;

    .line 42
    new-instance v0, Lcom/android/phone/CallBarringSettings$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallBarringSettings$MainHandler;-><init>(Lcom/android/phone/CallBarringSettings;Lcom/android/phone/CallBarringSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mMainHandler:Lcom/android/phone/CallBarringSettings$MainHandler;

    .line 43
    new-instance v0, Lcom/android/phone/CallBarringSettings$LoadingHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallBarringSettings$LoadingHandler;-><init>(Lcom/android/phone/CallBarringSettings;Lcom/android/phone/CallBarringSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mLoadingHandler:Lcom/android/phone/CallBarringSettings$LoadingHandler;

    .line 378
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallBarringSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSettings;->mCheckedAllIncoming:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/CallBarringSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/phone/CallBarringSettings;->mCheckedAllIncoming:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/CallBarringSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSettings;->mCheckedIncomingCallsWhenRoaming:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/CallBarringSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/phone/CallBarringSettings;->mCheckedIncomingCallsWhenRoaming:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/CallBarringSettings;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringSettings$MainHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mMainHandler:Lcom/android/phone/CallBarringSettings$MainHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/CallBarringSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/phone/CallBarringSettings;->enableAllPreference()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/CallBarringSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/phone/CallBarringSettings;->updateCallBarringSettings()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/CallBarringSettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPasswordText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/phone/CallBarringSettings;->mPasswordText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringEnterPasswordDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/CallBarringSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/phone/CallBarringSettings;->showPasswordIncorrectInfo()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/CallBarringSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/phone/CallBarringSettings;->showOperationFailureInfo()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringSettings;->dismissProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallBarringSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/phone/CallBarringSettings;->loadFailure()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallBarringSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSettings;->mCheckedAllOutgoing:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/CallBarringSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/phone/CallBarringSettings;->mCheckedAllOutgoing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringSettings$LoadingHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mLoadingHandler:Lcom/android/phone/CallBarringSettings$LoadingHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallBarringSettings;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallBarringSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternational:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/CallBarringSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternational:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/CallBarringSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternationalRoaming:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/CallBarringSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternationalRoaming:Z

    return p1
.end method

.method private disableAllPreference()V
    .registers 3

    .prologue
    .line 92
    const-string v0, "disableAllPreference"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->callBarringSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_f

    .line 94
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->callBarringSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 96
    :cond_f
    return-void
.end method

.method private dismissProgressDialog(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 116
    const-string v0, "dismissProgressDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 118
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 119
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mMainHandler:Lcom/android/phone/CallBarringSettings$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBarringSettings$MainHandler;->removeMessages(I)V

    .line 120
    const-string v0, "dismiss progress dialog and remove timeout message"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 124
    :goto_21
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 125
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    :cond_30
    return-void

    .line 122
    :cond_31
    const-string v0, "There is not Progress dialog"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private enableAllPreference()V
    .registers 3

    .prologue
    .line 99
    const-string v0, "enableAllPreference"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->callBarringSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_f

    .line 101
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->callBarringSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 103
    :cond_f
    return-void
.end method

.method private loadCallBarringSettings()V
    .registers 6

    .prologue
    .line 142
    const-string v0, "loadCallBarringSettings"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/android/phone/CallBarringSettings;->disableAllPreference()V

    .line 145
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mLoadingHandler:Lcom/android/phone/CallBarringSettings$LoadingHandler;

    if-eqz v0, :cond_24

    .line 146
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AO"

    const-string v2, ""

    iget-object v3, p0, Lcom/android/phone/CallBarringSettings;->mLoadingHandler:Lcom/android/phone/CallBarringSettings$LoadingHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/CallBarringSettings$LoadingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 147
    invoke-direct {p0}, Lcom/android/phone/CallBarringSettings;->showProgressDialog()V

    .line 152
    :goto_23
    return-void

    .line 149
    :cond_24
    const-string v0, "mPhone == null || mLoadingHandler == null, loading is failed"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/android/phone/CallBarringSettings;->loadFailure()V

    goto :goto_23
.end method

.method private loadFailure()V
    .registers 2

    .prologue
    .line 130
    const v0, 0x7f0e043b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->dismissProgressDialog(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 2
    .parameter "log"

    .prologue
    .line 396
    return-void
.end method

.method private showOperationFailureInfo()V
    .registers 3

    .prologue
    .line 134
    const v0, 0x7f0e043b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    return-void
.end method

.method private showPasswordIncorrectInfo()V
    .registers 3

    .prologue
    .line 138
    const v0, 0x7f0e0439

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    return-void
.end method

.method private showProgressDialog()V
    .registers 5

    .prologue
    .line 106
    const-string v0, "showProgressDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 108
    const-string v0, "Progress dialog is running"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 113
    :goto_16
    return-void

    .line 110
    :cond_17
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mMainHandler:Lcom/android/phone/CallBarringSettings$MainHandler;

    iget-object v1, p0, Lcom/android/phone/CallBarringSettings;->mMainHandler:Lcom/android/phone/CallBarringSettings$MainHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CallBarringSettings$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallBarringSettings$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 111
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSettings;->showDialog(I)V

    goto :goto_16
.end method

.method private updateCallBarringSettings()V
    .registers 3

    .prologue
    .line 189
    const-string v0, "updateCallBarringSettings"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mAllOutgoingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/CallBarringSettings;->mCheckedAllOutgoing:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mOutgoingInternationalPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternational:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mOutgoingInternationalRoamingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternationalRoaming:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mAllIncomingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/CallBarringSettings;->mCheckedAllIncoming:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mIncomingCallsWhenRoamingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/CallBarringSettings;->mCheckedIncomingCallsWhenRoaming:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 198
    const-string v0, "onClick"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;

    if-eqz v0, :cond_3c

    .line 200
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallBarringEnterPasswordDialog;->isOkButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 201
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringEnterPasswordDialog;->disableAllButton()V

    .line 202
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringEnterPasswordDialog;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPasswordText:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mClickPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/CallBarringSettings;->mAllOutgoingPref:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_3d

    .line 205
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AO"

    iget-object v2, p0, Lcom/android/phone/CallBarringSettings;->mPasswordText:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/phone/CallBarringSettings;->mCheckedAllOutgoing:Z

    if-nez v4, :cond_31

    move v3, v5

    :cond_31
    const-string v4, ""

    iget-object v6, p0, Lcom/android/phone/CallBarringSettings;->mSettingHandler:Lcom/android/phone/CallBarringSettings$SettingHandler;

    invoke-virtual {v6, v5}, Lcom/android/phone/CallBarringSettings$SettingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 230
    :cond_3c
    :goto_3c
    return-void

    .line 207
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mClickPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/CallBarringSettings;->mOutgoingInternationalPref:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_5b

    .line 208
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "OI"

    iget-object v2, p0, Lcom/android/phone/CallBarringSettings;->mPasswordText:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternational:Z

    if-nez v4, :cond_4e

    move v3, v5

    :cond_4e
    const-string v4, ""

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings;->mSettingHandler:Lcom/android/phone/CallBarringSettings$SettingHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/phone/CallBarringSettings$SettingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_3c

    .line 210
    :cond_5b
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mClickPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/CallBarringSettings;->mOutgoingInternationalRoamingPref:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_79

    .line 211
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "OX"

    iget-object v2, p0, Lcom/android/phone/CallBarringSettings;->mPasswordText:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternationalRoaming:Z

    if-nez v4, :cond_6c

    move v3, v5

    :cond_6c
    const-string v4, ""

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings;->mSettingHandler:Lcom/android/phone/CallBarringSettings$SettingHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/phone/CallBarringSettings$SettingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_3c

    .line 213
    :cond_79
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mClickPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/CallBarringSettings;->mAllIncomingPref:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_97

    .line 214
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AI"

    iget-object v2, p0, Lcom/android/phone/CallBarringSettings;->mPasswordText:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/phone/CallBarringSettings;->mCheckedAllIncoming:Z

    if-nez v4, :cond_8a

    move v3, v5

    :cond_8a
    const-string v4, ""

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings;->mSettingHandler:Lcom/android/phone/CallBarringSettings$SettingHandler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/phone/CallBarringSettings$SettingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_3c

    .line 216
    :cond_97
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mClickPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/CallBarringSettings;->mIncomingCallsWhenRoamingPref:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_b5

    .line 217
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "IR"

    iget-object v2, p0, Lcom/android/phone/CallBarringSettings;->mPasswordText:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/phone/CallBarringSettings;->mCheckedIncomingCallsWhenRoaming:Z

    if-nez v4, :cond_a8

    move v3, v5

    :cond_a8
    const-string v4, ""

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings;->mSettingHandler:Lcom/android/phone/CallBarringSettings$SettingHandler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/phone/CallBarringSettings$SettingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_3c

    .line 219
    :cond_b5
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mClickPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/CallBarringSettings;->mDeactivateAllPref:Landroid/preference/Preference;

    if-ne v0, v1, :cond_3c

    .line 220
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AB"

    iget-object v2, p0, Lcom/android/phone/CallBarringSettings;->mPasswordText:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings;->mSettingHandler:Lcom/android/phone/CallBarringSettings$SettingHandler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/android/phone/CallBarringSettings$SettingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_3c

    .line 223
    :cond_cf
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallBarringEnterPasswordDialog;->isCancelButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 225
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallBarringEnterPasswordDialog;->dismiss()V

    .line 227
    invoke-direct {p0}, Lcom/android/phone/CallBarringSettings;->updateCallBarringSettings()V

    goto/16 :goto_3c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 68
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    const-string v0, "button_cbs_all_outgoing_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mAllOutgoingPref:Landroid/preference/CheckBoxPreference;

    .line 76
    const-string v0, "button_cbs_outgoing_international_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mOutgoingInternationalPref:Landroid/preference/CheckBoxPreference;

    .line 77
    const-string v0, "button_international_roaming_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mOutgoingInternationalRoamingPref:Landroid/preference/CheckBoxPreference;

    .line 78
    const-string v0, "button_all_incoming_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mAllIncomingPref:Landroid/preference/CheckBoxPreference;

    .line 79
    const-string v0, "button_incoming_calls_when_roaming_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mIncomingCallsWhenRoamingPref:Landroid/preference/CheckBoxPreference;

    .line 80
    const-string v0, "button_deactivate_all_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mDeactivateAllPref:Landroid/preference/Preference;

    .line 81
    const-string v0, "call_barring_settings_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->callBarringSettings:Landroid/preference/PreferenceScreen;

    .line 83
    invoke-direct {p0}, Lcom/android/phone/CallBarringSettings;->loadCallBarringSettings()V

    .line 84
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    const-string v0, "onCreateDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 165
    if-ne p1, v3, :cond_18

    .line 166
    new-instance v0, Lcom/android/phone/CallBarringEnterPasswordDialog;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/CallBarringEnterPasswordDialog;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;

    .line 167
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallBarringEnterPasswordDialog;->setCancelable(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;

    .line 185
    :goto_17
    return-object v0

    .line 171
    :cond_18
    const/4 v0, 0x2

    if-ne p1, v0, :cond_55

    .line 172
    const-string v0, "id == DIALOG_CALL_BARRING_LOADING"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_30

    .line 174
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 175
    const-string v0, "new ProgressDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 177
    :cond_30
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e007c

    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e007e

    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_17

    .line 185
    :cond_55
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 155
    const-string v0, "onPreferenceTreeClick"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSettings;->showDialog(I)V

    .line 157
    iput-object p2, p0, Lcom/android/phone/CallBarringSettings;->mClickPreference:Landroid/preference/Preference;

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 87
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V

    .line 88
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 89
    return-void
.end method
