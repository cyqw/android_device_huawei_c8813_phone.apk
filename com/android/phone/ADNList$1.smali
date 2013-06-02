.class Lcom/android/phone/ADNList$1;
.super Ljava/lang/Object;
.source "ADNList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ADNList;->getFdnSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method constructor <init>(Lcom/android/phone/ADNList;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/ADNList$1;->this$0:Lcom/android/phone/ADNList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 122
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 125
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    iget-object v1, p0, Lcom/android/phone/ADNList$1;->this$0:Lcom/android/phone/ADNList;

    const/16 v2, 0x6f3b

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/ADNList;->mSize:[I

    .line 127
    iget-object v1, p0, Lcom/android/phone/ADNList$1;->this$0:Lcom/android/phone/ADNList;

    iget-object v1, v1, Lcom/android/phone/ADNList;->mSize:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/phone/ADNList;->access$002(I)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 134
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_1e
    return-void

    .line 131
    :catch_1f
    move-exception v1

    goto :goto_1e

    .line 129
    :catch_21
    move-exception v1

    goto :goto_1e
.end method
