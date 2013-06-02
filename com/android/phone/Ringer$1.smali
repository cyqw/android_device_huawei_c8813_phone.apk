.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x3

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v6, 0x0

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, r:Landroid/media/Ringtone;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_1ba

    .line 487
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 373
    :pswitch_c
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v7, v7, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v7, :cond_50

    invoke-virtual {p0, v10}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_50

    .line 377
    sget-object v7, Lcom/android/phone/CallNotifier;->mSettingUri:Landroid/net/Uri;

    if-eqz v7, :cond_28

    .line 378
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v7, v7, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v8, v8, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 385
    :cond_28
    if-nez v2, :cond_41

    sget-object v7, Lcom/android/phone/CallNotifier;->mSettingUri:Landroid/net/Uri;

    if-eqz v7, :cond_41

    .line 387
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 388
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v7, v7, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v8, v8, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 391
    :cond_41
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v7

    .line 392
    const/4 v8, 0x3

    :try_start_45
    invoke-virtual {p0, v8}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_4f

    .line 393
    iget-object v8, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v2, v8, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 395
    :cond_4f
    monitor-exit v7
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_ef

    .line 397
    :cond_50
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v7, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 398
    if-eqz v2, :cond_b

    invoke-virtual {p0, v10}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_b

    .line 399
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 401
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-virtual {v7, v6}, Lcom/android/phone/Ringer;->seekTo(I)V

    .line 407
    invoke-static {}, Lcom/android/phone/Ringer;->access$100()Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 408
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v7, v7, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 410
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v7, "ascend_ringtone"

    invoke-static {v3, v7, v5}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_f2

    move v4, v5

    .line 412
    .local v4, ringtoneAscending:Z
    :goto_81
    if-eqz v4, :cond_ce

    .line 413
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mDoAscending:Z
    invoke-static {v7}, Lcom/android/phone/Ringer;->access$200(Lcom/android/phone/Ringer;)Z

    move-result v7

    if-ne v5, v7, :cond_ce

    .line 414
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mDoAscending:Z
    invoke-static {v7, v6}, Lcom/android/phone/Ringer;->access$202(Lcom/android/phone/Ringer;Z)Z

    .line 415
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mPreSetVolume:I
    invoke-static {v7}, Lcom/android/phone/Ringer;->access$300(Lcom/android/phone/Ringer;)I

    move-result v7

    if-gez v7, :cond_ce

    .line 416
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v7, v7, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 418
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    #setter for: Lcom/android/phone/Ringer;->mPreSetVolume:I
    invoke-static {v7, v8}, Lcom/android/phone/Ringer;->access$302(Lcom/android/phone/Ringer;I)I

    .line 420
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mPreSetVolume:I
    invoke-static {v7}, Lcom/android/phone/Ringer;->access$300(Lcom/android/phone/Ringer;)I

    move-result v7

    if-lez v7, :cond_ce

    .line 421
    invoke-virtual {v0, v9, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 422
    iget-object v6, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v6

    .line 423
    :try_start_bb
    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_cd

    .line 424
    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 426
    :cond_cd
    monitor-exit v6
    :try_end_ce
    .catchall {:try_start_bb .. :try_end_ce} :catchall_f4

    .line 433
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #ringtoneAscending:Z
    :cond_ce
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 434
    iget-object v6, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v6

    .line 435
    :try_start_d4
    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_e9

    .line 436
    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    #setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v5, v7, v8}, Lcom/android/phone/Ringer;->access$502(Lcom/android/phone/Ringer;J)J

    .line 438
    :cond_e9
    monitor-exit v6

    goto/16 :goto_b

    :catchall_ec
    move-exception v5

    monitor-exit v6
    :try_end_ee
    .catchall {:try_start_d4 .. :try_end_ee} :catchall_ec

    throw v5

    .line 395
    :catchall_ef
    move-exception v5

    :try_start_f0
    monitor-exit v7
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v5

    .restart local v3       #resolver:Landroid/content/ContentResolver;
    :cond_f2
    move v4, v6

    .line 410
    goto :goto_81

    .line 426
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v4       #ringtoneAscending:Z
    :catchall_f4
    move-exception v5

    :try_start_f5
    monitor-exit v6
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v5

    .line 442
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #ringtoneAscending:Z
    :pswitch_f7
    invoke-static {}, Lcom/android/phone/Ringer;->access$600()Z

    move-result v7

    if-eqz v7, :cond_102

    const-string v7, "mRingHandler: STOP_RING..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/Ringer;->access$700(Ljava/lang/String;)V

    .line 444
    :cond_102
    invoke-static {}, Lcom/android/phone/Ringer;->access$100()Z

    move-result v7

    if-eqz v7, :cond_12f

    .line 446
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mPreSetVolume:I
    invoke-static {v7}, Lcom/android/phone/Ringer;->access$300(Lcom/android/phone/Ringer;)I

    move-result v7

    if-ltz v7, :cond_12a

    .line 447
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v7, v7, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 448
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mPreSetVolume:I
    invoke-static {v7}, Lcom/android/phone/Ringer;->access$300(Lcom/android/phone/Ringer;)I

    move-result v7

    invoke-virtual {v0, v9, v7, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 449
    iget-object v6, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mPreSetVolume:I
    invoke-static {v6, v11}, Lcom/android/phone/Ringer;->access$302(Lcom/android/phone/Ringer;I)I

    .line 451
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_12a
    iget-object v6, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mDoAscending:Z
    invoke-static {v6, v5}, Lcom/android/phone/Ringer;->access$202(Lcom/android/phone/Ringer;Z)Z

    .line 454
    :cond_12f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2           #r:Landroid/media/Ringtone;
    check-cast v2, Landroid/media/Ringtone;

    .line 455
    .restart local v2       #r:Landroid/media/Ringtone;
    if-eqz v2, :cond_141

    .line 456
    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    .line 460
    :cond_138
    :goto_138
    invoke-virtual {p0}, Lcom/android/phone/Ringer$1;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    goto/16 :goto_b

    .line 458
    :cond_141
    invoke-static {}, Lcom/android/phone/Ringer;->access$600()Z

    move-result v5

    if-eqz v5, :cond_138

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$700(Ljava/lang/String;)V

    goto :goto_138

    .line 465
    :pswitch_15e
    invoke-static {}, Lcom/android/phone/Ringer;->access$100()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 466
    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mPreSetVolume:I
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$300(Lcom/android/phone/Ringer;)I

    move-result v5

    if-ltz v5, :cond_b

    .line 467
    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 468
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 469
    .local v1, nowVolume:I
    add-int/lit8 v5, v1, 0x1

    iget-object v7, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mPreSetVolume:I
    invoke-static {v7}, Lcom/android/phone/Ringer;->access$300(Lcom/android/phone/Ringer;)I

    move-result v7

    if-ge v5, v7, :cond_1a9

    .line 471
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v9, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 472
    iget-object v6, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v6

    .line 473
    :try_start_18e
    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_1a3

    .line 474
    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x5

    mul-int/lit16 v8, v1, 0x1f4

    int-to-long v8, v8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 476
    :cond_1a3
    monitor-exit v6

    goto/16 :goto_b

    :catchall_1a6
    move-exception v5

    monitor-exit v6
    :try_end_1a8
    .catchall {:try_start_18e .. :try_end_1a8} :catchall_1a6

    throw v5

    .line 479
    :cond_1a9
    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mPreSetVolume:I
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$300(Lcom/android/phone/Ringer;)I

    move-result v5

    invoke-virtual {v0, v9, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 480
    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mPreSetVolume:I
    invoke-static {v5, v11}, Lcom/android/phone/Ringer;->access$302(Lcom/android/phone/Ringer;I)I

    goto/16 :goto_b

    .line 371
    nop

    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_f7
        :pswitch_b
        :pswitch_15e
    .end packed-switch
.end method
