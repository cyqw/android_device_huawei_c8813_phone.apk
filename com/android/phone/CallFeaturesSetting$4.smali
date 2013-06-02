.class Lcom/android/phone/CallFeaturesSetting$4;
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
    .line 1238
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 1241
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1242
    .local v1, result:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_56

    .line 1260
    :cond_9
    :goto_9
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$400(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$300(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/AsyncResult;

    move-result-object v2

    if-eqz v2, :cond_53

    :cond_19
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$700(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_29
    const/4 v0, 0x1

    .line 1263
    .local v0, done:Z
    :goto_2a
    if-eqz v0, :cond_38

    .line 1265
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v3, 0x25b

    #calls: Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->access$1100(Lcom/android/phone/CallFeaturesSetting;I)V

    .line 1266
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1300(Lcom/android/phone/CallFeaturesSetting;)V

    .line 1268
    :cond_38
    return-void

    .line 1244
    .end local v0           #done:Z
    :pswitch_39
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #setter for: Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2, v1}, Lcom/android/phone/CallFeaturesSetting;->access$302(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    goto :goto_9

    .line 1248
    :pswitch_3f
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$600(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    goto :goto_9

    .line 1260
    :cond_53
    const/4 v0, 0x0

    goto :goto_2a

    .line 1242
    nop

    :pswitch_data_56
    .packed-switch 0x1f4
        :pswitch_39
        :pswitch_3f
    .end packed-switch
.end method
