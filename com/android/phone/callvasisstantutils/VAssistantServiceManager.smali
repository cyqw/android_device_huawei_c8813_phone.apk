.class public final Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;
.super Ljava/lang/Object;
.source "VAssistantServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$1;,
        Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ServiceConnectedListener;,
        Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$MyIUIInterfaceAdapterCallback;,
        Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;
    }
.end annotation


# static fields
.field private static final MODEL_SERVICE_INTENT:Landroid/content/Intent;

.field private static sInstance:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;


# instance fields
.field private isServiceConnected:Z

.field private mContext:Landroid/content/Context;

.field private mModelEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callvasisstantutils/ModelEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mModelServcie:Lcom/huawei/ziri/service/IModelService;

.field private final mModelServiceConn:Landroid/content/ServiceConnection;

.field private mServiceConnectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ServiceConnectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

.field private final mUIInterfaceAdapterCallback:Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.ziri.model.MODELSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->MODEL_SERVICE_INTENT:Landroid/content/Intent;

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->sInstance:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    .line 66
    iput-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mServiceConnectedListeners:Ljava/util/ArrayList;

    .line 71
    iput-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mContext:Landroid/content/Context;

    .line 79
    iput-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelServcie:Lcom/huawei/ziri/service/IModelService;

    .line 83
    iput-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    .line 87
    new-instance v0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ModelServiceConnection;-><init>(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelServiceConn:Landroid/content/ServiceConnection;

    .line 91
    new-instance v0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$MyIUIInterfaceAdapterCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$MyIUIInterfaceAdapterCallback;-><init>(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapterCallback:Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->isServiceConnected:Z

    .line 215
    iput-object p1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mContext:Landroid/content/Context;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mServiceConnectedListeners:Ljava/util/ArrayList;

    .line 218
    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)Lcom/huawei/ziri/service/IModelService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelServcie:Lcom/huawei/ziri/service/IModelService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Lcom/huawei/ziri/service/IModelService;)Lcom/huawei/ziri/service/IModelService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelServcie:Lcom/huawei/ziri/service/IModelService;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Lcom/huawei/ziri/service/IUIInterfaceAdapter;)Lcom/huawei/ziri/service/IUIInterfaceAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapterCallback:Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->informIncomingCall()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->notifyIsConnected()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->isServiceConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;Lcom/huawei/ziri/params/ParamsToUi;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->dispatchBusinessEvent(Lcom/huawei/ziri/params/ParamsToUi;)V

    return-void
.end method

.method private static destroyInstance()V
    .registers 1

    .prologue
    .line 206
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->sInstance:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    .line 207
    return-void
.end method

