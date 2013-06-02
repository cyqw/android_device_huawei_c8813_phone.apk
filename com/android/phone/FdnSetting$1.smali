.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const v10, 0x7f0e015e

    const v9, 0x7f0e0159

    const v8, 0x7f0e0161

    const v7, 0x7f0e015a

    const/4 v6, 0x0

    .line 385
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_1ac

    .line 547
    :goto_12
    return-void

    .line 390
    :sswitch_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 391
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3c

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_3c

    .line 393
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 395
    .local v3, e:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/phone/FdnSetting$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1ba

    .line 418
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0e0421

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 423
    .end local v3           #e:Lcom/android/internal/telephony/CommandException$Error;
    :cond_3c
    :goto_3c
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    .line 425
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateChangeFdn()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto :goto_12

    .line 403
    .restart local v3       #e:Lcom/android/internal/telephony/CommandException$Error;
    :pswitch_47
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)V

    .line 404
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateChangeFdn()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 405
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateChangePin()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    .line 406
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateButtonState(I)V
    invoke-static {v4, v8}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 407
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_3c

    .line 411
    :pswitch_65
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0e013d

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 413
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateChangeFdn()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 414
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_3c

    .line 434
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Lcom/android/internal/telephony/CommandException$Error;
    :sswitch_7c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 435
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_f0

    .line 437
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_db

    .line 438
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 439
    .local v2, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_bf

    .line 443
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)V

    .line 444
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateChangeFdn()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 445
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateChangePin()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    .line 446
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateButtonState(I)V
    invoke-static {v4, v8}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 447
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 469
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :goto_b3
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateChangeFdn()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 470
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_12

    .line 449
    .restart local v2       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_bf
    const-string v4, "GSM"

    const-string v5, "FdnSetting handleMessage() EVENT_PIN2_CHANGE_COMPLETE2.3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 451
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    .line 452
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$902(Lcom/android/phone/FdnSetting;Z)Z

    .line 453
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mGcfTesting:Z
    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$1002(Lcom/android/phone/FdnSetting;Z)Z

    goto :goto_b3

    .line 456
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_db
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 457
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    .line 458
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$902(Lcom/android/phone/FdnSetting;Z)Z

    .line 459
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mGcfTesting:Z
    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$1002(Lcom/android/phone/FdnSetting;Z)Z

    goto :goto_b3

    .line 464
    :cond_f0
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v10}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 465
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$902(Lcom/android/phone/FdnSetting;Z)Z

    .line 466
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    .line 467
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mGcfTesting:Z
    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$1002(Lcom/android/phone/FdnSetting;Z)Z

    goto :goto_b3

    .line 476
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_105
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 477
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_172

    .line 478
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 479
    .restart local v2       #ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_14a

    .line 483
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 488
    .local v0, a:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 490
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 541
    .end local v0           #a:Landroid/app/AlertDialog;
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :goto_13e
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    .line 542
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateChangeFdn()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_12

    .line 510
    .restart local v2       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_14a
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)Z

    move-result v4

    if-nez v4, :cond_16c

    .line 511
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 512
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    .line 516
    :goto_15c
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v9}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 518
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)V

    .line 519
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateChangeFdn()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto :goto_13e

    .line 514
    :cond_16c
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v9}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    goto :goto_15c

    .line 523
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_172
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1200(Lcom/android/phone/FdnSetting;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1a5

    .line 524
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0e02cf

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 533
    :goto_183
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$902(Lcom/android/phone/FdnSetting;Z)Z

    .line 534
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    .line 535
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mGcfTesting:Z
    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$1002(Lcom/android/phone/FdnSetting;Z)Z

    .line 536
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateChangeFdn()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 537
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateChangePin()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    .line 538
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0e003f

    #calls: Lcom/android/phone/FdnSetting;->updateButtonState(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    goto :goto_13e

    .line 526
    :cond_1a5
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v10}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    goto :goto_183

    .line 385
    nop

    :sswitch_data_1ac
    .sparse-switch
        0x64 -> :sswitch_13
        0xc8 -> :sswitch_7c
        0x12c -> :sswitch_105
    .end sparse-switch

    .line 395
    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_47
        :pswitch_65
    .end packed-switch
.end method
