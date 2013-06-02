.class public abstract Lcom/android/telephonyapdu/ITelephonyAPDU$Stub;
.super Landroid/os/Binder;
.source "ITelephonyAPDU.java"

# interfaces
.implements Lcom/android/telephonyapdu/ITelephonyAPDU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/telephonyapdu/ITelephonyAPDU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {p0, p0, v0}, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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
    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_ce

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_8
    return v9

    .line 45
    :sswitch_9
    const-string v0, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v0, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 60
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 62
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 64
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 65
    invoke-virtual/range {v0 .. v7}, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 72
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_3c
    const-string v0, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 80
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 82
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 84
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 85
    invoke-virtual/range {v0 .. v6}, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 92
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_65
    const-string v0, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v8

    .line 96
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 102
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_79
    const-string v0, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub;->closeIccLogicalChannel(I)Z

    move-result v8

    .line 106
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v8, :cond_91

    move v0, v9

    :goto_8c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_91
    const/4 v0, 0x0

    goto :goto_8c

    .line 112
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_93
    const-string v0, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub;->getLastError()I

    move-result v8

    .line 114
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 120
    .end local v8           #_result:I
    :sswitch_a4
    const-string v0, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 130
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 132
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg5:Ljava/lang/String;
    move-object v0, p0

    .line 133
    invoke-virtual/range {v0 .. v6}, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub;->transmitIccSimIO(IIIIILjava/lang/String;)[B

    move-result-object v8

    .line 134
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_8

    .line 41
    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_65
        0x4 -> :sswitch_79
        0x5 -> :sswitch_93
        0x6 -> :sswitch_a4
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
