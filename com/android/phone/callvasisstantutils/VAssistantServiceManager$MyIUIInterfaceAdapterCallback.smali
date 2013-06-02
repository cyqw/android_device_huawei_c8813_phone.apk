.class Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$MyIUIInterfaceAdapterCallback;
.super Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub;
.source "VAssistantServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyIUIInterfaceAdapterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$MyIUIInterfaceAdapterCallback;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    invoke-direct {p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$MyIUIInterfaceAdapterCallback;-><init>(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V

    return-void
.end method


# virtual methods
.method public onNotifySoundReceived(II[I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    return-void
.end method

.method public onNotifyUIMessage(Lcom/huawei/ziri/params/ParamsToUi;)V
    .registers 4
    .parameter "mParamsToUi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    if-nez p1, :cond_a

    .line 167
    const-string v0, "VAssistantServiceManager"

    const-string v1, "onNotifyUIMessage  mParamsToUi == null ....... "

    invoke-static {v0, v1}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_9
    return-void

    .line 170
    :cond_a
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$MyIUIInterfaceAdapterCallback;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    #calls: Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->dispatchBusinessEvent(Lcom/huawei/ziri/params/ParamsToUi;)V
    invoke-static {v0, p1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->access$800(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Lcom/huawei/ziri/params/ParamsToUi;)V

    goto :goto_9
.end method
