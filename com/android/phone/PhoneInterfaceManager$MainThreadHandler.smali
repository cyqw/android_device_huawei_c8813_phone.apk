.class public Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 30
    .parameter "msg"

    .prologue
    .line 207
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_47c

    .line 480
    :pswitch_7
    const-string v2, "PhoneInterfaceManager"

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

    .line 483
    :goto_23
    return-void

    .line 209
    :pswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 210
    .local v26, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 213
    monitor-enter v26

    .line 214
    :try_start_45
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 215
    monitor-exit v26

    goto :goto_23

    :catchall_4a
    move-exception v2

    monitor-exit v26
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4a

    throw v2

    .line 219
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_4d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 220
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 222
    .local v9, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v9}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_23

    .line 226
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_68
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 227
    .local v19, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 228
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_95

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_95

    .line 229
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 235
    :goto_8c
    monitor-enter v26

    .line 236
    :try_start_8d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 237
    monitor-exit v26

    goto :goto_23

    :catchall_92
    move-exception v2

    monitor-exit v26
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_92

    throw v2

    .line 232
    :cond_95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_8c

    .line 241
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_9f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_23

    .line 245
    :pswitch_a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_23

    .line 249
    :pswitch_b1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 250
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v23, 0x0

    .line 251
    .local v23, hungUp:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v25

    .line 252
    .local v25, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v25

    if-ne v0, v2, :cond_e6

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v23

    .line 264
    :goto_d4
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 266
    monitor-enter v26

    .line 267
    :try_start_dd
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit v26

    goto/16 :goto_23

    :catchall_e3
    move-exception v2

    monitor-exit v26
    :try_end_e5
    .catchall {:try_start_dd .. :try_end_e5} :catchall_e3

    throw v2

    .line 256
    :cond_e6
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_f6

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v23

    goto :goto_d4

    .line 262
    :cond_f6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    .end local v23           #hungUp:Z
    .end local v25           #phoneType:I
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_111
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 273
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 274
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_23

    .line 278
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_136
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 279
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 280
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 282
    monitor-enter v26

    .line 283
    :try_start_14d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 284
    monitor-exit v26

    goto/16 :goto_23

    :catchall_153
    move-exception v2

    monitor-exit v26
    :try_end_155
    .catchall {:try_start_14d .. :try_end_155} :catchall_153

    throw v2

    .line 288
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_156
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;

    .line 289
    .local v27, requestAsync:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;
    const/16 v2, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 291
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;->arg1:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_23

    .line 296
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v27           #requestAsync:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;
    :pswitch_17b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 297
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;

    .line 298
    .restart local v27       #requestAsync:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;->result:Ljava/lang/Object;

    .line 299
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;->arg2:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/IOemHookCallback;

    .line 301
    .local v21, cb:Lcom/android/internal/telephony/IOemHookCallback;
    :try_start_19b
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IOemHookCallback;->onOemHookResponse([B)V
    :try_end_1a8
    .catch Landroid/os/RemoteException; {:try_start_19b .. :try_end_1a8} :catch_1aa

    goto/16 :goto_23

    .line 302
    :catch_1aa
    move-exception v22

    .line 303
    .local v22, e:Landroid/os/RemoteException;
    invoke-virtual/range {v22 .. v22}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_23

    .line 308
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v21           #cb:Lcom/android/internal/telephony/IOemHookCallback;
    .end local v22           #e:Landroid/os/RemoteException;
    .end local v27           #requestAsync:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;
    :pswitch_1b0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 309
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->broadcastUnsolOemHookIntent([B)V

    goto/16 :goto_23

    .line 313
    .end local v19           #ar:Landroid/os/AsyncResult;
    :pswitch_1c9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 314
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 316
    .local v24, parameters:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 321
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    invoke-static/range {v2 .. v9}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_23

    .line 328
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v24           #parameters:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_204
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 329
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 330
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_23a

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_23a

    .line 331
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 351
    :cond_230
    :goto_230
    monitor-enter v26

    :try_start_231
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v26

    goto/16 :goto_23

    :catchall_237
    move-exception v2

    monitor-exit v26
    :try_end_239
    .catchall {:try_start_231 .. :try_end_239} :catchall_237

    throw v2

    .line 335
    :cond_23a
    new-instance v3, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;

    invoke-direct {v3}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;-><init>()V

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-virtual {v3, v4, v5, v2}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->makeNewIccIoResult(II[B)Lcom/android/internal/telephony/uicc/IccIoResult;

    move-result-object v2

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 339
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_230

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_230

    .line 343
    :try_start_263
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CommandExceptionEx;->getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    move-result-object v2

    sget-object v3, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->INVALID_PARAMETER:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    if-ne v2, v3, :cond_230

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I
    :try_end_279
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_263 .. :try_end_279} :catch_27a

    goto :goto_230

    .line 347
    :catch_27a
    move-exception v2

    goto :goto_230

    .line 357
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_27c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 358
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 360
    .local v20, argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 362
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v20

    iget v11, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v20

    iget v14, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    #calls: Lcom/android/phone/PhoneInterfaceManager;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    invoke-static/range {v10 .. v18}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Lcom/android/phone/PhoneInterfaceManager;IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_23

    .line 369
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v20           #argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2c1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 370
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 371
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2f7

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2f7

    .line 372
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 394
    :cond_2ed
    :goto_2ed
    monitor-enter v26

    .line 395
    :try_start_2ee
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 396
    monitor-exit v26

    goto/16 :goto_23

    :catchall_2f4
    move-exception v2

    monitor-exit v26
    :try_end_2f6
    .catchall {:try_start_2ee .. :try_end_2f6} :catchall_2f4

    throw v2

    .line 376
    :cond_2f7
    new-instance v3, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;

    invoke-direct {v3}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;-><init>()V

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-virtual {v3, v4, v5, v2}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->makeNewIccIoResult(II[B)Lcom/android/internal/telephony/uicc/IccIoResult;

    move-result-object v2

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 380
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2ed

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_2ed

    .line 384
    :try_start_320
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CommandExceptionEx;->getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    move-result-object v2

    sget-object v3, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->INVALID_PARAMETER:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    if-ne v2, v3, :cond_2ed

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I
    :try_end_336
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_320 .. :try_end_336} :catch_337

    goto :goto_2ed

    .line 388
    :catch_337
    move-exception v2

    goto :goto_2ed

    .line 400
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_339
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 401
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 403
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    invoke-static {v3, v2, v9}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_23

    .line 407
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_35a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 408
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 409
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_39c

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_39c

    .line 410
    new-instance v3, Ljava/lang/Integer;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 436
    :cond_392
    :goto_392
    monitor-enter v26

    .line 437
    :try_start_393
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 438
    monitor-exit v26

    goto/16 :goto_23

    :catchall_399
    move-exception v2

    monitor-exit v26
    :try_end_39b
    .catchall {:try_start_393 .. :try_end_39b} :catchall_399

    throw v2

    .line 413
    :cond_39c
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 415
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_392

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_392

    .line 419
    :try_start_3bc
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CommandExceptionEx;->getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    move-result-object v2

    sget-object v3, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->MISSING_RESOURCE:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    if-ne v2, v3, :cond_3d5

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_392

    .line 430
    :catch_3d3
    move-exception v2

    goto :goto_392

    .line 424
    :cond_3d5
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CommandExceptionEx;->getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    move-result-object v2

    sget-object v3, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->NO_SUCH_ELEMENT:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    if-ne v2, v3, :cond_392

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I
    :try_end_3eb
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_3bc .. :try_end_3eb} :catch_3d3

    goto :goto_392

    .line 442
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3ec
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 443
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x13

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 445
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #calls: Lcom/android/phone/PhoneInterfaceManager;->closeLogicalChannel(ILandroid/os/Message;)V
    invoke-static {v3, v2, v9}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Lcom/android/phone/PhoneInterfaceManager;ILandroid/os/Message;)V

    goto/16 :goto_23

    .line 451
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_411
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 452
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 453
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_443

    .line 454
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 474
    :cond_439
    :goto_439
    monitor-enter v26

    .line 475
    :try_start_43a
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 476
    monitor-exit v26

    goto/16 :goto_23

    :catchall_440
    move-exception v2

    monitor-exit v26
    :try_end_442
    .catchall {:try_start_43a .. :try_end_442} :catchall_440

    throw v2

    .line 457
    :cond_443
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 459
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_439

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_439

    .line 463
    :try_start_463
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-static {v2}, Lcom/huawei/internal/telephony/CommandExceptionEx;->getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    move-result-object v2

    sget-object v3, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->INVALID_PARAMETER:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    if-ne v2, v3, :cond_439

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I
    :try_end_479
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_463 .. :try_end_479} :catch_47a

    goto :goto_439

    .line 468
    :catch_47a
    move-exception v2

    goto :goto_439

    .line 207
    :pswitch_data_47c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_4d
        :pswitch_68
        :pswitch_9f
        :pswitch_b1
        :pswitch_a8
        :pswitch_111
        :pswitch_136
        :pswitch_1b0
        :pswitch_7
        :pswitch_7
        :pswitch_156
        :pswitch_17b
        :pswitch_27c
        :pswitch_2c1
        :pswitch_339
        :pswitch_35a
        :pswitch_3ec
        :pswitch_411
        :pswitch_1c9
        :pswitch_204
    .end packed-switch
.end method
