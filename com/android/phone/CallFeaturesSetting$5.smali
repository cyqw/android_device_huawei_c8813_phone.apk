.class Lcom/android/phone/CallFeaturesSetting$5;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 1559
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1561
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_27

    .line 1562
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyncResult.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->showOperationFailureInfo()V
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$1400(Lcom/android/phone/CallFeaturesSetting;)V

    .line 1565
    :cond_27
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mCallBarringChangePasswordDialog:Lcom/android/phone/CallBarringChangePasswordDialog;
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$1500(Lcom/android/phone/CallFeaturesSetting;)Lcom/android/phone/CallBarringChangePasswordDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallBarringChangePasswordDialog;->dismiss()V

    .line 1566
    return-void
.end method
