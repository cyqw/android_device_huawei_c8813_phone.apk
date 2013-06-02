.class public Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "Use2GOnlyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;,
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;,
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
    }
.end annotation


# static fields
.field private static SetPreNetOK_flag:Z

.field private static mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

.field private static mPhone:Lcom/android/internal/telephony/Phone;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mStateHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->SetPreNetOK_flag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 74
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 79
    :goto_15
    new-instance v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V

    sput-object v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    .line 80
    sget-object v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 84
    new-instance v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mStateHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;

    .line 85
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 87
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mStateHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;

    const/16 v3, 0xd6

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 91
    return-void

    .line 76
    .end local v0           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_44
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_15
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    sput-boolean p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->SetPreNetOK_flag:Z

    return p0
.end method

.method static synthetic access$300()Lcom/android/internal/telephony/Phone;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static updatePhone(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 114
    sput-object p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 117
    :try_start_2
    const-string v1, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhone subscription :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_2 .. :try_end_20} :catch_2d

    .line 122
    :goto_20
    sget-object v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 124
    return-void

    .line 118
    :catch_2d
    move-exception v0

    .line 119
    .local v0, e:Lcom/huawei/android/util/NoExtAPIException;
    const-string v1, "Use2GOnlyCheckBoxPreference"

    const-string v2, "updatePhone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method


# virtual methods
.method public handlePref2g()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_13

    sget-boolean v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->SetPreNetOK_flag:Z

    if-ne v0, v2, :cond_13

    .line 225
    invoke-virtual {p0, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    .line 230
    :goto_12
    return-void

    .line 227
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    goto :goto_12
.end method

.method protected onAttachedToActivity()V
    .registers 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onAttachedToActivity()V

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->handlePref2g()V

    .line 219
    return-void
.end method

.method protected onClick()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    sget-object v3, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    iget-boolean v3, v3, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->mClicked:Z

    if-nez v3, :cond_26

    .line 97
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 98
    sget-object v3, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    iput-boolean v1, v3, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->mClicked:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_27

    move v0, v1

    .line 101
    .local v0, networkType:I
    :goto_16
    sget-object v3, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-virtual {v4, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    .line 107
    sput-boolean v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->SetPreNetOK_flag:Z

    .line 111
    .end local v0           #networkType:I
    :cond_26
    return-void

    :cond_27
    move v0, v2

    .line 99
    goto :goto_16
.end method
