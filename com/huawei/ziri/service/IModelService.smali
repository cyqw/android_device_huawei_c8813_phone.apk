.class public interface abstract Lcom/huawei/ziri/service/IModelService;
.super Ljava/lang/Object;
.source "IModelService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ziri/service/IModelService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addUIInterfaceAdapterCallback(Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUIInterfaceAdapter()Lcom/huawei/ziri/service/IUIInterfaceAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeUIInterfaceAdapterCallback(Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
