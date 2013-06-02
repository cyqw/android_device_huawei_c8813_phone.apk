.class Lcom/android/phone/OtaStartupReceiver$2;
.super Landroid/os/Handler;
.source "OtaStartupReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaStartupReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaStartupReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaStartupReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/OtaStartupReceiver$2;->this$0:Lcom/android/phone/OtaStartupReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/16 v4, 0xa

    .line 70
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_3e

    .line 95
    :cond_7
    :goto_7
    return-void

    .line 72
    :pswitch_8
    iget-object v2, p0, Lcom/android/phone/OtaStartupReceiver$2;->this$0:Lcom/android/phone/OtaStartupReceiver;

    #getter for: Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/OtaStartupReceiver;->access$100(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OtaStartupReceiver$2;->this$0:Lcom/android/phone/OtaStartupReceiver;

    #getter for: Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/OtaStartupReceiver;->access$200(Lcom/android/phone/OtaStartupReceiver;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    goto :goto_7

    .line 75
    :pswitch_18
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    .line 86
    .local v1, state:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_7

    .line 87
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 88
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 89
    iget-object v2, p0, Lcom/android/phone/OtaStartupReceiver$2;->this$0:Lcom/android/phone/OtaStartupReceiver;

    #getter for: Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/OtaStartupReceiver;->access$100(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OtaStartupReceiver$2;->this$0:Lcom/android/phone/OtaStartupReceiver;

    #getter for: Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/OtaStartupReceiver;->access$200(Lcom/android/phone/OtaStartupReceiver;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    goto :goto_7

    .line 70
    nop

    :pswitch_data_3e
    .packed-switch 0xa
        :pswitch_8
        :pswitch_18
    .end packed-switch
.end method
