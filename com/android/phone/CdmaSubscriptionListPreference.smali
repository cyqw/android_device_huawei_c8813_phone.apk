.class public Lcom/android/phone/CdmaSubscriptionListPreference;
.super Landroid/preference/ListPreference;
.source "CdmaSubscriptionListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaSubscriptionListPreference$1;,
        Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaSubscriptionListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 51
    new-instance v0, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;-><init>(Lcom/android/phone/CdmaSubscriptionListPreference;Lcom/android/phone/CdmaSubscriptionListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    .line 52
    invoke-direct {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setCurrentCdmaSubscriptionModeValue()V

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaSubscriptionListPreference;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/CdmaSubscriptionListPreference;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method private setCurrentCdmaSubscriptionModeValue()V
    .registers 5

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_cdma_subscription"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, cdmaSubscriptionMode:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaSubscriptionListPreference;->setValue(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .registers 8
    .parameter "positiveResult"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 76
    if-nez p1, :cond_6

    .line 103
    :goto_5
    return-void

    .line 81
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    .local v0, buttonCdmaSubscriptionMode:I
    packed-switch v0, :pswitch_data_2c

    .line 94
    const/4 v1, 0x1

    .line 99
    .local v1, statusCdmaSubscriptionMode:I
    :goto_16
    iget-object v2, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    goto :goto_5

    .line 88
    .end local v1           #statusCdmaSubscriptionMode:I
    :pswitch_27
    const/4 v1, 0x1

    .line 89
    .restart local v1       #statusCdmaSubscriptionMode:I
    goto :goto_16

    .line 91
    .end local v1           #statusCdmaSubscriptionMode:I
    :pswitch_29
    const/4 v1, 0x0

    .line 92
    .restart local v1       #statusCdmaSubscriptionMode:I
    goto :goto_16

    .line 86
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_27
    .end packed-switch
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setCurrentCdmaSubscriptionModeValue()V

    .line 69
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method
