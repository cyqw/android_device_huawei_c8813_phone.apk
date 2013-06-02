.class final Lcom/android/phone/PhoneUtils$1;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "iBinder"

    .prologue
    .line 353
    invoke-static {p2}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtendedNetworkService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$402(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 354
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$402(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 358
    return-void
.end method
