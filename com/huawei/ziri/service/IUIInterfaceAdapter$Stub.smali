.class public abstract Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;
.super Landroid/os/Binder;
.source "IUIInterfaceAdapter.java"

# interfaces
.implements Lcom/huawei/ziri/service/IUIInterfaceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ziri/service/IUIInterfaceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/ziri/service/IUIInterfaceAdapter;
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
    const-string v1, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/huawei/ziri/service/IUIInterfaceAdapter;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_134

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 49
    :sswitch_a
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 54
    :sswitch_10
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->doModuleControllerInitial()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 61
    :sswitch_1c
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->pauseModuleController()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 68
    :sswitch_28
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->resumeModuleController()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 75
    :sswitch_34
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4e

    .line 78
    sget-object v4, Lcom/huawei/ziri/params/ParamsFromUi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ziri/params/ParamsFromUi;

    .line 83
    .local v0, _arg0:Lcom/huawei/ziri/params/ParamsFromUi;
    :goto_47
    invoke-virtual {p0, v0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->handleUiEvent(Lcom/huawei/ziri/params/ParamsFromUi;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 81
    .end local v0           #_arg0:Lcom/huawei/ziri/params/ParamsFromUi;
    :cond_4e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/huawei/ziri/params/ParamsFromUi;
    goto :goto_47

    .line 89
    .end local v0           #_arg0:Lcom/huawei/ziri/params/ParamsFromUi;
    :sswitch_50
    const-string v5, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_63

    move v0, v3

    .line 92
    .local v0, _arg0:Z
    :goto_5c
    invoke-virtual {p0, v0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->setAutoStartVoiceConversationEnabled(Z)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0           #_arg0:Z
    :cond_63
    move v0, v4

    .line 91
    goto :goto_5c

    .line 98
    :sswitch_65
    const-string v5, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->isAutoStartVoiceConversationEnabled()Z

    move-result v2

    .line 100
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_74

    move v4, v3

    :cond_74
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 106
    .end local v2           #_result:Z
    :sswitch_78
    const-string v5, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8c

    move v0, v3

    .line 109
    .restart local v0       #_arg0:Z
    :goto_84
    invoke-virtual {p0, v0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->setssionNotifyEnabled(Z)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_8c
    move v0, v4

    .line 108
    goto :goto_84

    .line 115
    :sswitch_8e
    const-string v5, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->isSessionNotifyEnabled()Z

    move-result v2

    .line 117
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v2, :cond_9d

    move v4, v3

    :cond_9d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 123
    .end local v2           #_result:Z
    :sswitch_a2
    const-string v5, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ba

    move v1, v3

    .line 128
    .local v1, _arg1:Z
    :goto_b2
    invoke-virtual {p0, v0, v1}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->setSpeechRole(IZ)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg1:Z
    :cond_ba
    move v1, v4

    .line 127
    goto :goto_b2

    .line 134
    .end local v0           #_arg0:I
    :sswitch_bc
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->getSpeechRole()I

    move-result v2

    .line 136
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 142
    .end local v2           #_result:I
    :sswitch_cd
    const-string v5, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e1

    move v0, v3

    .line 145
    .local v0, _arg0:Z
    :goto_d9
    invoke-virtual {p0, v0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->setVoiceBroadcastEnabled(Z)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_e1
    move v0, v4

    .line 144
    goto :goto_d9

    .line 151
    :sswitch_e3
    const-string v5, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->isVoiceBroadcastEnabled()Z

    move-result v2

    .line 153
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v2, :cond_f2

    move v4, v3

    :cond_f2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 159
    .end local v2           #_result:Z
    :sswitch_f7
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->firstRunApplication()V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 166
    :sswitch_104
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->doServiceInitial()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 173
    :sswitch_111
    const-string v5, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_125

    move v0, v3

    .line 176
    .restart local v0       #_arg0:Z
    :goto_11d
    invoke-virtual {p0, v0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->setSavePcmLog(Z)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_125
    move v0, v4

    .line 175
    goto :goto_11d

    .line 182
    :sswitch_127
    const-string v4, "com.huawei.ziri.service.IUIInterfaceAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/huawei/ziri/service/IUIInterfaceAdapter$Stub;->upgrade()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 45
    :sswitch_data_134
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_28
        0x4 -> :sswitch_34
        0x5 -> :sswitch_50
        0x6 -> :sswitch_65
        0x7 -> :sswitch_78
        0x8 -> :sswitch_8e
        0x9 -> :sswitch_a2
        0xa -> :sswitch_bc
        0xb -> :sswitch_cd
        0xc -> :sswitch_e3
        0xd -> :sswitch_f7
        0xe -> :sswitch_104
        0xf -> :sswitch_111
        0x10 -> :sswitch_127
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
