.class public Lcom/android/phone/CLIRListPreference;
.super Landroid/preference/ListPreference;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CLIRListPreference$1;,
        Lcom/android/phone/CLIRListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

.field phone:Lcom/android/internal/telephony/Phone;

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CLIRListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CLIRListPreference;->DBG:Z

    .line 25
    new-instance v0, Lcom/android/phone/CLIRListPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference;Lcom/android/phone/CLIRListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    .line 34
    return-void
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .registers 9
    .parameter "tmpClirArray"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 71
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 72
    aget v5, p1, v4

    if-eq v5, v4, :cond_12

    aget v5, p1, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_12

    aget v5, p1, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2a

    :cond_12
    move v0, v4

    .line 74
    .local v0, enabled:Z
    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, value:I
    aget v4, p1, v4

    packed-switch v4, :pswitch_data_44

    .line 98
    :pswitch_1c
    const/4 v2, 0x0

    .line 101
    :goto_1d
    invoke-virtual {p0, v2}, Lcom/android/phone/CLIRListPreference;->setValueIndex(I)V

    .line 104
    const v1, 0x7f0e005f

    .line 105
    .local v1, summary:I
    packed-switch v2, :pswitch_data_50

    .line 116
    :goto_26
    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->setSummary(I)V

    .line 117
    return-void

    .end local v0           #enabled:Z
    .end local v1           #summary:I
    .end local v2           #value:I
    :cond_2a
    move v0, v3

    .line 72
    goto :goto_13

    .line 82
    .restart local v0       #enabled:Z
    .restart local v2       #value:I
    :pswitch_2c
    aget v3, p1, v3

    packed-switch v3, :pswitch_data_5a

    .line 91
    const/4 v2, 0x0

    .line 92
    goto :goto_1d

    .line 84
    :pswitch_33
    const/4 v2, 0x1

    .line 85
    goto :goto_1d

    .line 87
    :pswitch_35
    const/4 v2, 0x2

    .line 88
    goto :goto_1d

    .line 107
    .restart local v1       #summary:I
    :pswitch_37
    const v1, 0x7f0e005e

    .line 108
    goto :goto_26

    .line 110
    :pswitch_3b
    const v1, 0x7f0e005d

    .line 111
    goto :goto_26

    .line 113
    :pswitch_3f
    const v1, 0x7f0e005f

    goto :goto_26

    .line 78
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_1c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch

    .line 105
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
    .end packed-switch

    .line 82
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_35
    .end packed-switch
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .registers 7
    .parameter "listener"
    .parameter "skipReading"
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 60
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 61
    if-nez p2, :cond_24

    .line 62
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 64
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_24

    .line 65
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 68
    :cond_24
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 6
    .parameter "positiveResult"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 46
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_21

    .line 47
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 49
    :cond_21
    return-void
.end method
