.class public interface abstract Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;
.super Ljava/lang/Object;
.source "IUIInterfaceAdapterCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNotifySoundReceived(II[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNotifyUIMessage(Lcom/huawei/ziri/params/ParamsToUi;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
