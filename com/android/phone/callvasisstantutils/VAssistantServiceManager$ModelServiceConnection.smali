.class Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;
.super Ljava/lang/Object;
.source "VAssistantServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;-><init>(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    invoke-static {p2}, Lcom/huawei/ziri/service/IModelService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/ziri/service/IModelService;

    move-result-object v2

    #setter for: Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelServcie:Lcom/huawei/ziri/service/IModelService;
    invoke-static {v1, v2}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->access$202(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Lcom/huawei/ziri/service/IModelService;)Lcom/huawei/ziri/service/IModelService;

    .line 125
    :try_start_9
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    #getter for: Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelServcie:Lcom/huawei/ziri/service/IModelService;
    invoke-static {v2}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->access$200(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)Lcom/huawei/ziri/service/IModelService;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/ziri/service/IModelService;->getUIInterfaceAdapter()Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    move-result-object v2

    #setter for: Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;
    invoke-static {v1, v2}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->access$302(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Lcom/huawei/ziri/service/IUIInterfaceAdapter;)Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    .line 126
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    #getter for: Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelServcie:Lcom/huawei/ziri/service/IModelService;
    invoke-static {v1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->access$200(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)Lcom/huawei/ziri/service/IModelService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    #getter for: Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapterCallback:Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;
    invoke-static {v2}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->access$400(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huawei/ziri/service/IModelService;->addUIInterfaceAdapterCallback(Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;)V

    .line 127
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    #calls: Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->informIncomingCall()V
    invoke-static {v1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->access$500(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V

    .line 128
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    #calls: Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->notifyIsConnected()V
    invoke-static {v1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->access$600(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_31} :catch_32

    .line 132
    :goto_31
    return-void

    .line 129
    :catch_32
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VAssistantServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->isServiceConnected:Z
    invoke-static {v0, v1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->access$702(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Z)Z

    .line 148
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;->this$0:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    #calls: Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->notifyIsConnected()V
    invoke-static {v0}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->access$600(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V

    .line 149
    return-void
.end method
