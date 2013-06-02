.class Lcom/android/phone/NetworkSetting$6;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 499
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 501
    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 502
    .local v1, enabled:Z
    if-eqz v1, :cond_34

    .line 503
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v3}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 504
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSetting;->finish()V

    .line 509
    .end local v1           #enabled:Z
    :cond_34
    return-void
.end method
