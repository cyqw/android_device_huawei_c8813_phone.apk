.class public Lcom/android/phone/CallForwardEditPreference;
.super Lcom/android/phone/EditPhoneNumberPreference;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardEditPreference$1;,
        Lcom/android/phone/CallForwardEditPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mButtonClicked:I

.field private mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

.field private mServiceClass:I

.field private mSummaryOnTemplate:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/Phone;

.field reason:I

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "{0}"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v1, Lcom/android/phone/CallForwardEditPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    .line 49
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    .line 51
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f100006

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    .line 55
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallForwardEditPreference;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallForwardEditPreference;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V

    return-void
.end method

.method private updateSummaryText()V
    .registers 6

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, number:Ljava/lang/String;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_24

    .line 178
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 179
    .local v2, values:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    sget-object v4, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 183
    .end local v2           #values:[Ljava/lang/String;
    .local v1, summaryOn:Ljava/lang/CharSequence;
    :goto_20
    invoke-virtual {p0, v1}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 186
    .end local v0           #number:Ljava/lang/String;
    .end local v1           #summaryOn:Ljava/lang/CharSequence;
    :cond_23
    return-void

    .line 181
    .restart local v0       #number:Ljava/lang/String;
    :cond_24
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0069

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #summaryOn:Ljava/lang/CharSequence;
    goto :goto_20
.end method


# virtual methods
.method public getVmNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V
    .registers 4
    .parameter "cf"

    .prologue
    const/4 v0, 0x1

    .line 166
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 169
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v0, :cond_14

    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 170
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 171
    return-void

    .line 169
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .registers 9
    .parameter "listener"
    .parameter "skipReading"
    .parameter "subscription"

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 74
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 75
    if-nez p2, :cond_28

    .line 76
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 81
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_27

    .line 82
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 93
    :cond_27
    :goto_27
    return-void

    .line 87
    :cond_28
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 89
    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V

    goto :goto_27
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 103
    iput p2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    .line 104
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 11
    .parameter "positiveResult"

    .prologue
    const/4 v0, 0x3

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onDialogClosed(Z)V

    .line 114
    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v5, -0x2

    if-eq v2, v5, :cond_37

    .line 115
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v2

    if-nez v2, :cond_16

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    if-ne v2, v8, :cond_3a

    :cond_16
    move v1, v0

    .line 118
    .local v1, action:I
    :goto_17
    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3c

    move v4, v6

    .line 119
    .local v4, time:I
    :goto_1d
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, number:Ljava/lang/String;
    if-ne v1, v0, :cond_3f

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v7, :cond_3f

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 161
    .end local v1           #action:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #time:I
    :cond_37
    :goto_37
    iput v6, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    .line 163
    return-void

    :cond_3a
    move v1, v6

    .line 115
    goto :goto_17

    .line 118
    .restart local v1       #action:I
    :cond_3c
    const/16 v4, 0x14

    goto :goto_1d

    .line 131
    .restart local v3       #number:Ljava/lang/String;
    .restart local v4       #time:I
    :cond_3f
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    if-eq v0, v8, :cond_48

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v2, -0x3

    if-ne v0, v2, :cond_37

    .line 140
    :cond_48
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 144
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v5, v7, v1, v7}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 152
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_37

    .line 153
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_37
.end method
