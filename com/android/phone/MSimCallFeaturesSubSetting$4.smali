.class Lcom/android/phone/MSimCallFeaturesSubSetting$4;
.super Landroid/os/Handler;
.source "MSimCallFeaturesSubSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCallFeaturesSubSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 1048
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1049
    .local v1, result:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_4e

    .line 1065
    :cond_9
    :goto_9
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    iget-boolean v2, v2, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    iget-object v2, v2, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    if-eqz v2, :cond_4c

    :cond_15
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    iget-boolean v2, v2, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    #calls: Lcom/android/phone/MSimCallFeaturesSubSetting;->checkForwardingCompleted()Z
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$300(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_23
    const/4 v0, 0x1

    .line 1068
    .local v0, done:Z
    :goto_24
    if-eqz v0, :cond_32

    .line 1069
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    const/16 v3, 0x25b

    #calls: Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$500(Lcom/android/phone/MSimCallFeaturesSubSetting;I)V

    .line 1070
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    invoke-virtual {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->onRevertDone()V

    .line 1072
    :cond_32
    return-void

    .line 1051
    .end local v0           #done:Z
    :pswitch_33
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    iput-object v1, v2, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    goto :goto_9

    .line 1054
    :pswitch_38
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    #getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$200(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    goto :goto_9

    .line 1065
    :cond_4c
    const/4 v0, 0x0

    goto :goto_24

    .line 1049
    :pswitch_data_4e
    .packed-switch 0x1f4
        :pswitch_33
        :pswitch_38
    .end packed-switch
.end method
