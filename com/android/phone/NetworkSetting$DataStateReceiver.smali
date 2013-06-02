.class Lcom/android/phone/NetworkSetting$DataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$DataStateReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting$DataStateReceiver;-><init>(Lcom/android/phone/NetworkSetting;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$DataStateReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkSetting Phone.STATE_KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$DataStateReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkSetting Phone.STATE_CHANGE_REASON_KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 201
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataDisabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const-string v0, "DISCONNECTED"

    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$DataStateReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;)Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$DataStateReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$200(Lcom/android/phone/NetworkSetting;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 204
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$DataStateReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$202(Lcom/android/phone/NetworkSetting;Z)Z

    .line 210
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$DataStateReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$DataStateReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 213
    :cond_91
    return-void
.end method
