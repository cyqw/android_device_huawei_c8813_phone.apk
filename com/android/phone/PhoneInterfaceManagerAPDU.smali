.class public Lcom/android/phone/PhoneInterfaceManagerAPDU;
.super Lcom/android/telephonyapdu/ITelephonyAPDU$Stub;
.source "PhoneInterfaceManagerAPDU.java"


# instance fields
.field private mManagerAPDU:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .registers 2
    .parameter "mananger"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerAPDU;->mManagerAPDU:Lcom/android/phone/PhoneInterfaceManager;

    .line 22
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerAPDU;->publish()V

    .line 23
    return-void
.end method

.method private publish()V
    .registers 2

    .prologue
    .line 26
    const-string v0, "phone_apdu"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 27
    return-void
.end method


# virtual methods
.method public closeIccLogicalChannel(I)Z
    .registers 3
    .parameter "channel"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerAPDU;->mManagerAPDU:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->closeIccLogicalChannel(I)Z

    move-result v0

    return v0
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerAPDU;->mManagerAPDU:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->getLastError()I

    move-result v0

    return v0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .registers 3
    .parameter "AID"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerAPDU;->mManagerAPDU:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerAPDU;->mManagerAPDU:Lcom/android/phone/PhoneInterfaceManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/PhoneInterfaceManager;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerAPDU;->mManagerAPDU:Lcom/android/phone/PhoneInterfaceManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .registers 14
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerAPDU;->mManagerAPDU:Lcom/android/phone/PhoneInterfaceManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/PhoneInterfaceManager;->transmitIccSimIO(IIIIILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
