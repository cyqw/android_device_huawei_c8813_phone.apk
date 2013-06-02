.class public Lcom/android/phone/SipCallOptionHandler;
.super Landroid/app/Activity;
.source "SipCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DBG:Z

.field private static final IMS_DBG:Z


# instance fields
.field private imsCallType:I

.field private imsServerAddress:Ljava/lang/String;

.field private isImsDefault:Z

.field private mCallOption:Ljava/lang/String;

.field private mDialogs:[Landroid/app/Dialog;

.field private mImsSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

.field private mIntent:Landroid/content/Intent;

.field private mMakePrimary:Z

.field private mNumber:Ljava/lang/String;

.field private mOutgoingSipProfile:Landroid/net/sip/SipProfile;

.field private mProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mUnsetPriamryHint:Landroid/widget/TextView;

.field private mUseSipPhone:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    .line 73
    const-string v0, "IMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/SipCallOptionHandler;->IMS_DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .line 92
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->isImsDefault:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SipCallOptionHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/SipCallOptionHandler;Landroid/net/sip/SipProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/SipCallOptionHandler;->createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SipCallOptionHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/SipCallOptionHandler;)Lcom/android/phone/sip/SipSharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/SipCallOptionHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/SipCallOptionHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->convertCallToIMS()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/SipCallOptionHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getPrimarySipPhone()V

    return-void
.end method

.method private addMakeDefaultCheckBox(Landroid/app/Dialog;)V
    .registers 7
    .parameter "dialog"

    .prologue
    .line 300
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 302
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090027

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 304
    .local v2, view:Landroid/view/View;
    const v3, 0x1020258

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 306
    .local v1, makePrimaryCheckBox:Landroid/widget/CheckBox;
    const v3, 0x7f0e01fa

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 307
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 308
    const v3, 0x1020259

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    .line 310
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const v4, 0x7f0e01fb

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 311
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 313
    return-void
.end method

.method private convertCallToIMS()V
    .registers 7

    .prologue
    .line 478
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 479
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, scheme:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    if-nez v3, :cond_1a

    iget-boolean v3, p0, Lcom/android/phone/SipCallOptionHandler;->isImsDefault:Z

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtils;->isIMSCallIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 510
    :cond_1a
    :goto_1a
    return-void

    .line 490
    :cond_1b
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->imsServerAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 491
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, imsNumber:Ljava/lang/String;
    :goto_29
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v4, "sip"

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 497
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v4, "android.phone.extra.CALL_DOMAIN"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v4, "android.phone.extra.CALL_TYPE"

    iget v5, p0, Lcom/android/phone/SipCallOptionHandler;->imsCallType:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v4, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 505
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v4, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    :cond_57
    sget-boolean v3, Lcom/android/phone/SipCallOptionHandler;->IMS_DBG:Z

    if-eqz v3, :cond_1a

    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IMS number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 493
    .end local v0           #imsNumber:Ljava/lang/String;
    :cond_74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SipCallOptionHandler;->imsServerAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #imsNumber:Ljava/lang/String;
    goto :goto_29
.end method

.method private createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V
    .registers 8
    .parameter "p"

    .prologue
    .line 370
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 371
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 385
    :goto_10
    return-void

    .line 375
    :cond_11
    :try_start_11
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V

    .line 376
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v2

    .line 377
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_40

    .line 378
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z
    :try_end_25
    .catch Landroid/net/sip/SipException; {:try_start_11 .. :try_end_25} :catch_26

    goto :goto_10

    .line 382
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :catch_26
    move-exception v1

    .line 383
    .local v1, e:Landroid/net/sip/SipException;
    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot open sip profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 380
    .end local v1           #e:Landroid/net/sip/SipException;
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    :cond_40
    :try_start_40
    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot make sipphone profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/net/sip/SipException; {:try_start_40 .. :try_end_58} :catch_26

    goto :goto_10
.end method

.method private getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;
    .registers 6
    .parameter "primarySipUri"

    .prologue
    const/4 v2, 0x0

    .line 464
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v3}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    .line 465
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-nez v3, :cond_f

    move-object v1, v2

    .line 469
    :goto_e
    return-object v1

    .line 466
    :cond_f
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 467
    .local v1, p:Landroid/net/sip/SipProfile;
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_e

    .end local v1           #p:Landroid/net/sip/SipProfile;
    :cond_2c
    move-object v1, v2

    .line 469
    goto :goto_e
