.class Lcom/android/phone/NetworkOutOfServiceNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkOutOfServiceNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkOutOfServiceNotification;
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
    .line 31
    iput-object p1, p0, Lcom/android/phone/NetworkOutOfServiceNotification$1;->this$0:Lcom/android/phone/NetworkOutOfServiceNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    const-string v0, "NetworkOutOfServiceNotification"

    const-string v1, " the phone is in service again, finish the notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/android/phone/NetworkOutOfServiceNotification$1;->this$0:Lcom/android/phone/NetworkOutOfServiceNotification;

    invoke-virtual {v0}, Lcom/android/phone/NetworkOutOfServiceNotification;->finish()V

    .line 38
    return-void
.end method
