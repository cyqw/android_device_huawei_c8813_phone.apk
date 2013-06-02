.class public Lcom/android/phone/RespondViaSmsManager;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RespondViaSmsManager$Settings;,
        Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;,
        Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mCannedResponses:[Ljava/lang/String;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mPopup:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/phone/RespondViaSmsManager;->launchSmsCompose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method public static allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z
    .registers 9
    .parameter "context"
    .parameter "ringingCall"

    .prologue
    const/4 v3, 0x0

    .line 573
    sget-boolean v4, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v4, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowRespondViaSmsForCall("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 576
    :cond_21
    if-nez p1, :cond_2b

    .line 577
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: null ringingCall!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_2a
    :goto_2a
    return v3

    .line 580
    :cond_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 585
    const-string v4, "RespondViaSmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowRespondViaSmsForCall: ringingCall not ringing! state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 589
    :cond_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 590
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_5c

    .line 594
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: null Connection!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 599
    :cond_5c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 601
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: no incoming number!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 604
    :cond_6e
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 610
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: incoming \'number\' is a SIP address."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 615
    :cond_7c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 616
    .local v2, presentation:I
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v2, v4, :cond_8c

    .line 620
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: PRESENTATION_RESTRICTED."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 626
    :cond_8c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/android/phone/RespondViaSmsManager;->getInstantTextIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 639
    const/4 v3, 0x1

    goto :goto_2a
.end method

.method private static getInstantTextIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter "phoneNumber"
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    .line 431
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 433
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 435
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_17

    .line 436
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    :goto_16
    return-object v0

    .line 438
    :cond_17
    const-string v2, "exit_on_sent"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    const-string v2, "showUI"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_16
.end method

.method private launchSmsCompose(Ljava/lang/String;)V
    .registers 4
    .parameter "phoneNumber"

    .prologue
    .line 406
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/phone/RespondViaSmsManager;->getInstantTextIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 409
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 415
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/RespondViaSmsManager;->updateKeyguardPolicy(Z)V

    .line 418
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 421
    return-void
.end method

.method private loadCannedResponses()[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 532
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "respond_via_sms_prefs"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 535
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 538
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    .line 543
    .local v2, responses:[Ljava/lang/String;
    const-string v3, "canned_response_pref_1"

    const v4, 0x7f0e024e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 545
    const/4 v3, 0x1

    const-string v4, "canned_response_pref_2"

    const v5, 0x7f0e024f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 547
    const/4 v3, 0x2

    const-string v4, "canned_response_pref_3"

    const v5, 0x7f0e0250

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 549
    const/4 v3, 0x3

    const-string v4, "canned_response_pref_4"

    const v5, 0x7f0e0251

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 551
    return-object v2
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 644
    const-string v0, "RespondViaSmsManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 212
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    .line 215
    :cond_c
    return-void
.end method

.method getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 686
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method protected getUiScreen()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method public isShowingPopup()Z
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected sendReuestToUIElement(I)V
    .registers 4
    .parameter "what"

    .prologue
    .line 663
    packed-switch p1, :pswitch_data_1a

    .line 677
    :cond_3
    :goto_3
    return-void

    .line 665
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_3

    .line 669
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_3

    .line 670
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->setInternalRespondViaSmsCanceled(Z)V

    goto :goto_3

    .line 663
    nop

    :pswitch_data_1a
    .packed-switch 0x65
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "phoneNumber"
    .parameter "message"

    .prologue
    .line 382
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 383
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 384
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    :try_start_13
    const-string v2, "subscription"

    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_24
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_13 .. :try_end_24} :catch_2c

    .line 397
    :goto_24
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 398
    return-void

    .line 391
    :catch_2c
    move-exception v2

    goto :goto_24
.end method

.method public setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 5
    .parameter "inCallScreen"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 121
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_e

    .line 124
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v1, "respond_via_sms_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 126
    :cond_e
    return-void
.end method

.method public showRespondViaSmsPopup(Lcom/android/internal/telephony/Call;)V
    .registers 12
    .parameter "ringingCall"

    .prologue
    .line 136
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 143
    .local v3, lv:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/phone/RespondViaSmsManager;->loadCannedResponses()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    .line 147
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v4, v7, 0x1

    .line 148
    .local v4, numPopupItems:I
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    invoke-static {v7, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 150
    .local v6, popupItems:[Ljava/lang/String;
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0252

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 153
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1090003

    const v9, 0x1020014

    invoke-direct {v0, v7, v8, v9, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 160
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 172
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-nez v2, :cond_4f

    .line 179
    const-string v7, "RespondViaSmsManager"

    const-string v8, "showRespondViaSmsPopup: null connection; bailing out..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_4e
    return-void

    .line 189
    :cond_4f
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, phoneNumber:Ljava/lang/String;
    new-instance v7, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;

    invoke-direct {v7, p0, v5}, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;-><init>(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;

    invoke-direct {v8, p0}, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;-><init>(Lcom/android/phone/RespondViaSmsManager;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 199
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    .line 200
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto :goto_4e
.end method

.method protected updateKeyguardPolicy(Z)V
    .registers 3
    .parameter "updateKeyguardPolicy"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 681
    return-void
.end method
