.class Lcom/android/phone/SetSubscription$6;
.super Landroid/os/Handler;
.source "SetSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SetSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetSubscription;


# direct methods
.method constructor <init>(Lcom/android/phone/SetSubscription;)V
    .registers 2
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 463
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_86

    .line 494
    :goto_5
    return-void

    .line 465
    :pswitch_6
    iget-object v5, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    #getter for: Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    invoke-static {v5}, Lcom/android/phone/SetSubscription;->access$200(Lcom/android/phone/SetSubscription;)Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    #getter for: Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/SetSubscription;->access$100(Lcom/android/phone/SetSubscription;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V

    .line 466
    iget-object v5, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/android/phone/SetSubscription;->dismissDialog(I)V

    .line 467
    iget-object v5, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    invoke-virtual {v5}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 468
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 470
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v3, v5

    check-cast v3, [Ljava/lang/String;

    .line 472
    .local v3, result:[Ljava/lang/String;
    if-eqz v3, :cond_39

    .line 473
    iget-object v5, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    invoke-virtual {v5, v3}, Lcom/android/phone/SetSubscription;->displayAlertDialog([Ljava/lang/String;)V

    goto :goto_5

    .line 475
    :cond_39
    iget-object v5, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    invoke-virtual {v5}, Lcom/android/phone/SetSubscription;->finish()V

    goto :goto_5

    .line 479
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #result:[Ljava/lang/String;
    :pswitch_3f
    iget-object v5, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    invoke-virtual {v5}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "subscr_parent"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 482
    .local v2, prefParent:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4e
    iget-object v5, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    #getter for: Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {v5}, Lcom/android/phone/SetSubscription;->access$300(Lcom/android/phone/SetSubscription;)[Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_78

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sub_group_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 485
    .local v4, subGroup:Landroid/preference/PreferenceCategory;
    if-eqz v4, :cond_75

    .line 486
    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 482
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 489
    .end local v4           #subGroup:Landroid/preference/PreferenceCategory;
    :cond_78
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 490
    iget-object v5, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    #calls: Lcom/android/phone/SetSubscription;->populateList()V
    invoke-static {v5}, Lcom/android/phone/SetSubscription;->access$400(Lcom/android/phone/SetSubscription;)V

    .line 491
    iget-object v5, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    #calls: Lcom/android/phone/SetSubscription;->updateCheckBoxes()V
    invoke-static {v5}, Lcom/android/phone/SetSubscription;->access$000(Lcom/android/phone/SetSubscription;)V

    goto :goto_5

    .line 463
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3f
    .end packed-switch
.end method
