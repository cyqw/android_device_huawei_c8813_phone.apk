.class Lcom/android/phone/NetworkOutOfServiceNotification$2;
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
    .line 49
    iput-object p1, p0, Lcom/android/phone/NetworkOutOfServiceNotification$2;->this$0:Lcom/android/phone/NetworkOutOfServiceNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 52
    const-string v1, "NetworkOutOfServiceNotification"

    const-string v2, "select network automatically"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/android/phone/NetworkOutOfServiceNotification$2;->this$0:Lcom/android/phone/NetworkOutOfServiceNotification;

    #getter for: Lcom/android/phone/NetworkOutOfServiceNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkOutOfServiceNotification;->access$000(Lcom/android/phone/NetworkOutOfServiceNotification;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 54
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/NetworkOutOfServiceNotification$2;->this$0:Lcom/android/phone/NetworkOutOfServiceNotification;

    iget-object v1, v1, Lcom/android/phone/NetworkOutOfServiceNotification;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 55
    iget-object v1, p0, Lcom/android/phone/NetworkOutOfServiceNotification$2;->this$0:Lcom/android/phone/NetworkOutOfServiceNotification;

    invoke-virtual {v1}, Lcom/android/phone/NetworkOutOfServiceNotification;->finish()V

    .line 56
    return-void
.end method
