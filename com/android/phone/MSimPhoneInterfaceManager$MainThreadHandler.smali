.class final Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimPhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimPhoneInterfaceManager;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimPhoneInterfaceManager;Lcom/android/phone/MSimPhoneInterfaceManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 36
    .parameter "msg"

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDefaultSubscription()I

    move-result v31

    .line 229
    .local v31, sub:I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_51a

    .line 530
    :pswitch_f
    const-string v2, "MSimPhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_2b
    return-void

    .line 231
    :pswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 232
    .local v27, request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 233
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v25

    .line 234
    .local v25, phone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 237
    monitor-enter v27

    .line 238
    :try_start_5d
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 239
    monitor-exit v27

    goto :goto_2b

    :catchall_62
    move-exception v2

    monitor-exit v27
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_62

    throw v2

    .line 243
    .end local v25           #phone:Lcom/android/internal/telephony/Phone;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_65
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 244
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 246
    .local v9, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v9}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_2b

    .line 250
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_80
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 251
    .local v19, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 252
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_ad

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_ad

    .line 253
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 259
    :goto_a4
    monitor-enter v27

    .line 260
    :try_start_a5
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 261
    monitor-exit v27

    goto :goto_2b

    :catchall_aa
    move-exception v2

    monitor-exit v27
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_aa

    throw v2

    .line 256
    :cond_ad
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_a4

    .line 265
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    #calls: Lcom/android/phone/MSimPhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$000(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    goto/16 :goto_2b

    .line 269
    :pswitch_c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    #calls: Lcom/android/phone/MSimPhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$100(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    goto/16 :goto_2b

    .line 273
    :pswitch_c9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 274
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/16 v23, 0x0

    .line 275
    .local v23, hungUp:Z
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v25

    .line 277
    .restart local v25       #phone:Lcom/android/internal/telephony/Phone;
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v26

    .line 278
    .local v26, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_108

    .line 281
    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v23

    .line 290
    :goto_f6
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 292
    monitor-enter v27

    .line 293
    :try_start_ff
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 294
    monitor-exit v27

    goto/16 :goto_2b

    :catchall_105
    move-exception v2

    monitor-exit v27
    :try_end_107
    .catchall {:try_start_ff .. :try_end_107} :catchall_105

    throw v2

    .line 282
    :cond_108
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_118

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v23

    goto :goto_f6

    .line 288
    :cond_118
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    .end local v23           #hungUp:Z
    .end local v25           #phone:Lcom/android/internal/telephony/Phone;
    .end local v26           #phoneType:I
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_133
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 299
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 300
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_2b

    .line 304
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_158
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 305
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 306
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 308
    monitor-enter v27

    .line 309
    :try_start_16f
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit v27

    goto/16 :goto_2b

    :catchall_175
    move-exception v2

    monitor-exit v27
    :try_end_177
    .catchall {:try_start_16f .. :try_end_177} :catchall_175

    throw v2

    .line 314
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_178
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 315
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->broadcastUnsolOemHookIntent([B)V

    goto/16 :goto_2b

    .line 319
    .end local v19           #ar:Landroid/os/AsyncResult;
    :pswitch_191
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 320
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 321
    .local v33, subscription:I
    const/16 v2, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 322
    .restart local v9       #onCompleted:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v32

    .line 323
    .local v32, subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    if-eqz v32, :cond_1bc

    .line 324
    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setDataSubscription(ILandroid/os/Message;)V

    goto/16 :goto_2b

    .line 328
    :cond_1bc
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 329
    monitor-enter v27

    .line 330
    :try_start_1c6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 331
    monitor-exit v27

    goto/16 :goto_2b

    :catchall_1cc
    move-exception v2

    monitor-exit v27
    :try_end_1ce
    .catchall {:try_start_1c6 .. :try_end_1ce} :catchall_1cc

    throw v2

    .line 336
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    .end local v32           #subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    .end local v33           #subscription:I
    :pswitch_1cf
    const/16 v30, 0x0

    .line 337
    .local v30, retStatus:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 338
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 340
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1fb

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1fb

    .line 341
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    .line 342
    .local v29, result:Z
    if-eqz v29, :cond_1fb

    .line 343
    const/16 v30, 0x1

    .line 346
    .end local v29           #result:Z
    :cond_1fb
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 349
    monitor-enter v27

    .line 350
    :try_start_204
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 351
    monitor-exit v27

    goto/16 :goto_2b

    :catchall_20a
    move-exception v2

    monitor-exit v27
    :try_end_20c
    .catchall {:try_start_204 .. :try_end_20c} :catchall_20a

    throw v2

    .line 356
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    .end local v30           #retStatus:Z
    :pswitch_20d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 357
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;

    .line 359
    .local v24, parameters:Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x17

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 364
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    #calls: Lcom/android/phone/MSimPhoneInterfaceManager;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    invoke-static/range {v2 .. v9}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$200(Lcom/android/phone/MSimPhoneInterfaceManager;IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2b

    .line 370
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v24           #parameters:Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_248
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 371
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 372
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_27e

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_27e

    .line 373
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 392
    :cond_274
    :goto_274
    monitor-enter v27

    :try_start_275
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v27

    goto/16 :goto_2b

    :catchall_27b
    move-exception v2

    monitor-exit v27
    :try_end_27d
    .catchall {:try_start_275 .. :try_end_27d} :catchall_27b

    throw v2

    .line 378
    :cond_27e
    new-instance v3, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;

    invoke-direct {v3}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;-><init>()V

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-virtual {v3, v4, v5, v2}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->makeNewIccIoResult(II[B)Lcom/android/internal/telephony/uicc/IccIoResult;

    move-result-object v2

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 381
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_274

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_274

    .line 384
    :try_start_2a7
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CommandExceptionEx;->getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    move-result-object v2

    sget-object v3, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->INVALID_PARAMETER:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    if-ne v2, v3, :cond_274

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I
    :try_end_2bd
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_2a7 .. :try_end_2bd} :catch_2be

    goto :goto_274

    .line 388
    :catch_2be
    move-exception v2

    goto :goto_274

    .line 395
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_2c0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 396
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;

    .line 398
    .local v20, argument:Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 400
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    move-object/from16 v0, v20

    iget v11, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v20

    iget v14, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    #calls: Lcom/android/phone/MSimPhoneInterfaceManager;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    invoke-static/range {v10 .. v18}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$400(Lcom/android/phone/MSimPhoneInterfaceManager;IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2b

    .line 406
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v20           #argument:Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_305
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 407
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 408
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_33b

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_33b

    .line 409
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 429
    :cond_331
    :goto_331
    monitor-enter v27

    .line 430
    :try_start_332
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 431
    monitor-exit v27

    goto/16 :goto_2b

    :catchall_338
    move-exception v2

    monitor-exit v27
    :try_end_33a
    .catchall {:try_start_332 .. :try_end_33a} :catchall_338

    throw v2

    .line 412
    :cond_33b
    new-instance v3, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;

    invoke-direct {v3}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;-><init>()V

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-virtual {v3, v4, v5, v2}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->makeNewIccIoResult(II[B)Lcom/android/internal/telephony/uicc/IccIoResult;

    move-result-object v2

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 417
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_331

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_331

    .line 420
    :try_start_364
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CommandExceptionEx;->getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    move-result-object v2

    sget-object v3, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->INVALID_PARAMETER:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    if-ne v2, v3, :cond_331

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I
    :try_end_37a
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_364 .. :try_end_37a} :catch_37b

    goto :goto_331

    .line 424
    :catch_37b
    move-exception v2

    goto :goto_331

    .line 434
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_37d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 435
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x13

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 437
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/android/phone/MSimPhoneInterfaceManager;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    invoke-static {v3, v2, v9}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$500(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2b

    .line 440
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_39e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 441
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 442
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3e0

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3e0

    .line 443
    new-instance v3, Ljava/lang/Integer;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 467
    :cond_3d6
    :goto_3d6
    monitor-enter v27

    .line 468
    :try_start_3d7
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 469
    monitor-exit v27

    goto/16 :goto_2b

    :catchall_3dd
    move-exception v2

    monitor-exit v27
    :try_end_3df
    .catchall {:try_start_3d7 .. :try_end_3df} :catchall_3dd

    throw v2

    .line 446
    :cond_3e0
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 448
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3d6

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_3d6

    .line 451
    :try_start_400
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CommandExceptionEx;->getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    move-result-object v2

    sget-object v3, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->MISSING_RESOURCE:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    if-ne v2, v3, :cond_419

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    goto :goto_3d6

    .line 462
    :catch_417
    move-exception v2

    goto :goto_3d6

    .line 456
    :cond_419
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CommandExceptionEx;->getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    move-result-object v2

    sget-object v3, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->NO_SUCH_ELEMENT:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    if-ne v2, v3, :cond_3d6

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x3

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I
    :try_end_42f
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_400 .. :try_end_42f} :catch_417

    goto :goto_3d6

    .line 472
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_430
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 473
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 475
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #calls: Lcom/android/phone/MSimPhoneInterfaceManager;->closeLogicalChannel(ILandroid/os/Message;)V
    invoke-static {v3, v2, v9}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$600(Lcom/android/phone/MSimPhoneInterfaceManager;ILandroid/os/Message;)V

    goto/16 :goto_2b

    .line 480
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_455
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 481
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 482
    .restart local v27       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_487

    .line 483
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 501
    :cond_47d
    :goto_47d
    monitor-enter v27

    .line 502
    :try_start_47e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 503
    monitor-exit v27

    goto/16 :goto_2b

    :catchall_484
    move-exception v2

    monitor-exit v27
    :try_end_486
    .catchall {:try_start_47e .. :try_end_486} :catchall_484

    throw v2

    .line 486
    :cond_487
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 488
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_47d

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_47d

    .line 491
    :try_start_4a7
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CommandExceptionEx;->getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    move-result-object v2

    sget-object v3, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->INVALID_PARAMETER:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    if-ne v2, v3, :cond_47d

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$302(Lcom/android/phone/MSimPhoneInterfaceManager;I)I
    :try_end_4bd
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_4a7 .. :try_end_4bd} :catch_4be

    goto :goto_47d

    .line 496
    :catch_4be
    move-exception v2

    goto :goto_47d

    .line 509
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v27           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_4c0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequestAsync;

    .line 510
    .local v28, requestAsync:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequestAsync;
    const/16 v2, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 512
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequestAsync;->arg1:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_2b

    .line 517
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v28           #requestAsync:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequestAsync;
    :pswitch_4e5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 518
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequestAsync;

    .line 519
    .restart local v28       #requestAsync:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequestAsync;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequestAsync;->result:Ljava/lang/Object;

    .line 520
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequestAsync;->arg2:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/IOemHookCallback;

    .line 522
    .local v21, cb:Lcom/android/internal/telephony/IOemHookCallback;
    :try_start_505
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequestAsync;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IOemHookCallback;->onOemHookResponse([B)V
    :try_end_512
    .catch Landroid/os/RemoteException; {:try_start_505 .. :try_end_512} :catch_514

    goto/16 :goto_2b

    .line 523
    :catch_514
    move-exception v22

    .line 524
    .local v22, e:Landroid/os/RemoteException;
    invoke-virtual/range {v22 .. v22}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2b

    .line 229
    :pswitch_data_51a
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_65
        :pswitch_80
        :pswitch_b7
        :pswitch_c9
        :pswitch_c0
        :pswitch_133
        :pswitch_158
        :pswitch_178
        :pswitch_f
        :pswitch_f
        :pswitch_4c0
        :pswitch_4e5
        :pswitch_191
        :pswitch_1cf
        :pswitch_2c0
        :pswitch_305
        :pswitch_37d
        :pswitch_39e
        :pswitch_430
        :pswitch_455
        :pswitch_20d
        :pswitch_248
    .end packed-switch
.end method
