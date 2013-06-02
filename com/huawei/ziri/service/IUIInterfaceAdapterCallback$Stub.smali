.class public abstract Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub;
.super Landroid/os/Binder;
.source "IUIInterfaceAdapterCallback.java"

# interfaces
.implements Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.huawei.ziri.service.IUIInterfaceAdapterCallback"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;
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
    const-string v1, "com.huawei.ziri.service.IUIInterfaceAdapterCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    sparse-switch p1, :sswitch_data_44

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 49
    :sswitch_9
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapterCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 54
    :sswitch_f
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapterCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    .line 57
    sget-object v4, Lcom/huawei/ziri/params/ParamsToUi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ziri/params/ParamsToUi;

    .line 62
    .local v0, _arg0:Lcom/huawei/ziri/params/ParamsToUi;
    :goto_22
    invoke-virtual {p0, v0}, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub;->onNotifyUIMessage(Lcom/huawei/ziri/params/ParamsToUi;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 60
    .end local v0           #_arg0:Lcom/huawei/ziri/params/ParamsToUi;
    :cond_29
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/huawei/ziri/params/ParamsToUi;
    goto :goto_22

    .line 68
    .end local v0           #_arg0:Lcom/huawei/ziri/params/ParamsToUi;
    :sswitch_2b
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapterCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 75
    .local v2, _arg2:[I
    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/ziri/service/IUIInterfaceAdapterCallback$Stub;->onNotifySoundReceived(II[I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 45
    nop

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
