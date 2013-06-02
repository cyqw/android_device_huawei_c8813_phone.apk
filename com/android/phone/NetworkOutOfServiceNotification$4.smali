.class Lcom/android/phone/NetworkOutOfServiceNotification$4;
.super Landroid/os/Handler;
.source "NetworkOutOfServiceNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkOutOfServiceNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkOutOfServiceNotification;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkOutOfServiceNotification;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/NetworkOutOfServiceNotification$4;->this$0:Lcom/android/phone/NetworkOutOfServiceNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 82
    return-void
.end method
