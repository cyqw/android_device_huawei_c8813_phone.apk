.class Lcom/android/phone/MSimCallFeaturesSetting$2;
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
    .line 1100
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1103
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1104
    .local v4, result:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 1105
    .local v1, done:Z
    const/4 v5, 0x0

    .line 1106
    .local v5, sub:I
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_a6

    .line 1147
    :cond_d
    :goto_d
    if-eqz v1, :cond_25

    .line 1148
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    #getter for: Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;
    invoke-static {v6}, Lcom/android/phone/MSimCallFeaturesSetting;->access$100(Lcom/android/phone/MSimCallFeaturesSetting;)[Ljava/util/Map;

    move-result-object v6

    aget-object v6, v6, v5

    if-eqz v6, :cond_20

    .line 1149
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    const/16 v7, 0x262

    #calls: Lcom/android/phone/MSimCallFeaturesSetting;->dismissDialogSafely(I)V
    invoke-static {v6, v7}, Lcom/android/phone/MSimCallFeaturesSetting;->access$400(Lcom/android/phone/MSimCallFeaturesSetting;I)V

    .line 1151
    :cond_20
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    #calls: Lcom/android/phone/MSimCallFeaturesSetting;->handleSetVMOrFwdMessage(I)V
    invoke-static {v6, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->access$500(Lcom/android/phone/MSimCallFeaturesSetting;I)V

    .line 1153
    :cond_25
    return-void

    .line 1109
    :sswitch_26
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v8, -0x1f4

    .line 1110
    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    iget-object v8, v8, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailChangeResult:[Landroid/os/AsyncResult;

    aput-object v4, v8, v5

    .line 1111
    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    iget-object v8, v8, Lcom/android/phone/MSimCallFeaturesSetting;->mVMChangeCompletedSuccesfully:[Z

    iget-object v9, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    #calls: Lcom/android/phone/MSimCallFeaturesSetting;->checkVMChangeSuccess(I)Ljava/lang/String;
    invoke-static {v9, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->access$000(Lcom/android/phone/MSimCallFeaturesSetting;I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3d

    move v6, v7

    :cond_3d
    aput-boolean v6, v8, v5

    .line 1112
    const/4 v1, 0x1

    .line 1113
    goto :goto_d

    .line 1116
    :sswitch_41
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v8, -0x1fe

    .line 1117
    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    #getter for: Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;
    invoke-static {v8}, Lcom/android/phone/MSimCallFeaturesSetting;->access$100(Lcom/android/phone/MSimCallFeaturesSetting;)[Ljava/util/Map;

    move-result-object v8

    aget-object v8, v8, v5

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v8, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_5a

    .line 1124
    :cond_5a
    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    #calls: Lcom/android/phone/MSimCallFeaturesSetting;->checkForwardingCompleted(I)Z
    invoke-static {v8, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->access$200(Lcom/android/phone/MSimCallFeaturesSetting;I)Z

    move-result v0

    .line 1125
    .local v0, completed:Z
    if-eqz v0, :cond_d

    .line 1126
    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    #calls: Lcom/android/phone/MSimCallFeaturesSetting;->checkFwdChangeSuccess(I)Ljava/lang/String;
    invoke-static {v8, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->access$300(Lcom/android/phone/MSimCallFeaturesSetting;I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_70

    .line 1127
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    invoke-virtual {v6, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->setVMNumberWithCarrier(I)V

    goto :goto_d

    .line 1129
    :cond_70
    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    iget-object v8, v8, Lcom/android/phone/MSimCallFeaturesSetting;->mFwdChangesRequireRollback:[Z

    aput-boolean v6, v8, v5

    .line 1130
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    #getter for: Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;
    invoke-static {v6}, Lcom/android/phone/MSimCallFeaturesSetting;->access$100(Lcom/android/phone/MSimCallFeaturesSetting;)[Ljava/util/Map;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1132
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 1133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1134
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_86

    .line 1136
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    iget-object v6, v6, Lcom/android/phone/MSimCallFeaturesSetting;->mFwdChangesRequireRollback:[Z

    aput-boolean v7, v6, v5

    .line 1140
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_a2
    const/4 v1, 0x1

    .line 1141
    goto/16 :goto_d

    .line 1106
    nop

    :sswitch_data_a6
    .sparse-switch
        0x1f4 -> :sswitch_26
        0x1f5 -> :sswitch_26
        0x1fe -> :sswitch_41
        0x1ff -> :sswitch_41
    .end sparse-switch
.end method
