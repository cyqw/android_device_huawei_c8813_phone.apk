.class public Lcom/android/phone/EmergencyDialer;
.super Landroid/app/Activity;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mAdditionalButtons:Landroid/view/View;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field mDigits:Landroid/widget/EditText;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mLastNumber:Ljava/lang/String;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 112
    new-instance v0, Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$1;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6
    .parameter "number"

    .prologue
    .line 597
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 598
    const v0, 0x7f0e019b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 600
    :goto_15
    return-object v0

    :cond_16
    const v0, 0x7f0e019c

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private keyPressed(I)V
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 355
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 356
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 357
    return-void
.end method

.method private placeCall()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 534
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 535
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 539
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 541
    :cond_21
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 556
    :goto_26
    return-void

    .line 544
    :cond_27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 546
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 548
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_26

    .line 553
    .end local v0           #intent:Landroid/content/Intent;
    :cond_46
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 554
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->showDialog(I)V

    goto :goto_26
.end method

.method private setupKeypad()V
    .registers 3

    .prologue
    .line 312
    const v1, 0x7f090053

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    const v1, 0x7f090054

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    const v1, 0x7f090056

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const v1, 0x7f090057

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v1, 0x7f090059

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v1, 0x7f09005a

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const v1, 0x7f09005c

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v1, 0x7f09005d

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 324
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 327
    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    return-void
.end method

.method private updateDialAndDeleteButtonStateEnabledAttr()V
    .registers 3

    .prologue
    .line 634
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    .line 636
    .local v0, notEmpty:Z
    :goto_9
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 637
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 639
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    if-eqz v1, :cond_21

    .line 641
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 642
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 644
    :cond_21
    return-void

    .line 634
    .end local v0           #notEmpty:Z
    :cond_22
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "input"

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 148
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 151
    :cond_13
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 152
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 126
    return-void
.end method

