.class Lcom/android/phone/MSimSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/MSimSettings$1;->this$0:Lcom/android/phone/MSimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 159
    const-string v1, "com.android.huawei.DATASERVICE_SETTING_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 160
    iget-object v1, p0, Lcom/android/phone/MSimSettings$1;->this$0:Lcom/android/phone/MSimSettings;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 162
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/MSimSettings$1;->this$0:Lcom/android/phone/MSimSettings;

    #getter for: Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/MSimSettings;->access$000(Lcom/android/phone/MSimSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_23
    return-void
.end method
