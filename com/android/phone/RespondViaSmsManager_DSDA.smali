.class public Lcom/android/phone/RespondViaSmsManager_DSDA;
.super Lcom/android/phone/RespondViaSmsManager;
.source "RespondViaSmsManager_DSDA.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mInCallFragment:Lcom/android/phone/InCallFragment;

.field private mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RespondViaSmsManager_DSDA;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/phone/RespondViaSmsManager;-><init>()V

    return-void
.end method


# virtual methods
.method getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .registers 3

    .prologue
    .line 100
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/RespondViaSmsManager_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

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
    .line 87
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method protected sendReuestToUIElement(I)V
    .registers 4
    .parameter "what"

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_16

    .line 84
    :goto_3
    return-void

    .line 74
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    goto :goto_3

    .line 78
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->setInternalRespondViaSmsCanceled(Z)V

    goto :goto_3

    .line 72
    nop

    :pswitch_data_16
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
    .line 52
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v2, "subscription"

    iget-object v3, p0, Lcom/android/phone/RespondViaSmsManager_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v3}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lcom/android/phone/RespondViaSmsManager_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v2, v0}, Lcom/android/phone/InCallScreen_DSDA;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V
    .registers 3
    .parameter "inCallFragment"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    .line 40
    if-nez p1, :cond_8

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RespondViaSmsManager_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 45
    :goto_7
    return-void

    .line 43
    :cond_8
    invoke-virtual {p1}, Lcom/android/phone/InCallFragment;->getmParent()Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RespondViaSmsManager_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    goto :goto_7
.end method

.method protected updateKeyguardPolicy(Z)V
    .registers 3
    .parameter "updateKeyguardPolicy"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen_DSDA;->updateKeyguardPolicy(Z)V

    .line 96
    return-void
.end method
