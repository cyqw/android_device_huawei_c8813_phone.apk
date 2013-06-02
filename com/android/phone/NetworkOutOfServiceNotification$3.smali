.class Lcom/android/phone/NetworkOutOfServiceNotification$3;
.super Ljava/lang/Object;
.source "NetworkOutOfServiceNotification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkOutOfServiceNotification;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkOutOfServiceNotification;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkOutOfServiceNotification;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/NetworkOutOfServiceNotification$3;->this$0:Lcom/android/phone/NetworkOutOfServiceNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 62
    const-string v1, "NetworkOutOfServiceNotification"

    const-string v2, "select network manually."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, networkSettingIntent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    const-string v1, "subscription"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/android/phone/NetworkOutOfServiceNotification$3;->this$0:Lcom/android/phone/NetworkOutOfServiceNotification;

    invoke-virtual {v1, v0}, Lcom/android/phone/NetworkOutOfServiceNotification;->startActivity(Landroid/content/Intent;)V

    .line 70
    iget-object v1, p0, Lcom/android/phone/NetworkOutOfServiceNotification$3;->this$0:Lcom/android/phone/NetworkOutOfServiceNotification;

    invoke-virtual {v1}, Lcom/android/phone/NetworkOutOfServiceNotification;->finish()V

    .line 71
    return-void
.end method
