.class public Lcom/android/phone/MSimDialerActivity;
.super Landroid/app/Activity;
.source "MSimDialerActivity.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallNumber:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCount:I

.field private mTextNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimDialerActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MSimDialerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V

    return-void
.end method

.method private getSubscriptionForEmergencyCall()I
    .registers 3

    .prologue
    .line 143
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getVoiceSubscriptionInService()I

    move-result v0

    .line 144
    .local v0, sub:I
    return v0
.end method

.method private launchMSDialer()V
    .registers 16

    .prologue
    const v14, 0x7f020042

    const/4 v13, 0x2

    .line 148
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    .line 149
    .local v6, isEmergency:Z
    if-eqz v6, :cond_14

    .line 150
    invoke-direct {p0}, Lcom/android/phone/MSimDialerActivity;->getSubscriptionForEmergencyCall()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V

    .line 238
    :goto_13
    return-void

    .line 154
    :cond_14
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 156
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f04000c

    const v10, 0x7f09004c

    invoke-virtual {p0, v10}, Lcom/android/phone/MSimDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v5, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 159
    .local v7, layout:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 161
    new-instance v10, Lcom/android/phone/MSimDialerActivity$1;

    invoke-direct {v10, p0}, Lcom/android/phone/MSimDialerActivity$1;-><init>(Lcom/android/phone/MSimDialerActivity;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 188
    const v10, 0x7f09004d

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    .line 190
    const-string v9, ""

    .line 191
    .local v9, vm:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_63

    .line 192
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 194
    :cond_63
    if-eqz v9, :cond_ca

    const-string v10, "voicemail"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ca

    .line 195
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/phone/MSimDialerActivity;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "VoiceMail"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_87
    const v10, 0x7f090050

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 201
    .local v2, callCancel:Landroid/widget/Button;
    new-instance v10, Lcom/android/phone/MSimDialerActivity$2;

    invoke-direct {v10, p0}, Lcom/android/phone/MSimDialerActivity$2;-><init>(Lcom/android/phone/MSimDialerActivity;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget v10, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    new-array v1, v10, [Landroid/widget/Button;

    .line 209
    .local v1, callButton:[Landroid/widget/Button;
    new-array v3, v13, [I

    fill-array-data v3, :array_100

    .line 210
    .local v3, callMark:[I
    new-array v8, v13, [I

    fill-array-data v8, :array_108

    .line 211
    .local v8, subString:[I
    const/4 v4, 0x0

    .line 212
    .local v4, index:I
    const/4 v4, 0x0

    :goto_a8
    iget v10, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    if-ge v4, v10, :cond_e5

    .line 213
    aget v10, v3, v4

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    aput-object v10, v1, v4

    .line 214
    aget-object v10, v1, v4

    aget v11, v8, v4

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 215
    aget-object v10, v1, v4

    new-instance v11, Lcom/android/phone/MSimDialerActivity$3;

    invoke-direct {v11, p0}, Lcom/android/phone/MSimDialerActivity$3;-><init>(Lcom/android/phone/MSimDialerActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_a8

    .line 197
    .end local v1           #callButton:[Landroid/widget/Button;
    .end local v2           #callCancel:Landroid/widget/Button;
    .end local v3           #callMark:[I
    .end local v4           #index:I
    .end local v8           #subString:[I
    :cond_ca
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/phone/MSimDialerActivity;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_87

    .line 231
    .restart local v1       #callButton:[Landroid/widget/Button;
    .restart local v2       #callCancel:Landroid/widget/Button;
    .restart local v3       #callMark:[I
    .restart local v4       #index:I
    .restart local v8       #subString:[I
    :cond_e5
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v10

    if-nez v10, :cond_f8

    .line 232
    const/4 v10, 0x0

    aget-object v10, v1, v10

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 237
    :goto_f1
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_13

    .line 234
    :cond_f8
    const/4 v10, 0x1

    aget-object v10, v1, v10

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_f1

    .line 209
    nop

    :array_100
    .array-data 0x4
        0x4et 0x0t 0x9t 0x7ft
        0x4ft 0x0t 0x9t 0x7ft
    .end array-data

    .line 210
    :array_108
    .array-data 0x4
        0xct 0x4t 0xet 0x7ft
        0xdt 0x4t 0xet 0x7ft
    .end array-data
.end method

.method private startOutgoingCall(I)V
    .registers 4
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    const-class v1, Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 253
    iget v0, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    if-ge p1, v0, :cond_1c

    .line 254
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MSimDialerActivity;->setResult(ILandroid/content/Intent;)V

    .line 258
    :goto_18
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->finish()V

    .line 259
    return-void

    .line 256
    :cond_1c
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MSimDialerActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_18
.end method


# virtual methods
.method isInCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 3
    .parameter "phone"

    .prologue
    .line 241
    if-eqz p1, :cond_2e

    .line 242
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 245
    :cond_2c
    const/4 v0, 0x1

    .line 247
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 97
    :goto_9
    return-void

    .line 95
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mCallNumber:Ljava/lang/String;

    goto :goto_9
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    .line 137
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 140
    :cond_f
    return-void
.end method

.method protected onResume()V
    .registers 8

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 103
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    iput v4, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    .line 104
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    .line 106
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-static {v4, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 107
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    if-eqz v4, :cond_2f

    .line 108
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 109
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 112
    :cond_2f
    const/4 v2, 0x0

    .line 113
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 115
    .local v3, phoneInCall:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_32
    iget v4, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    if-ge v0, v4, :cond_43

    .line 116
    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 117
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimDialerActivity;->isInCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 118
    .local v1, inCall:Z
    if-eqz v2, :cond_6f

    if-eqz v1, :cond_6f

    .line 119
    const/4 v3, 0x1

    .line 123
    .end local v1           #inCall:Z
    :cond_43
    if-eqz v3, :cond_72

    .line 125
    const-string v4, "MSimDialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subs ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is in call"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {v2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V

    .line 132
    :goto_6e
    return-void

    .line 115
    .restart local v1       #inCall:Z
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 130
    .end local v1           #inCall:Z
    :cond_72
    invoke-direct {p0}, Lcom/android/phone/MSimDialerActivity;->launchMSDialer()V

    goto :goto_6e
.end method
