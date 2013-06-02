.class public Lcom/android/phone/EmergencyCallbackModeExitDialog;
.super Landroid/app/Activity;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field private mConnection:Landroid/content/ServiceConnection;

.field mDialogType:I

.field private mEcmExitReceiver:Landroid/content/BroadcastReceiver;

.field mEcmTimeout:J

.field mHandler:Landroid/os/Handler;

.field private mInEmergencyCall:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mService:Lcom/android/phone/EmergencyCallbackModeService;

.field private mTask:Ljava/lang/Runnable;

.field mTimer:Landroid/os/CountDownTimer;

.field private mTimerResetHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 67
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 68
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 69
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    .line 70
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    .line 71
    iput v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    .line 73
    iput-boolean v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    .line 75
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 131
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTask:Ljava/lang/Runnable;

    .line 302
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mConnection:Landroid/content/ServiceConnection;

    .line 341
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$8;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$8;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimerResetHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/EmergencyCallbackModeExitDialog;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showEmergencyCallbackModeExitDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/EmergencyCallbackModeExitDialog;J)Ljava/lang/CharSequence;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getDialogText(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getDialogText(J)Ljava/lang/CharSequence;
    .registers 13
    .parameter "millisUntilFinished"

    .prologue
    const-wide/32 v5, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 273
    div-long v2, p1, v5

    long-to-int v0, v2

    .line 274
    .local v0, minutes:I
    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    rem-long v4, p1, v5

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, time:Ljava/lang/String;
    iget v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    packed-switch v2, :pswitch_data_62

    .line 287
    const/4 v2, 0x0

    :goto_28
    return-object v2

    .line 280
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0004

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    .line 283
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0003

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    .line 277
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_29
        :pswitch_45
    .end packed-switch
.end method

.method private showEmergencyCallbackModeExitDialog()V
    .registers 7

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 175
    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    if-eqz v0, :cond_d

    .line 176
    iput v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    .line 201
    :goto_c
    return-void

    .line 179
    :cond_d
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 181
    iput v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 182
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    .line 188
    :cond_22
    :goto_22
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;

    iget-wide v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_c

    .line 183
    :cond_33
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.action.ACTION_SHOW_ECM_EXIT_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 184
    iput v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 185
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    goto :goto_22
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 84
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    .line 89
    :cond_17
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTask:Ljava/lang/Runnable;

    const-string v5, "EcmExitDialogWaitThread"

    invoke-direct {v3, v7, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 95
    .local v3, waitForConnectionCompleteThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 97
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "subscription"

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 99
    .local v2, subscription:I
    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 100
    iget-object v4, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimerResetHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const v4, 0x7f0e01cf

    const v3, 0x7f02009e

    .line 208
    packed-switch p1, :pswitch_data_9a

    .line 264
    const/4 v1, 0x0

    :goto_a
    return-object v1

    .line 211
    :pswitch_b
    iget-wide v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    invoke-direct {p0, v1, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getDialogText(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 212
    .local v0, text:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e01d3

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e01d4

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$3;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$3;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 236
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 237
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_a

    .line 240
    .end local v0           #text:Ljava/lang/CharSequence;
    :pswitch_48
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e01d1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e01d5

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$5;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$5;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 253
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 254
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_a

    .line 257
    :pswitch_76
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 258
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0e01d2

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 260
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 261
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_a

    .line 208
    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_76
        :pswitch_48
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 114
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 294
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "exit_ecm_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->setResult(ILandroid/content/Intent;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    .line 297
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "DIALOG_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 120
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string v0, "DIALOG_TYPE"

    iget v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    return-void
.end method
