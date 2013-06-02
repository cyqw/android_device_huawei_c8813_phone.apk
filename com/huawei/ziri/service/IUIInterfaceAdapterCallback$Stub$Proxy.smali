.class Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUIInterfaceAdapterCallback.java"

# interfaces
.implements Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 88
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onNotifySoundReceived(II[I)V
    .registers 9
    .parameter "maxValue"
    .parameter "minValue"
    .parameter "soundBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 123
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.huawei.ziri.service.IUIInterfaceAdapterCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 127
    iget-object v2, p0, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_27

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    return-void

    .line 131
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onNotifyUIMessage(Lcom/huawei/ziri/params/ParamsToUi;)V
    .registers 7
    .parameter "mParamsToUi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 100
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 102
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.huawei.ziri.service.IUIInterfaceAdapterCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_28

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/huawei/ziri/params/ParamsToUi;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    :goto_17
    iget-object v2, p0, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2d

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    return-void

    .line 108
    :cond_28
    const/4 v2, 0x0

    :try_start_29
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_17

    .line 114
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