.end method

.method private getPrimarySipPhone()V
    .registers 3

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, primarySipUri:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    .line 450
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    if-nez v1, :cond_25

    .line 451
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 452
    new-instance v1, Lcom/android/phone/SipCallOptionHandler$3;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$3;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 461
    :goto_24
    return-void

    .line 460
    :cond_25
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_24
.end method

.method private getProfileNameArray()[Ljava/lang/CharSequence;
    .registers 7

    .prologue
    .line 316
    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 317
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 318
    .local v1, i:I
    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;

    .line 319
    .local v4, p:Landroid/net/sip/SipProfile;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_f

    .line 321
    .end local v4           #p:Landroid/net/sip/SipProfile;
    :cond_25
    return-object v0
.end method

.method private isNetworkConnected()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 428
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_18

    .line 429
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 430
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_19

    .line 435
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :cond_18
    :goto_18
    return v2

    .line 432
    .restart local v1       #ni:Landroid/net/NetworkInfo;
    :cond_19
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v3, :cond_25

    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_25
    move v2, v3

    goto :goto_18
.end method

.method private setResultAndFinish()V
    .registers 2

    .prologue
    .line 388
    new-instance v0, Lcom/android/phone/SipCallOptionHandler$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SipCallOptionHandler$1;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method

.method private startGetPrimarySipPhoneThread()V
    .registers 3

    .prologue
    .line 439
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/SipCallOptionHandler$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$2;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 444
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 358
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 361
    iput-boolean p2, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    .line 362
    if-eqz p2, :cond_b

    .line 363
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    :goto_a
    return-void

    .line 365
    :cond_b
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 325
    const/4 v0, -0x2

    if-ne p2, v0, :cond_8

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 354
    :goto_7
    return-void

    .line 329
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_2f

    .line 330
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    .line 332
    const v1, 0x7f0e01fd

    invoke-virtual {p0, v1}, Lcom/android/phone/SipCallOptionHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 333
    iput-boolean v2, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 334
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto :goto_7

    .line 337
    :cond_2f
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aget-object v0, v0, v2

    if-ne p1, v0, :cond_43

    .line 338
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    iput-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    .line 353
    :cond_3f
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_7

    .line 339
    :cond_43
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_51

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_55

    .line 341
    :cond_51
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_7

    .line 344
    :cond_55
    const/4 v0, -0x1

    if-ne p2, v0, :cond_67

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->startActivity(Landroid/content/Intent;)V

    .line 350
    :cond_67
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 104
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 109
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 226
    :goto_18
    return-void

    .line 117
    :cond_19
    const-string v8, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    .line 118
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    if-nez v8, :cond_2b

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_18

    .line 127
    :cond_2b
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/view/Window;->addFlags(I)V

    .line 150
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v7

    .line 151
    .local v7, voipSupported:Z
    new-instance v8, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v8, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 152
    new-instance v8, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v8, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 153
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v8}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    .line 155
    new-instance v8, Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-direct {v8, p0}, Lcom/android/phone/ims/ImsSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mImsSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    .line 156
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mImsSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v8}, Lcom/android/phone/ims/ImsSharedPreferences;->getisImsDefault()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/SipCallOptionHandler;->isImsDefault:Z

    .line 157
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mImsSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v8}, Lcom/android/phone/ims/ImsSharedPreferences;->getServerAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->imsServerAddress:Ljava/lang/String;

    .line 158
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mImsSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v8}, Lcom/android/phone/ims/ImsSharedPreferences;->getCallType()I

    move-result v8

    iput v8, p0, Lcom/android/phone/SipCallOptionHandler;->imsCallType:I

    .line 159
    sget-boolean v8, Lcom/android/phone/SipCallOptionHandler;->IMS_DBG:Z

    if-eqz v8, :cond_a3

    const-string v8, "SipCallOptionHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS Server: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/SipCallOptionHandler;->imsServerAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " IMS call type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/SipCallOptionHandler;->imsCallType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is IMS default: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/phone/SipCallOptionHandler;->isImsDefault:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_a3
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 164
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, scheme:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v8, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v8}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v2

    .line 167
    .local v2, isInCellNetwork:Z
    const-string v8, "tel"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_cf

    const-string v8, "sip"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f0

    :cond_cf
    move v3, v10

    .line 169
    .local v3, isKnownCallScheme:Z
    :goto_d0
    const-string v8, "tel"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e0

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e8

    :cond_e0
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v5, v8}, Lcom/android/phone/PhoneUtils;->isIMSCallIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_f2

    :cond_e8
    move v4, v10

    .line 174
    .local v4, isRegularCall:Z
    :goto_e9
    if-nez v3, :cond_f4

    .line 175
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_18

    .end local v3           #isKnownCallScheme:Z
    .end local v4           #isRegularCall:Z
    :cond_f0
    move v3, v9

    .line 167
    goto :goto_d0

    .restart local v3       #isKnownCallScheme:Z
    :cond_f2
    move v4, v9

    .line 169
    goto :goto_e9

    .line 180
    .restart local v4       #isRegularCall:Z
    :cond_f4
    if-nez v7, :cond_103

    .line 181
    if-nez v4, :cond_fe

    .line 182
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_18

    .line 184
    :cond_fe
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_18

    .line 196
    :cond_103
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_13a

    .line 197
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v8

    if-nez v8, :cond_119

    .line 198
    if-nez v4, :cond_13a

    .line 199
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_18

    .line 203
    :cond_119
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v11, "SIP_ASK_ME_EACH_TIME"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12c

    if-eqz v4, :cond_12c

    if-eqz v2, :cond_12c

    .line 205
    invoke-virtual {p0, v9}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_18

    .line 208
    :cond_12c
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v11, "SIP_ADDRESS_ONLY"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_138

    if-nez v4, :cond_13a

    .line 210
    :cond_138
    iput-boolean v10, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 215
    :cond_13a
    iget-boolean v8, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    if-eqz v8, :cond_14f

    .line 218
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v8}, Lcom/android/phone/sip/SipProfileDb;->getProfilesCount()I

    move-result v8

    if-gtz v8, :cond_148

    if-nez v4, :cond_14d

    .line 219
    :cond_148
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto/16 :goto_18

    .line 222
    :cond_14d
    iput-boolean v9, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 225
    :cond_14f
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_18
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const v7, 0x104000a

    const/4 v6, -0x1

    const/high16 v5, 0x104

    const v4, 0x1010355

    .line 240
    packed-switch p1, :pswitch_data_de

    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, dialog:Landroid/app/Dialog;
    :goto_d
    if-eqz v0, :cond_13

    .line 294
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aput-object v0, v2, p1

    .line 296
    :cond_13
    return-object v0

    .line 242
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_14
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e01f8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080005

    invoke-virtual {v2, v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 249
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_d

    .line 251
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_38
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e01f9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getProfileNameArray()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 258
    .restart local v0       #dialog:Landroid/app/Dialog;
    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->addMakeDefaultCheckBox(Landroid/app/Dialog;)V

    goto :goto_d

    .line 261
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_60
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e01fe

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e01ff

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0200

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 269
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_d

    .line 271
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_8b
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v1

    .line 272
    .local v1, wifiOnly:Z
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_b8

    const v2, 0x7f0e0238

    :goto_99
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz v1, :cond_bc

    const v2, 0x7f0e023a

    :goto_a2
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 281
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto/16 :goto_d

    .line 272
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_b8
    const v2, 0x7f0e0237

    goto :goto_99

    :cond_bc
    const v2, 0x7f0e0239

    goto :goto_a2

    .line 283
    .end local v1           #wifiOnly:Z
    :pswitch_c0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e023b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 289
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto/16 :goto_d

    .line 240
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_14
        :pswitch_38
        :pswitch_60
        :pswitch_8b
        :pswitch_c0
    .end packed-switch
.end method

.method public onPause()V
    .registers 6

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 236
    :goto_9
    return-void

    .line 232
    :cond_a
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .local v0, arr$:[Landroid/app/Dialog;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v3, :cond_1a

    aget-object v1, v0, v2

    .line 233
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 232
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 235
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_1a
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_9
.end method
