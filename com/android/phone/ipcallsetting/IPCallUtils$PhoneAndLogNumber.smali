.class Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
.super Ljava/lang/Object;
.source "IPCallUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ipcallsetting/IPCallUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneAndLogNumber"
.end annotation


# instance fields
.field mLogNumber:Ljava/lang/String;

.field mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "phoneNumber"
    .parameter "logNumber"

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->mPhoneNumber:Ljava/lang/String;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->mLogNumber:Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->mPhoneNumber:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->mLogNumber:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method public getLogNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->mLogNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setLogNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "logNumber"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->mLogNumber:Ljava/lang/String;

    .line 201
    return-void
.end method
