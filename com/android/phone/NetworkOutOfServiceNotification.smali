.class public Lcom/android/phone/NetworkOutOfServiceNotification;
.super Landroid/app/Activity;
.source "NetworkOutOfServiceNotification.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Lcom/android/phone/NetworkOutOfServiceNotification$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkOutOfServiceNotification$1;-><init>(Lcom/android/phone/NetworkOutOfServiceNotification;)V

    iput-object v0, p0, Lcom/android/phone/NetworkOutOfServiceNotification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v0, Lcom/android/phone/NetworkOutOfServiceNotification$4;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkOutOfServiceNotification$4;-><init>(Lcom/android/phone/NetworkOutOfServiceNotification;)V

    iput-object v0, p0, Lcom/android/phone/NetworkOutOfServiceNotification;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkOutOfServiceNotification;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/phone/NetworkOutOfServiceNotification;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkOutOfServiceNotification;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/NetworkOutOfServiceNotification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/android/phone/NetworkOutOfServiceNotification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkOutOfServiceNotification;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    const v3, 0x7f0e045d

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkOutOfServiceNotification;->setTitle(I)V

    .line 46
    const v3, 0x7f040025

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkOutOfServiceNotification;->setContentView(I)V

    .line 48
    const v3, 0x7f0900cf

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkOutOfServiceNotification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 49
    .local v2, okButton:Landroid/widget/Button;
    new-instance v3, Lcom/android/phone/NetworkOutOfServiceNotification$2;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkOutOfServiceNotification$2;-><init>(Lcom/android/phone/NetworkOutOfServiceNotification;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v3, 0x7f0900ce

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkOutOfServiceNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v3, Lcom/android/phone/NetworkOutOfServiceNotification$3;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkOutOfServiceNotification$3;-><init>(Lcom/android/phone/NetworkOutOfServiceNotification;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "finishNOOSN"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lcom/android/phone/NetworkOutOfServiceNotification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/phone/NetworkOutOfServiceNotification;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method
