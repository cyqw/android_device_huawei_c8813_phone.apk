.class public abstract Lcom/huawei/ziri/service/IModelService$Stub;
.super Landroid/os/Binder;
.source "IModelService.java"

# interfaces
.implements Lcom/huawei/ziri/service/IModelService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ziri/service/IModelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ziri/service/IModelService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.huawei.ziri.service.IModelService"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/ziri/service/IModelService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/ziri/service/IModelService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_3
    return-object v0

    .line 33
    :cond_4
    const-string v1, "com.huawei.ziri.service.IModelService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/huawei/ziri/service/IModelService;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/huawei/ziri/service/IModelService;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/huawei/ziri/service/IModelService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/ziri/service/IModelService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_54

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 49
    :sswitch_9
    const-string v2, "com.huawei.ziri.service.IModelService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 50
    goto :goto_8

    .line 54
    :sswitch_10
    const-string v2, "com.huawei.ziri.service.IModelService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/huawei/ziri/service/IModelService$Stub;->getUIInterfaceAdapter()Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    move-result-object v1

    .line 56
    .local v1, _result:Lcom/huawei/ziri/service/IUIInterfaceAdapter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v1, :cond_27

    invoke-interface {v1}, Lcom/huawei/ziri/service/IUIInterfaceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_22
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v2, v3

    .line 58
    goto :goto_8

    .line 57
    :cond_27
    const/4 v2, 0x0

    goto :goto_22

    .line 62
    .end local v1           #_result:Lcom/huawei/ziri/service/IUIInterfaceAdapter;
    :sswitch_29
    const-string v2, "com.huawei.ziri.service.IModelService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;

    move-result-object v0

    .line 65
    .local v0, _arg0:Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;
    invoke-virtual {p0, v0}, Lcom/huawei/ziri/service/IModelService$Stub;->addUIInterfaceAdapterCallback(Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 67
    goto :goto_8

    .line 71
    .end local v0           #_arg0:Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;
    :sswitch_3e
    const-string v2, "com.huawei.ziri.service.IModelService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;

    move-result-object v0

    .line 74
    .restart local v0       #_arg0:Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;
    invoke-virtual {p0, v0}, Lcom/huawei/ziri/service/IModelService$Stub;->removeUIInterfaceAdapterCallback(Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 76
    goto :goto_8

    .line 45
    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
