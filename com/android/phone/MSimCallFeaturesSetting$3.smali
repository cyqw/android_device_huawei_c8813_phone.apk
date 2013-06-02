.class Lcom/android/phone/MSimCallFeaturesSetting$3;
.super Landroid/os/Handler;
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
    .line 1159
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSetting$3;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 1162
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1163
    .local v1, result:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    .line 1164
    .local v2, sub:I
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_62

    .line 1184
    :cond_a
    :goto_a
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting$3;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    iget-object v3, v3, Lcom/android/phone/MSimCallFeaturesSetting;->mVMChangeCompletedSuccesfully:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting$3;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    iget-object v3, v3, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailChangeResult:[Landroid/os/AsyncResult;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5f

    :cond_1a
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting$3;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    iget-object v3, v3, Lcom/android/phone/MSimCallFeaturesSetting;->mFwdChangesRequireRollback:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting$3;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    #calls: Lcom/android/phone/MSimCallFeaturesSetting;->checkForwardingCompleted(I)Z
    invoke-static {v3, v2}, Lcom/android/phone/MSimCallFeaturesSetting;->access$200(Lcom/android/phone/MSimCallFeaturesSetting;I)Z

    move-result v3

    if-eqz v3, :cond_5f

    :cond_2a
    const/4 v0, 0x1

    .line 1187
    .local v0, done:Z
    :goto_2b
    if-eqz v0, :cond_39

    .line 1188
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting$3;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    const/16 v4, 0x276

    #calls: Lcom/android/phone/MSimCallFeaturesSetting;->dismissDialogSafely(I)V
    invoke-static {v3, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->access$400(Lcom/android/phone/MSimCallFeaturesSetting;I)V

    .line 1189
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting$3;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    invoke-virtual {v3, v2}, Lcom/android/phone/MSimCallFeaturesSetting;->onRevertDone(I)V

    .line 1191
    :cond_39
    return-void

    .line 1167
    .end local v0           #done:Z
    :sswitch_3a
    iget v3, p1, Landroid/os/Message;->what:I

    add-int/lit16 v2, v3, -0x1f4

    .line 1168
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting$3;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    iget-object v3, v3, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailChangeResult:[Landroid/os/AsyncResult;

    aput-object v1, v3, v2

    goto :goto_a

    .line 1172
    :sswitch_45
    iget v3, p1, Landroid/os/Message;->what:I

    add-int/lit16 v2, v3, -0x1fe

    .line 1173
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting$3;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    #getter for: Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;
    invoke-static {v3}, Lcom/android/phone/MSimCallFeaturesSetting;->access$100(Lcom/android/phone/MSimCallFeaturesSetting;)[Ljava/util/Map;

    move-result-object v3

    aget-object v3, v3, v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    goto :goto_a

    .line 1184
    :cond_5f
    const/4 v0, 0x0

    goto :goto_2b

    .line 1164
    nop

    :sswitch_data_62
    .sparse-switch
        0x1f4 -> :sswitch_3a
        0x1f5 -> :sswitch_3a
        0x1fe -> :sswitch_45
        0x1ff -> :sswitch_45
    .end sparse-switch
.end method
