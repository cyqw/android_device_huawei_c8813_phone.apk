.class Lcom/android/phone/sip/SipSettings$10;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Landroid/net/sip/SipRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistering(Ljava/lang/String;)V
    .registers 5
    .parameter "profileUri"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0e0211

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1400(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public onRegistrationDone(Ljava/lang/String;J)V
    .registers 7
    .parameter "profileUri"
    .parameter "expiryTime"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0e0217

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1400(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .parameter "profileUri"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 458
    packed-switch p2, :pswitch_data_7e

    .line 485
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0e0218

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/sip/SipSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1400(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :goto_17
    return-void

    .line 460
    :pswitch_18
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0e0212

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1400(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 464
    :pswitch_27
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0e0219

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1400(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 468
    :pswitch_36
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0e021a

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1400(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 472
    :pswitch_45
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 473
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0e0215

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1400(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 476
    :cond_60
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0e0214

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1400(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 481
    :pswitch_6f
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$10;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0e0216

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1400(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 458
    :pswitch_data_7e
    .packed-switch -0xc
        :pswitch_36
        :pswitch_3
        :pswitch_45
        :pswitch_18
        :pswitch_27
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6f
    .end packed-switch
.end method
