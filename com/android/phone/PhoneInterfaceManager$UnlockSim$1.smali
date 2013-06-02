.class Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;)V
    .registers 2
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 816
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 817
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_4a

    .line 836
    :goto_9
    return-void

    .line 819
    :pswitch_a
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    monitor-enter v2

    .line 820
    :try_start_d
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_42

    .line 821
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_3b

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_3b

    .line 824
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mResult:I
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$702(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;I)I

    .line 831
    :goto_2b
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$802(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;Z)Z

    .line 832
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 833
    monitor-exit v2

    goto :goto_9

    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_38

    throw v1

    .line 826
    :cond_3b
    :try_start_3b
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mResult:I
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$702(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;I)I

    goto :goto_2b

    .line 829
    :cond_42
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mResult:I
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$702(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;I)I
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_38

    goto :goto_2b

    .line 817
    nop

    :pswitch_data_4a
    .packed-switch 0x64
        :pswitch_a
    .end packed-switch
.end method
