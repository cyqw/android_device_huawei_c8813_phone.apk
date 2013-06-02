.class Lcom/android/phone/CallBarringSettings$LoadingHandler;
.super Landroid/os/Handler;
.source "CallBarringSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallBarringSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallBarringSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallBarringSettings;Lcom/android/phone/CallBarringSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringSettings$LoadingHandler;-><init>(Lcom/android/phone/CallBarringSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 237
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2a

    .line 238
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadingHandler ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #calls: Lcom/android/phone/CallBarringSettings;->loadFailure()V
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$400(Lcom/android/phone/CallBarringSettings;)V

    .line 309
    :goto_29
    return-void

    .line 241
    :cond_2a
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 242
    .local v1, callBarring:[I
    array-length v2, v1

    if-eqz v2, :cond_1ba

    .line 243
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1c8

    .line 300
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #calls: Lcom/android/phone/CallBarringSettings;->loadFailure()V
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$400(Lcom/android/phone/CallBarringSettings;)V

    .line 301
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadingHandler msg.what is error, what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    goto :goto_29

    .line 245
    :pswitch_59
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CB_FACILITY_BAOC_INT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 246
    aget v2, v1, v5

    if-eqz v2, :cond_95

    .line 247
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedAllOutgoing:Z
    invoke-static {v2, v6}, Lcom/android/phone/CallBarringSettings;->access$502(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 251
    :goto_7c
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$700(Lcom/android/phone/CallBarringSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const-string v3, "OI"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mLoadingHandler:Lcom/android/phone/CallBarringSettings$LoadingHandler;
    invoke-static {v5}, Lcom/android/phone/CallBarringSettings;->access$600(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringSettings$LoadingHandler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/phone/CallBarringSettings$LoadingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_29

    .line 249
    :cond_95
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedAllOutgoing:Z
    invoke-static {v2, v5}, Lcom/android/phone/CallBarringSettings;->access$502(Lcom/android/phone/CallBarringSettings;Z)Z

    goto :goto_7c

    .line 255
    :pswitch_9b
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CB_FACILITY_BAOIC_INT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 256
    aget v2, v1, v5

    if-eqz v2, :cond_d8

    .line 257
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternational:Z
    invoke-static {v2, v6}, Lcom/android/phone/CallBarringSettings;->access$802(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 261
    :goto_be
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$700(Lcom/android/phone/CallBarringSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const-string v3, "OX"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mLoadingHandler:Lcom/android/phone/CallBarringSettings$LoadingHandler;
    invoke-static {v5}, Lcom/android/phone/CallBarringSettings;->access$600(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringSettings$LoadingHandler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/phone/CallBarringSettings$LoadingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_29

    .line 259
    :cond_d8
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternational:Z
    invoke-static {v2, v5}, Lcom/android/phone/CallBarringSettings;->access$802(Lcom/android/phone/CallBarringSettings;Z)Z

    goto :goto_be

    .line 265
    :pswitch_de
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CB_FACILITY_BAOICXH_INT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 266
    aget v2, v1, v5

    if-eqz v2, :cond_11b

    .line 267
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternationalRoaming:Z
    invoke-static {v2, v6}, Lcom/android/phone/CallBarringSettings;->access$902(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 271
    :goto_101
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$700(Lcom/android/phone/CallBarringSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const-string v3, "AI"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mLoadingHandler:Lcom/android/phone/CallBarringSettings$LoadingHandler;
    invoke-static {v5}, Lcom/android/phone/CallBarringSettings;->access$600(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringSettings$LoadingHandler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/phone/CallBarringSettings$LoadingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_29

    .line 269
    :cond_11b
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedOutgoingInternationalRoaming:Z
    invoke-static {v2, v5}, Lcom/android/phone/CallBarringSettings;->access$902(Lcom/android/phone/CallBarringSettings;Z)Z

    goto :goto_101

    .line 275
    :pswitch_121
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CB_FACILITY_BAIC_INT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 276
    aget v2, v1, v5

    if-eqz v2, :cond_15e

    .line 277
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedAllIncoming:Z
    invoke-static {v2, v6}, Lcom/android/phone/CallBarringSettings;->access$1002(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 281
    :goto_144
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$700(Lcom/android/phone/CallBarringSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const-string v3, "IR"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mLoadingHandler:Lcom/android/phone/CallBarringSettings$LoadingHandler;
    invoke-static {v5}, Lcom/android/phone/CallBarringSettings;->access$600(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringSettings$LoadingHandler;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/phone/CallBarringSettings$LoadingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_29

    .line 279
    :cond_15e
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedAllIncoming:Z
    invoke-static {v2, v5}, Lcom/android/phone/CallBarringSettings;->access$1002(Lcom/android/phone/CallBarringSettings;Z)Z

    goto :goto_144

    .line 285
    :pswitch_164
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CB_FACILITY_BAICR_INT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 286
    aget v2, v1, v5

    if-eqz v2, :cond_1b4

    .line 287
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedIncomingCallsWhenRoaming:Z
    invoke-static {v2, v6}, Lcom/android/phone/CallBarringSettings;->access$1102(Lcom/android/phone/CallBarringSettings;Z)Z

    .line 291
    :goto_187
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1200(Lcom/android/phone/CallBarringSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 292
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mMainHandler:Lcom/android/phone/CallBarringSettings$MainHandler;
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1300(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringSettings$MainHandler;

    move-result-object v2

    if-eqz v2, :cond_1a8

    .line 293
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v3, "loading is successful, remove CB_OPERATION_TIME_OUT delay message"

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #getter for: Lcom/android/phone/CallBarringSettings;->mMainHandler:Lcom/android/phone/CallBarringSettings$MainHandler;
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1300(Lcom/android/phone/CallBarringSettings;)Lcom/android/phone/CallBarringSettings$MainHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/phone/CallBarringSettings$MainHandler;->removeMessages(I)V

    .line 296
    :cond_1a8
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #calls: Lcom/android/phone/CallBarringSettings;->enableAllPreference()V
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1400(Lcom/android/phone/CallBarringSettings;)V

    .line 297
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #calls: Lcom/android/phone/CallBarringSettings;->updateCallBarringSettings()V
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$1500(Lcom/android/phone/CallBarringSettings;)V

    goto/16 :goto_29

    .line 289
    :cond_1b4
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #setter for: Lcom/android/phone/CallBarringSettings;->mCheckedIncomingCallsWhenRoaming:Z
    invoke-static {v2, v5}, Lcom/android/phone/CallBarringSettings;->access$1102(Lcom/android/phone/CallBarringSettings;Z)Z

    goto :goto_187

    .line 305
    :cond_1ba
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    #calls: Lcom/android/phone/CallBarringSettings;->loadFailure()V
    invoke-static {v2}, Lcom/android/phone/CallBarringSettings;->access$400(Lcom/android/phone/CallBarringSettings;)V

    .line 306
    iget-object v2, p0, Lcom/android/phone/CallBarringSettings$LoadingHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v3, "length == 0"

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 243
    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_59
        :pswitch_9b
        :pswitch_de
        :pswitch_121
        :pswitch_164
    .end packed-switch
.end method
