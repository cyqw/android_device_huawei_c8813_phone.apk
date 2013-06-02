.class Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;
.super Ljava/lang/Object;
.source "MSimGsmUmtsOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YesClickListerner"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;Lcom/android/phone/MSimGsmUmtsOptions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;-><init>(Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 529
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;

    iget-object v1, v1, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-virtual {v1}, Lcom/android/phone/MSimGsmUmtsOptions;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 531
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;

    iget-object v1, v1, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    #getter for: Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/phone/MSimGsmUmtsOptions;->access$100(Lcom/android/phone/MSimGsmUmtsOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0410

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 533
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 554
    .end local v0           #toast:Landroid/widget/Toast;
    :goto_21
    return-void

    .line 540
    :cond_22
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;

    iget-object v2, v2, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    iget-object v2, v2, Lcom/android/phone/MSimGsmUmtsOptions;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 547
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;

    iget-object v2, v2, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    #getter for: Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {v2}, Lcom/android/phone/MSimGsmUmtsOptions;->access$400(Lcom/android/phone/MSimGsmUmtsOptions;)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z

    .line 549
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;

    iget-object v1, v1, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    #calls: Lcom/android/phone/MSimGsmUmtsOptions;->setDualModePrefValueAndSummary()V
    invoke-static {v1}, Lcom/android/phone/MSimGsmUmtsOptions;->access$500(Lcom/android/phone/MSimGsmUmtsOptions;)V

    .line 552
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;

    iget-object v1, v1, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    #getter for: Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/phone/MSimGsmUmtsOptions;->access$100(Lcom/android/phone/MSimGsmUmtsOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->showDialog(I)V

    goto :goto_21
.end method
