.class Lcom/android/phone/CallBarringSettings$SettingHandler;
.super Landroid/os/Handler;
.source "CallBarringSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallBarringSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallBarringSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallBarringSettings;Lcom/android/phone/CallBarringSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringSettings$SettingHandler;-><init>(Lcom/android/phone/CallBarringSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 314
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 315
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_7d

    .line 316
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 317
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_61

    .line 318
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 319
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_67

    .line 320
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v3, ""

    #setter for: Lcom/android/phone/CallBarringSettings;->mPasswordText:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$1602(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1700(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringEnterPasswordDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mPasswordText:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/CallBarringSettings;->access$1600(Lcom/android/phone/CallBarringSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CallBarringEnterPasswordDialog;->setPassword(Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #calls: Lcom/android/phone/CallBarringSettings;->showPasswordIncorrectInfo()V
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1800(Lcom/android/phone/CallBarringSettings;)V

    .line 323
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1700(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringEnterPasswordDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/CallBarringEnterPasswordDialog;->enableAllButton()V

    .line 324
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v3, "password incorrect"

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 375
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_61
    :goto_61
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #calls: Lcom/android/phone/CallBarringSettings;->updateCallBarringSettings()V
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1500(Lcom/android/phone/CallBarringSettings;)V

    .line 376
    return-void

    .line 326
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_67
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1700(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringEnterPasswordDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/CallBarringEnterPasswordDialog;->dismiss()V

    .line 327
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #calls: Lcom/android/phone/CallBarringSettings;->showOperationFailureInfo()V
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1900(Lcom/android/phone/CallBarringSettings;)V

    .line 328
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v3, "operation failure"

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    goto :goto_61

    .line 332
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_7d
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_13c

    .line 368
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingHandler default msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 372
    :goto_9c
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mEnterPasswordDialog:Lcom/android/phone/CallBarringEnterPasswordDialog;
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1700(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringEnterPasswordDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/CallBarringEnterPasswordDialog;->dismiss()V

    goto :goto_61

    .line 334
    :pswitch_a6
    iget-object v4, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mCheckedAllOutgoing:Z
    invoke-static {v5}, Lcom/android/phone/CallBarringSettings;->access$500(Lcom/android/phone/CallBarringSettings;)Z

    move-result v5

    if-nez v5, :cond_bb

    :goto_b0
    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedAllOutgoing:Z
    invoke-static {v4, v2}, Lcom/android/phone/CallBarringSettings;->access$502(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 335
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v3, "CB_FACILITY_BAOC_INT item"

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    goto :goto_9c

    :cond_bb
    move v2, v3

    .line 334
    goto :goto_b0

    .line 339
    :pswitch_bd
    iget-object v4, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternational:Z
    invoke-static {v5}, Lcom/android/phone/CallBarringSettings;->access$800(Lcom/android/phone/CallBarringSettings;)Z

    move-result v5

    if-nez v5, :cond_d2

    :goto_c7
    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternational:Z
    invoke-static {v4, v2}, Lcom/android/phone/CallBarringSettings;->access$802(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 340
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v3, "CB_FACILITY_BAOIC_INT item"

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    goto :goto_9c

    :cond_d2
    move v2, v3

    .line 339
    goto :goto_c7

    .line 344
    :pswitch_d4
    iget-object v4, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternationalRoaming:Z
    invoke-static {v5}, Lcom/android/phone/CallBarringSettings;->access$900(Lcom/android/phone/CallBarringSettings;)Z

    move-result v5

    if-nez v5, :cond_e9

    :goto_de
    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternationalRoaming:Z
    invoke-static {v4, v2}, Lcom/android/phone/CallBarringSettings;->access$902(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 345
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v3, "CB_FACILITY_BAOICXH_INT item"

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    goto :goto_9c

    :cond_e9
    move v2, v3

    .line 344
    goto :goto_de

    .line 349
    :pswitch_eb
    iget-object v4, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mCheckedAllIncoming:Z
    invoke-static {v5}, Lcom/android/phone/CallBarringSettings;->access$1000(Lcom/android/phone/CallBarringSettings;)Z

    move-result v5

    if-nez v5, :cond_100

    :goto_f5
    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedAllIncoming:Z
    invoke-static {v4, v2}, Lcom/android/phone/CallBarringSettings;->access$1002(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 350
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v3, "CB_FACILITY_BAIC_INT item"

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    goto :goto_9c

    :cond_100
    move v2, v3

    .line 349
    goto :goto_f5

    .line 354
    :pswitch_102
    iget-object v4, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mCheckedIncomingCallsWhenRoaming:Z
    invoke-static {v5}, Lcom/android/phone/CallBarringSettings;->access$1100(Lcom/android/phone/CallBarringSettings;)Z

    move-result v5

    if-nez v5, :cond_117

    :goto_10c
    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedIncomingCallsWhenRoaming:Z
    invoke-static {v4, v2}, Lcom/android/phone/CallBarringSettings;->access$1102(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 355
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v3, "CB_FACILITY_BAICR_INT item"

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    goto :goto_9c

    :cond_117
    move v2, v3

    .line 354
    goto :goto_10c

    .line 359
    :pswitch_119
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedAllOutgoing:Z
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$502(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 360
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternational:Z
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$802(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 361
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternationalRoaming:Z
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$902(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 362
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedAllIncoming:Z
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$1002(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 363
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedIncomingCallsWhenRoaming:Z
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$1102(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 364
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$SettingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v3, "CB_FACILITY_BA_ALL_INT item"

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    goto/16 :goto_9c

    .line 332
    nop

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_bd
        :pswitch_d4
        :pswitch_eb
        :pswitch_102
        :pswitch_119
    .end packed-switch
.end method
