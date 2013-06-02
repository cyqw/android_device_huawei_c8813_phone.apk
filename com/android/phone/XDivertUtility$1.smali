.class Lcom/android/phone/XDivertUtility$1;
.super Landroid/os/Handler;
.source "XDivertUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/XDivertUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/XDivertUtility;


# direct methods
.method constructor <init>(Lcom/android/phone/XDivertUtility;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 167
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_f2

    .line 209
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 211
    :cond_9
    :goto_9
    return-void

    .line 169
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 170
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 172
    .local v1, status:Z
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_9

    .line 175
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 180
    .local v2, subscription:I
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 182
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v4, v2}, Lcom/android/phone/XDivertUtility;->getSimImsi(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 183
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_a9

    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/XDivertUtility;->access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 187
    :cond_63
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$400(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimCallNotifier;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/phone/MSimCallNotifier;->setXDivertStatus(Z)V

    .line 188
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    iget-object v4, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, v2}, Lcom/android/phone/XDivertUtility;->setSimImsi(Ljava/lang/String;I)V

    .line 189
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/phone/XDivertUtility;->storeNumber(Ljava/lang/String;I)V

    .line 200
    :cond_7f
    :goto_7f
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$600(Lcom/android/phone/XDivertUtility;)[Z

    move-result-object v3

    aget-boolean v3, v3, v5

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$600(Lcom/android/phone/XDivertUtility;)[Z

    move-result-object v3

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-nez v3, :cond_9

    .line 201
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$400(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimCallNotifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/MSimCallNotifier;->getXDivertStatus()Z

    move-result v1

    .line 202
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$400(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimCallNotifier;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/MSimCallNotifier;->onXDivertChanged(Z)V

    goto/16 :goto_9

    .line 190
    :cond_a9
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/XDivertUtility;->access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 194
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$500(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v4, v2}, Lcom/android/phone/XDivertUtility;->getNumber(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 195
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #getter for: Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$600(Lcom/android/phone/XDivertUtility;)[Z

    move-result-object v3

    aput-boolean v5, v3, v2

    goto :goto_7f

    .line 206
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #status:Z
    .end local v2           #subscription:I
    :pswitch_ea
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    #calls: Lcom/android/phone/XDivertUtility;->onSubscriptionDeactivated()V
    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$700(Lcom/android/phone/XDivertUtility;)V

    goto/16 :goto_9

    .line 167
    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_ea
    .end packed-switch
.end method
