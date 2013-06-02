.class Lcom/android/phone/PhoneUtils$ConnectionHandler;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 255
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneUtils$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    .line 258
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 259
    .local v0, ar:Landroid/os/AsyncResult;
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_100

    .line 347
    :goto_a
    return-void

    .line 264
    :pswitch_b
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/Phone;

    .line 267
    .local v9, phone:Lcom/android/internal/telephony/Phone;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/CallManager;

    .line 274
    .local v3, cm:Lcom/android/internal/telephony/CallManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v7, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 276
    .local v6, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_20

    .line 277
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 280
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_3a
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3e
    :goto_3e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 281
    .local v4, cn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3e

    .line 282
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, v4, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 289
    .end local v4           #cn:Lcom/android/internal/telephony/Connection;
    :cond_5e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, bgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6b
    :goto_6b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_85

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 291
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_6b

    .line 292
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6b

    .line 295
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_85
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_89
    :goto_89
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 296
    .restart local v4       #cn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_89

    .line 297
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, v4, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    .line 305
    .end local v4           #cn:Lcom/android/internal/telephony/Connection;
    :cond_a9
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 306
    .local v5, cnlist:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_b5
    :goto_b5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d1

    .line 307
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 308
    .restart local v4       #cn:Lcom/android/internal/telephony/Connection;
    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b5

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b5

    .line 309
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_b5

    .line 319
    .end local v4           #cn:Lcom/android/internal/telephony/Connection;
    :cond_d1
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v10, v11, :cond_eb

    .line 322
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v10, :cond_e6

    .line 325
    invoke-static {v9}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->restoreMuteState(I)Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 327
    :cond_e6
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 332
    :cond_eb
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    #calls: Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    invoke-static {v10, v12}, Lcom/android/phone/PhoneUtils;->access$100(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_a

    .line 338
    .end local v2           #bgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v3           #cm:Lcom/android/internal/telephony/CallManager;
    .end local v5           #cnlist:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    .end local v7           #fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #phone:Lcom/android/internal/telephony/Phone;
    :pswitch_f4
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->access$202(Z)Z

    goto/16 :goto_a

    .line 343
    :pswitch_fa
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->access$302(Z)Z

    goto/16 :goto_a

    .line 259
    nop

    :pswitch_data_100
    .packed-switch -0x1
        :pswitch_b
        :pswitch_f4
        :pswitch_fa
    .end packed-switch
.end method
