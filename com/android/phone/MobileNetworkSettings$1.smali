.class Lcom/android/phone/MobileNetworkSettings$1;
.super Landroid/database/ContentObserver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$1;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$1;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #calls: Lcom/android/phone/MobileNetworkSettings;->updateDataEnabledCheckbox()V
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$000(Lcom/android/phone/MobileNetworkSettings;)V

    .line 120
    return-void
.end method