.method private dispatchBusinessEvent(Lcom/huawei/ziri/params/ParamsToUi;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/huawei/ziri/params/ParamsToUi;->getCmdType()I

    move-result v1

    packed-switch v1, :pswitch_data_94

    .line 365
    :cond_7
    return-void

    .line 335
    :pswitch_8
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 336
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 337
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callvasisstantutils/ModelEventListener;

    invoke-interface {v1}, Lcom/android/phone/callvasisstantutils/ModelEventListener;->ringerEnable()V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 342
    .end local v0           #i:I
    :pswitch_2b
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 343
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_38
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 344
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callvasisstantutils/ModelEventListener;

    invoke-interface {v1}, Lcom/android/phone/callvasisstantutils/ModelEventListener;->answerIncomingCall()V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 349
    .end local v0           #i:I
    :pswitch_4e
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 350
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5b
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 351
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callvasisstantutils/ModelEventListener;

    invoke-interface {v1}, Lcom/android/phone/callvasisstantutils/ModelEventListener;->hangupIncomingCall()V

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 356
    .end local v0           #i:I
    :pswitch_71
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 357
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_7e
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 358
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callvasisstantutils/ModelEventListener;

    invoke-interface {v1}, Lcom/android/phone/callvasisstantutils/ModelEventListener;->vassistantCancel()V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 332
    :pswitch_data_94
    .packed-switch 0xc9
        :pswitch_8
        :pswitch_8
        :pswitch_2b
        :pswitch_4e
        :pswitch_71
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;
    .registers 3
    .parameter "appContext"

    .prologue
    .line 196
    const-class v1, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->sInstance:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    if-nez v0, :cond_e

    .line 197
    new-instance v0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    invoke-direct {v0, p0}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->sInstance:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;

    .line 199
    :cond_e
    sget-object v0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->sInstance:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 196
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private informIncomingCall()V
    .registers 7

    .prologue
    .line 371
    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    if-eqz v2, :cond_19

    .line 373
    :try_start_4
    new-instance v1, Lcom/huawei/ziri/params/ParamsFromUi;

    const/16 v2, 0x65

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/ziri/params/ParamsFromUi;-><init>(IILcom/huawei/ziri/params/Contact;Ljava/lang/String;)V

    .line 376
    .local v1, mParamsFromUi:Lcom/huawei/ziri/params/ParamsFromUi;
    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    invoke-interface {v2, v1}, Lcom/huawei/ziri/service/IUIInterfaceAdapter;->handleUiEvent(Lcom/huawei/ziri/params/ParamsFromUi;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    .line 383
    .end local v1           #mParamsFromUi:Lcom/huawei/ziri/params/ParamsFromUi;
    :goto_13
    return-void

    .line 377
    :catch_14
    move-exception v0

    .line 378
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    .line 381
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_19
    const-string v2, "VAssistantServiceManager"

    const-string v3, "informIncomingCall() mUIInterfaceAdapter != null"

    invoke-static {v2, v3}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private notifyIsConnected()V
    .registers 4

    .prologue
    .line 453
    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mServiceConnectedListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1c

    .line 454
    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mServiceConnectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ServiceConnectedListener;

    .line 455
    .local v1, listener:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ServiceConnectedListener;
    iget-boolean v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->isServiceConnected:Z

    invoke-interface {v1, v2}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ServiceConnectedListener;->notifyIsServiceConnected(Z)V

    goto :goto_a

    .line 458
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ServiceConnectedListener;
    :cond_1c
    return-void
.end method


# virtual methods
.method public addModelEventListener(Lcom/android/phone/callvasisstantutils/ModelEventListener;)V
    .registers 3
    .parameter "vscListener"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    return-void
.end method

.method public addServiceConnectedListener(Lcom/android/phone/callvasisstantutils/VAssistantServiceManager$ServiceConnectedListener;)V
    .registers 3
    .parameter "tServiceConnectedListener"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mServiceConnectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    return-void
.end method

.method public bindService()Z
    .registers 5

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->MODEL_SERVICE_INTENT:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->isServiceConnected:Z

    .line 304
    invoke-direct {p0}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->notifyIsConnected()V

    .line 305
    iget-boolean v0, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->isServiceConnected:Z

    return v0
.end method

.method public informBroadcastIncomingCall(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "name"
    .parameter "number"

    .prologue
    .line 392
    iget-object v3, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    if-eqz v3, :cond_23

    .line 394
    :try_start_4
    new-instance v0, Lcom/huawei/ziri/params/Contact;

    invoke-direct {v0}, Lcom/huawei/ziri/params/Contact;-><init>()V

    .line 395
    .local v0, cantact:Lcom/huawei/ziri/params/Contact;
    invoke-virtual {v0, p1}, Lcom/huawei/ziri/params/Contact;->setName(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p2}, Lcom/huawei/ziri/params/Contact;->setNumber(Ljava/lang/String;)V

    .line 398
    new-instance v2, Lcom/huawei/ziri/params/ParamsFromUi;

    const/16 v3, 0x66

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/huawei/ziri/params/ParamsFromUi;-><init>(IILcom/huawei/ziri/params/Contact;Ljava/lang/String;)V

    .line 402
    .local v2, mParamsFromUi:Lcom/huawei/ziri/params/ParamsFromUi;
    iget-object v3, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    invoke-interface {v3, v2}, Lcom/huawei/ziri/service/IUIInterfaceAdapter;->handleUiEvent(Lcom/huawei/ziri/params/ParamsFromUi;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 409
    .end local v0           #cantact:Lcom/huawei/ziri/params/Contact;
    .end local v2           #mParamsFromUi:Lcom/huawei/ziri/params/ParamsFromUi;
    :goto_1d
    return-void

    .line 403
    :catch_1e
    move-exception v1

    .line 404
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d

    .line 407
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_23
    const-string v3, "VAssistantServiceManager"

    const-string v4, "informBroadcastIncomingCall() mUIInterfaceAdapter != null"

    invoke-static {v3, v4}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public informIncomingCallAnswered()V
    .registers 7

    .prologue
    .line 434
    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    if-eqz v2, :cond_19

    .line 436
    :try_start_4
    new-instance v1, Lcom/huawei/ziri/params/ParamsFromUi;

    const/16 v2, 0x68

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/ziri/params/ParamsFromUi;-><init>(IILcom/huawei/ziri/params/Contact;Ljava/lang/String;)V

    .line 439
    .local v1, mParamsFromUi:Lcom/huawei/ziri/params/ParamsFromUi;
    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    invoke-interface {v2, v1}, Lcom/huawei/ziri/service/IUIInterfaceAdapter;->handleUiEvent(Lcom/huawei/ziri/params/ParamsFromUi;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    .line 446
    .end local v1           #mParamsFromUi:Lcom/huawei/ziri/params/ParamsFromUi;
    :goto_13
    return-void

    .line 440
    :catch_14
    move-exception v0

    .line 441
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    .line 444
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_19
    const-string v2, "VAssistantServiceManager"

    const-string v3, "informIncomingCallEnd mUIInterfaceAdapter != null"

    invoke-static {v2, v3}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public informIncomingCallEnd()V
    .registers 7

    .prologue
    .line 415
    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    if-eqz v2, :cond_19

    .line 417
    :try_start_4
    new-instance v1, Lcom/huawei/ziri/params/ParamsFromUi;

    const/16 v2, 0x67

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/ziri/params/ParamsFromUi;-><init>(IILcom/huawei/ziri/params/Contact;Ljava/lang/String;)V

    .line 420
    .local v1, mParamsFromUi:Lcom/huawei/ziri/params/ParamsFromUi;
    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    invoke-interface {v2, v1}, Lcom/huawei/ziri/service/IUIInterfaceAdapter;->handleUiEvent(Lcom/huawei/ziri/params/ParamsFromUi;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    .line 427
    .end local v1           #mParamsFromUi:Lcom/huawei/ziri/params/ParamsFromUi;
    :goto_13
    return-void

    .line 421
    :catch_14
    move-exception v0

    .line 422
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    .line 425
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_19
    const-string v2, "VAssistantServiceManager"

    const-string v3, "informIncomingCallEnd mUIInterfaceAdapter != null"

    invoke-static {v2, v3}, Lcom/android/phone/callvasisstantutils/VALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public stopVoiceService()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 241
    iget-boolean v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->isServiceConnected:Z

    if-eqz v1, :cond_1a

    .line 243
    :try_start_5
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelServcie:Lcom/huawei/ziri/service/IModelService;

    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapterCallback:Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;

    invoke-interface {v1, v2}, Lcom/huawei/ziri/service/IModelService;->removeUIInterfaceAdapterCallback(Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_23

    .line 247
    :goto_c
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 248
    iput-object v3, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelServcie:Lcom/huawei/ziri/service/IModelService;

    .line 249
    iput-object v3, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mUIInterfaceAdapter:Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    .line 250
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->isServiceConnected:Z

    .line 252
    :cond_1a
    iget-object v1, p0, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->mModelEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 253
    invoke-static {}, Lcom/android/phone/callvasisstantutils/VAssistantServiceManager;->destroyInstance()V

    .line 254
    return-void

    .line 244
    :catch_23
    move-exception v0

    .line 245
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method
