.class public Lcom/android/phone/MSimContacts;
.super Lcom/android/phone/SimContacts;
.source "MSimContacts.java"


# instance fields
.field protected mSubscription:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/SimContacts;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimContacts;->mSubscription:I

    return-void
.end method


# virtual methods
.method protected getUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 68
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredVoiceSubscription()I

    move-result v0

    iput v0, p0, Lcom/android/phone/MSimContacts;->mSubscription:I

    .line 69
    iget v0, p0, Lcom/android/phone/MSimContacts;->mSubscription:I

    if-nez v0, :cond_15

    .line 70
    const-string v0, "content://iccmsim/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    :goto_14
    return-object v0

    .line 71
    :cond_15
    iget v0, p0, Lcom/android/phone/MSimContacts;->mSubscription:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 72
    const-string v0, "content://iccmsim/adn_sub2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_14

    .line 74
    :cond_21
    const-string v0, "ADNList"

    const-string v1, "Invalid subcription"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 43
    const/4 v1, 0x0

    .line 62
    :goto_8
    return-object v1

    .line 46
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/MSimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredVoiceSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/phone/MSimContacts;->mSubscription:I

    .line 48
    iget v1, p0, Lcom/android/phone/MSimContacts;->mSubscription:I

    if-nez v1, :cond_3f

    .line 49
    const-string v1, "content://iccmsim/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 56
    :goto_24
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 58
    const-string v1, "index"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/phone/MSimContacts;->mInitialSelection:I

    .line 62
    :cond_3a
    :goto_3a
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_8

    .line 50
    :cond_3f
    iget v1, p0, Lcom/android/phone/MSimContacts;->mSubscription:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4e

    .line 51
    const-string v1, "content://iccmsim/adn_sub2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_24

    .line 53
    :cond_4e
    const-string v1, "ADNList"

    const-string v2, "resolveIntent:Invalid subcription"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 59
    :cond_56
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 60
    iput v3, p0, Lcom/android/phone/MSimContacts;->mInitialSelection:I

    goto :goto_3a
.end method
