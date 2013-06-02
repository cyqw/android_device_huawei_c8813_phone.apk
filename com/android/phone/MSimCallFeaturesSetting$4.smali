.class Lcom/android/phone/MSimCallFeaturesSetting$4;
.super Landroid/content/BroadcastReceiver;
.source "MSimCallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimCallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimCallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 1815
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1817
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1818
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1819
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    #calls: Lcom/android/phone/MSimCallFeaturesSetting;->enableOrDisableCallFeatureSettings()V
    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSetting;->access$600(Lcom/android/phone/MSimCallFeaturesSetting;)V

    .line 1821
    :cond_11
    return-void
.end method