.method protected maybeAddNumberFormatting()V
    .registers 1

    .prologue
    .line 297
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v1, 0x1

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_9a

    .line 454
    :cond_f
    :goto_f
    return-void

    .line 379
    :sswitch_10
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 380
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 384
    :sswitch_17
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 385
    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 389
    :sswitch_1f
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 390
    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 394
    :sswitch_27
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 395
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 399
    :sswitch_31
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 400
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 404
    :sswitch_3b
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 405
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 409
    :sswitch_45
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 410
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 414
    :sswitch_4e
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 415
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 419
    :sswitch_57
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 420
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 424
    :sswitch_60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 425
    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 429
    :sswitch_68
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 430
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 434
    :sswitch_73
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 435
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 439
    :sswitch_7c
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_f

    .line 443
    :sswitch_82
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 444
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_f

    .line 448
    :sswitch_8b
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 449
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_f

    .line 377
    :sswitch_data_9a
    .sparse-switch
        0x7f090053 -> :sswitch_10
        0x7f090054 -> :sswitch_17
        0x7f090055 -> :sswitch_1f
        0x7f090056 -> :sswitch_27
        0x7f090057 -> :sswitch_31
        0x7f090058 -> :sswitch_3b
        0x7f090059 -> :sswitch_45
        0x7f09005a -> :sswitch_4e
        0x7f09005b -> :sswitch_57
        0x7f09005c -> :sswitch_73
        0x7f09005d -> :sswitch_60
        0x7f09005e -> :sswitch_68
        0x7f090061 -> :sswitch_82
        0x7f090062 -> :sswitch_7c
        0x7f09007b -> :sswitch_8b
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 21
    .parameter "icicle"

    .prologue
    .line 156
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    .line 159
    const-string v15, "statusbar"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/high16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/high16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    .line 167
    const v15, 0x7f040014

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    .line 169
    const v15, 0x7f09007b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    .line 171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const v16, 0x7f0e0469

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setHint(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    .line 180
    const v15, 0x7f090053

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 181
    .local v14, view:Landroid/view/View;
    if-eqz v14, :cond_83

    .line 182
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    .line 185
    :cond_83
    const v15, 0x7f09005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 189
    .local v13, res:Landroid/content/res/Resources;
    const v15, 0x7f0a000b

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-eqz v15, :cond_1a6

    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v16, 0x7f090060

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setEnabled(Z)V

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v16, 0x7f090061

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v16, 0x7f090062

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 204
    :goto_e6
    if-eqz p1, :cond_eb

    .line 205
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 209
    :cond_eb
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 210
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_114

    const-string v15, "tel"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_114

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v15, v0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, number:Ljava/lang/String;
    if-eqz v11, :cond_114

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v15, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .end local v11           #number:Ljava/lang/String;
    :cond_114
    const-string v15, "ro.config.hwft_emerCallDefNum"

    const-string v16, ""

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, defaultEmergencyNumber:Ljava/lang/String;
    if-eqz v3, :cond_15f

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15f

    .line 221
    const/4 v10, 0x0

    .line 222
    .local v10, numPattern:Ljava/util/regex/Pattern;
    const/4 v9, 0x0

    .line 223
    .local v9, numMatcher:Ljava/util/regex/Matcher;
    const-string v15, "[^0-9\\+\\*\\#]"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 224
    invoke-virtual {v10, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 226
    move-object/from16 v0, p0

    invoke-static {v3, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    .line 227
    .local v6, isEmergencyNumber:Z
    if-eqz v6, :cond_140

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_147

    .line 228
    :cond_140
    const-string v15, "EmergencyDialer"

    const-string v16, "The custom number is not emergency  number or illegal number."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_147
    if-eqz v6, :cond_1b6

    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v15, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_150
    :goto_150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 239
    .local v7, mDigitsEditable:Landroid/text/Editable;
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v12

    .line 240
    .local v12, position:I
    invoke-static {v7, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 246
    .end local v6           #isEmergencyNumber:Z
    .end local v7           #mDigitsEditable:Landroid/text/Editable;
    .end local v9           #numMatcher:Ljava/util/regex/Matcher;
    .end local v10           #numPattern:Ljava/util/regex/Pattern;
    .end local v12           #position:I
    :cond_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 247
    :try_start_166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_16a
    .catchall {:try_start_166 .. :try_end_16a} :catchall_1e7

    if-nez v15, :cond_17d

    .line 249
    :try_start_16c
    new-instance v15, Landroid/media/ToneGenerator;

    const/16 v17, 0x8

    const/16 v18, 0x50

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_17d
    .catchall {:try_start_16c .. :try_end_17d} :catchall_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_16c .. :try_end_17d} :catch_1c4

    .line 255
    :cond_17d
    :goto_17d
    :try_start_17d
    monitor-exit v16
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_1e7

    .line 257
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v5, intentFilter:Landroid/content/IntentFilter;
    const-string v15, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v5}, Lcom/android/phone/EmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    :try_start_191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    const v16, 0x7f0a0005

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_1a5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_191 .. :try_end_1a5} :catch_1ea

    .line 266
    :goto_1a5
    return-void

    .line 200
    .end local v2           #data:Landroid/net/Uri;
    .end local v3           #defaultEmergencyNumber:Ljava/lang/String;
    .end local v5           #intentFilter:Landroid/content/IntentFilter;
    :cond_1a6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    goto/16 :goto_e6

    .line 234
    .restart local v2       #data:Landroid/net/Uri;
    .restart local v3       #defaultEmergencyNumber:Ljava/lang/String;
    .restart local v6       #isEmergencyNumber:Z
    .restart local v9       #numMatcher:Ljava/util/regex/Matcher;
    .restart local v10       #numPattern:Ljava/util/regex/Pattern;
    :cond_1b6
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_150

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v15, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_150

    .line 250
    .end local v6           #isEmergencyNumber:Z
    .end local v9           #numMatcher:Ljava/util/regex/Matcher;
    .end local v10           #numPattern:Ljava/util/regex/Pattern;
    :catch_1c4
    move-exception v4

    .line 251
    .local v4, e:Ljava/lang/RuntimeException;
    :try_start_1c5
    const-string v15, "EmergencyDialer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception caught while creating local tone generator: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_17d

    .line 255
    .end local v4           #e:Ljava/lang/RuntimeException;
    :catchall_1e7
    move-exception v15

    monitor-exit v16
    :try_end_1e9
    .catchall {:try_start_1c5 .. :try_end_1e9} :catchall_1e7

    throw v15

    .line 263
    .restart local v5       #intentFilter:Landroid/content/IntentFilter;
    :catch_1ea
    move-exception v8

    .line 264
    .local v8, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v15, "EmergencyDialer"

    const-string v16, "Vibrate control bool missing."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, dialog:Landroid/app/AlertDialog;
    if-nez p1, :cond_36

    .line 609
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0198

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0029

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 618
    :cond_36
    return-object v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 271
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_6
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_12

    .line 273
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 276
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_19

    .line 277
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    return-void

    .line 276
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 372
    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 365
    :pswitch_a
    const/16 v1, 0x42

    if-ne p2, v1, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_8

    .line 367
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_9

    .line 361
    :pswitch_data_18
    .packed-switch 0x7f09007b
        :pswitch_a
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 335
    packed-switch p1, :pswitch_data_22

    .line 350
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 338
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 342
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    .line 347
    :goto_1b
    const/4 v0, 0x1

    goto :goto_7

    .line 345
    :cond_1d
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_1b

    .line 335
    nop

    :pswitch_data_22
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 462
    .local v0, id:I
    sparse-switch v0, :sswitch_data_20

    move v1, v2

    .line 476
    :goto_a
    return v1

    .line 464
    :sswitch_b
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 468
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_a

    .line 472
    :sswitch_1a
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_a

    .line 462
    :sswitch_data_20
    .sparse-switch
        0x7f09005d -> :sswitch_1a
        0x7f090062 -> :sswitch_b
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 518
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 520
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 522
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    :try_start_13
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1f

    .line 524
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 527
    :cond_1f
    monitor-exit v1

    .line 528
    return-void

    .line 527
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_21

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 307
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 308
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 623
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 624
    if-nez p1, :cond_11

    move-object v0, p2

    .line 625
    check-cast v0, Landroid/app/AlertDialog;

    .line 626
    .local v0, alert:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 628
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_11
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 282
    const-string v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 283
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 481
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 484
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3c

    :goto_10
    iput-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    .line 488
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 492
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 493
    :try_start_1a
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_5b

    if-nez v1, :cond_29

    .line 495
    :try_start_1e
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x50

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_5b
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_29} :catch_3e

    .line 502
    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_5b

    .line 506
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 507
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 509
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 510
    return-void

    .line 484
    :cond_3c
    const/4 v1, 0x0

    goto :goto_10

    .line 497
    :catch_3e
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3f
    const-string v1, "EmergencyDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_29

    .line 502
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_5b
    move-exception v1

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_3f .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 288
    const-string v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 131
    return-void
.end method

.method playTone(I)V
    .registers 8
    .parameter "tone"

    .prologue
    .line 569
    iget-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v2, :cond_5

    .line 594
    :cond_4
    :goto_4
    return-void

    .line 578
    :cond_5
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 579
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 580
    .local v1, ringerMode:I
    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 585
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 586
    :try_start_19
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_3a

    .line 587
    const-string v2, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    monitor-exit v3

    goto :goto_4

    .line 593
    :catchall_37
    move-exception v2

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_37

    throw v2

    .line 592
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x96

    invoke-virtual {v2, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 593
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_37

    goto :goto_4
.end method
