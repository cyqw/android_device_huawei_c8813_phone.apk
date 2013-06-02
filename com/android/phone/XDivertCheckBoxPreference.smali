.class public Lcom/android/phone/XDivertCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "XDivertCheckBoxPreference.java"


# instance fields
.field private final DBG:Z

.field mAction:I

.field mCFLine1Number:[Ljava/lang/String;

.field private mCallNotif:Lcom/android/phone/MSimCallNotifier;

.field private final mGetOptionComplete:Landroid/os/Handler;

.field mLine1Number:[Ljava/lang/String;

.field mNumPhones:I

.field mPhoneObj:[Lcom/android/internal/telephony/Phone;

.field mReason:I

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field mSub1CallWaiting:Z

.field mSub2CallWaiting:Z

.field mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field private mXDivertUtility:Lcom/android/phone/XDivertUtility;

.field mXdivertStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/XDivertCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/XDivertCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->DBG:Z

    .line 258
    new-instance v0, Lcom/android/phone/XDivertCheckBoxPreference$4;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertCheckBoxPreference$4;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    .line 274
    new-instance v0, Lcom/android/phone/XDivertCheckBoxPreference$5;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertCheckBoxPreference$5;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    .line 302
    new-instance v0, Lcom/android/phone/XDivertCheckBoxPreference$6;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertCheckBoxPreference$6;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mRevertOptionComplete:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleGetCFNRCResponse(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/XDivertCheckBoxPreference;->handleGetCallWaitingResponse(Landroid/os/AsyncResult;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleSetCFNRCResponse(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleSetCallWaitingResponse(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertSetCFNRC(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method private handleGetCFNRCResponse(Landroid/os/AsyncResult;I)V
    .registers 12
    .parameter "ar"
    .parameter "arg"

    .prologue
    const/16 v5, 0x190

    const/16 v8, 0x9

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 315
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_17

    .line 317
    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v5, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 319
    invoke-direct {p0, v8, v6}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 347
    :cond_16
    :goto_16
    return-void

    .line 320
    :cond_17
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_26

    .line 321
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v4, p0, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 322
    invoke-direct {p0, v8, v6}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    goto :goto_16

    .line 324
    :cond_26
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v4

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 325
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    if-nez v0, :cond_35

    .line 326
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v4, p0, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_16

    .line 328
    :cond_35
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v0

    .local v3, length:I
    :goto_37
    if-ge v1, v3, :cond_16

    .line 329
    aget-object v4, v0, v1

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_51

    if-nez p2, :cond_51

    .line 331
    aget-object v2, v0, v1

    .line 332
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 335
    invoke-virtual {p0, v7}, Lcom/android/phone/XDivertCheckBoxPreference;->queryCallWaiting(I)V

    .line 328
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 336
    :cond_51
    aget-object v4, v0, v1

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4e

    if-ne p2, v6, :cond_4e

    .line 338
    aget-object v2, v0, v1

    .line 339
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 342
    invoke-virtual {p0, v6}, Lcom/android/phone/XDivertCheckBoxPreference;->queryCallWaiting(I)V

    goto :goto_4e
.end method

.method private handleGetCallWaitingResponse(Landroid/os/AsyncResult;II)V
    .registers 11
    .parameter "ar"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/16 v5, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 373
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_33

    .line 374
    const-string v1, "XDivertCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCallWaitingResponse: ar.exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_2f

    .line 376
    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 379
    :cond_2f
    invoke-direct {p0, v5, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 417
    :cond_32
    :goto_32
    return-void

    .line 380
    :cond_33
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_48

    .line 381
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v3, 0x190

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 383
    :cond_44
    invoke-direct {p0, v5, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    goto :goto_32

    .line 388
    :cond_48
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 389
    .local v0, cwArray:[I
    if-nez p2, :cond_7a

    .line 390
    aget v1, v0, v3

    if-ne v1, v2, :cond_75

    aget v1, v0, v2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_75

    move v1, v2

    :goto_5c
    iput-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    .line 395
    monitor-enter p0

    .line 397
    const-wide/16 v4, 0x1388

    :try_start_61
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_77
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_a6

    .line 400
    :goto_64
    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_77

    .line 403
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v2

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_32

    :cond_75
    move v1, v3

    .line 390
    goto :goto_5c

    .line 400
    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v1

    .line 405
    :cond_7a
    if-ne p2, v2, :cond_32

    .line 406
    aget v1, v0, v3

    if-ne v1, v2, :cond_87

    aget v1, v0, v2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_87

    move v3, v2

    :cond_87
    iput-boolean v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    .line 407
    invoke-direct {p0, v5, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 411
    invoke-direct {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->validateXDivert()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    .line 412
    iget-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {p0, v1}, Lcom/android/phone/XDivertCheckBoxPreference;->setChecked(Z)V

    .line 413
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimCallNotifier;->onXDivertChanged(Z)V

    .line 414
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimCallNotifier;->setXDivertStatus(Z)V

    goto :goto_32

    .line 398
    :catch_a6
    move-exception v1

    goto :goto_64
.end method

.method private handleRevertOperation(II)V
    .registers 7
    .parameter "subscription"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 460
    if-nez p1, :cond_16

    .line 461
    packed-switch p2, :pswitch_data_38

    .line 490
    :cond_7
    :goto_7
    return-void

    .line 463
    :pswitch_8
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_7

    .line 464
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_7

    .line 469
    :pswitch_12
    invoke-direct {p0, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->revertCFNRC(I)V

    goto :goto_7

    .line 472
    :cond_16
    if-ne p1, v3, :cond_7

    .line 473
    packed-switch p2, :pswitch_data_40

    goto :goto_7

    .line 475
    :pswitch_1c
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_25

    .line 476
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 479
    :cond_25
    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e03f1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 482
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 486
    .end local v0           #toast:Landroid/widget/Toast;
    :pswitch_34
    invoke-direct {p0, v3}, Lcom/android/phone/XDivertCheckBoxPreference;->revertCFNRC(I)V

    goto :goto_7

    .line 461
    :pswitch_data_38
    .packed-switch 0x6
        :pswitch_8
        :pswitch_12
    .end packed-switch

    .line 473
    :pswitch_data_40
    .packed-switch 0x6
        :pswitch_1c
        :pswitch_34
    .end packed-switch
.end method

.method private handleRevertSetCFNRC(Landroid/os/AsyncResult;I)V
    .registers 7
    .parameter "ar"
    .parameter "arg"

    .prologue
    .line 517
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 519
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_23

    .line 521
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v2, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 528
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e03f1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 531
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 532
    return-void

    .line 523
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_23
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    .line 524
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v2, 0x190

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_13
.end method

.method private handleSetCFNRCResponse(Landroid/os/AsyncResult;I)V
    .registers 8
    .parameter "ar"
    .parameter "arg"

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 350
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_14

    .line 352
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v1, p0, v0}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 354
    invoke-direct {p0, p2, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertOperation(II)V

    .line 370
    :goto_13
    return-void

    .line 355
    :cond_14
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_29

    .line 356
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v1, 0x190

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 358
    :cond_25
    invoke-direct {p0, p2, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertOperation(II)V

    goto :goto_13

    .line 360
    :cond_29
    if-nez p2, :cond_42

    .line 361
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, p2

    .line 367
    :goto_33
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_13

    .line 363
    :cond_42
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v0, p2

    goto :goto_33
.end method

.method private handleSetCallWaitingResponse(Landroid/os/AsyncResult;I)V
    .registers 12
    .parameter "ar"
    .parameter "arg"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 420
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    .line 421
    const/4 v0, 0x7

    invoke-direct {p0, p2, v0}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertOperation(II)V

    .line 457
    :cond_a
    :goto_a
    return-void

    .line 423
    :cond_b
    iget v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    move v4, v6

    .line 424
    .local v4, time:I
    :goto_11
    if-nez p2, :cond_40

    .line 429
    monitor-enter p0

    .line 431
    const-wide/16 v0, 0x1388

    :try_start_16
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_3b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_6d

    .line 434
    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_3b

    .line 436
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    if-nez v0, :cond_3e

    move v0, v5

    :goto_1f
    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    .line 438
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v6

    iget-object v7, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_a

    .line 423
    .end local v4           #time:I
    :cond_38
    const/16 v4, 0x14

    goto :goto_11

    .line 434
    .restart local v4       #time:I
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    move v0, v6

    .line 436
    goto :goto_1f

    .line 443
    :cond_40
    if-ne p2, v5, :cond_a

    .line 444
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    if-nez v0, :cond_6b

    :goto_46
    iput-boolean v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    .line 445
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_51

    .line 446
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 451
    :cond_51
    invoke-direct {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->validateXDivert()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    .line 452
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertCheckBoxPreference;->setChecked(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimCallNotifier;->onXDivertChanged(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimCallNotifier;->setXDivertStatus(Z)V

    goto :goto_a

    :cond_6b
    move v5, v6

    .line 444
    goto :goto_46

    .line 432
    :catch_6d
    move-exception v0

    goto :goto_19
.end method

.method private processStartDialog(IZ)V
    .registers 5
    .parameter "state"
    .parameter "read"

    .prologue
    .line 244
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/XDivertCheckBoxPreference$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference$3;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 256
    return-void
.end method

.method private processStopDialog(IZ)V
    .registers 4
    .parameter "state"
    .parameter "read"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_9

    .line 239
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, p2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 241
    :cond_9
    return-void
.end method

.method private revertCFNRC(I)V
    .registers 10
    .parameter "arg"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 493
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    if-eqz v0, :cond_21

    const/4 v1, 0x3

    .line 496
    .local v1, action:I
    :goto_8
    const/4 v2, 0x3

    .line 497
    .local v2, reason:I
    const/4 v0, 0x2

    if-eq v2, v0, :cond_23

    move v4, v5

    .line 499
    .local v4, time:I
    :goto_d
    if-nez p1, :cond_26

    .line 500
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v6

    iget-object v6, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mRevertOptionComplete:Landroid/os/Handler;

    invoke-virtual {v6, v7, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 514
    :cond_20
    :goto_20
    return-void

    .end local v1           #action:I
    .end local v2           #reason:I
    .end local v4           #time:I
    :cond_21
    move v1, v5

    .line 493
    goto :goto_8

    .line 497
    .restart local v1       #action:I
    .restart local v2       #reason:I
    :cond_23
    const/16 v4, 0x14

    goto :goto_d

    .line 506
    .restart local v4       #time:I
    :cond_26
    if-ne p1, v6, :cond_20

    .line 507
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v6

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mRevertOptionComplete:Landroid/os/Handler;

    invoke-virtual {v5, v7, v1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_20
.end method

.method private validateXDivert()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 184
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 185
    .local v0, check1:Z
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 186
    .local v1, check2:Z
    iget-boolean v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    iget-boolean v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/phone/XDivertCheckBoxPreference;->displayAlertMessage(ZZZZ)V

    .line 187
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_40

    .line 188
    if-eqz v0, :cond_3e

    if-ne v0, v1, :cond_3e

    .line 189
    iget-boolean v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    if-eqz v4, :cond_3c

    iget-boolean v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    iget-boolean v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    if-ne v4, v5, :cond_3c

    .line 196
    :goto_3b
    return v2

    :cond_3c
    move v2, v3

    .line 192
    goto :goto_3b

    :cond_3e
    move v2, v3

    .line 194
    goto :goto_3b

    :cond_40
    move v2, v3

    .line 196
    goto :goto_3b
.end method


# virtual methods
.method public displayAlertMessage(ZZZZ)V
    .registers 14
    .parameter "sub1Cfnrc"
    .parameter "sub2Cfnrc"
    .parameter "sub1CW"
    .parameter "sub2CW"

    .prologue
    const v8, 0x7f0e03f4

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 201
    new-array v3, v4, [I

    fill-array-data v3, :array_92

    .line 202
    .local v3, subStatus:[I
    new-array v2, v4, [I

    fill-array-data v2, :array_9a

    .line 203
    .local v2, resSubId:[I
    const-string v0, ""

    .line 205
    .local v0, dispMsg:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    iget v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    if-ge v1, v4, :cond_5e

    .line 210
    if-ne p1, v7, :cond_1e

    if-ne p1, p3, :cond_1e

    if-nez v1, :cond_1e

    .line 211
    aput v8, v3, v1

    .line 213
    :cond_1e
    if-ne p2, v7, :cond_26

    if-ne p2, p4, :cond_26

    if-ne v1, v7, :cond_26

    .line 214
    aput v8, v3, v1

    .line 217
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    aget v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 221
    :cond_5e
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e03f3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/phone/XDivertCheckBoxPreference$2;

    invoke-direct {v6, p0}, Lcom/android/phone/XDivertCheckBoxPreference$2;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    new-instance v5, Lcom/android/phone/XDivertCheckBoxPreference$1;

    invoke-direct {v5, p0}, Lcom/android/phone/XDivertCheckBoxPreference$1;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 235
    return-void

    .line 201
    :array_92
    .array-data 0x4
        0xf5t 0x3t 0xet 0x7ft
        0xf5t 0x3t 0xet 0x7ft
    .end array-data

    .line 202
    :array_9a
    .array-data 0x4
        0x11t 0x4t 0xet 0x7ft
        0x12t 0x4t 0xet 0x7ft
    .end array-data
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "listener"
    .parameter "skipReading"
    .parameter "sub1"
    .parameter "sub2"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 105
    iput-object p1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 106
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 107
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    check-cast v2, Lcom/android/phone/MSimCallNotifier;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    .line 109
    invoke-static {}, Lcom/android/phone/XDivertUtility;->getInstance()Lcom/android/phone/XDivertUtility;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    .line 111
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v2, p3, v6}, Lcom/android/phone/XDivertUtility;->storeNumber(Ljava/lang/String;I)V

    .line 112
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v2, p4, v3}, Lcom/android/phone/XDivertUtility;->storeNumber(Ljava/lang/String;I)V

    .line 114
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/phone/XDivertCheckBoxPreference;->processStartDialog(IZ)V

    .line 115
    if-nez p2, :cond_6d

    .line 116
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    .line 117
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    .line 118
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    .line 119
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    :goto_42
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    if-ge v1, v2, :cond_5e

    .line 121
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aput-object v3, v2, v1

    .line 122
    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    if-nez v1, :cond_5c

    move-object v2, p3

    :goto_57
    aput-object v2, v3, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_5c
    move-object v2, p4

    .line 122
    goto :goto_57

    .line 126
    :cond_5e
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v6

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 129
    .end local v1           #i:I
    :cond_6d
    return-void
.end method

.method protected onClick()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v1, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 133
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 135
    const/16 v0, 0x8

    invoke-direct {p0, v0, v5}, Lcom/android/phone/XDivertCheckBoxPreference;->processStartDialog(IZ)V

    .line 136
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    .line 137
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    .line 138
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    if-eqz v0, :cond_56

    move v0, v5

    :goto_19
    iput v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    .line 141
    iput v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    .line 142
    iget v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_58

    move v4, v5

    .line 147
    .local v4, time:I
    :goto_23
    monitor-enter p0

    .line 149
    const-wide/16 v2, 0x1388

    :try_start_26
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_5b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_74

    .line 152
    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_5b

    .line 156
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 157
    .local v6, requestForSub1:Z
    if-eqz v6, :cond_5e

    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    if-ne v6, v0, :cond_5e

    iget v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    if-ne v0, v1, :cond_5e

    .line 160
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v8

    iget v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget-object v7, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v7, v9, v8, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 173
    :goto_55
    return-void

    .end local v4           #time:I
    .end local v6           #requestForSub1:Z
    :cond_56
    move v0, v1

    .line 138
    goto :goto_19

    .line 142
    :cond_58
    const/16 v4, 0x14

    goto :goto_23

    .line 152
    .restart local v4       #time:I
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    .line 167
    .restart local v6       #requestForSub1:Z
    :cond_5e
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v8

    iget-object v7, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v7, v9, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_55

    .line 150
    .end local v6           #requestForSub1:Z
    :catch_74
    move-exception v0

    goto :goto_29
.end method

.method queryCallWaiting(I)V
    .registers 5
    .parameter "arg"

    .prologue
    const/4 v2, 0x3

    .line 177
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 179
    return-void
.end method
