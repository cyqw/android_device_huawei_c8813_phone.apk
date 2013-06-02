.class public Lcom/android/phone/IccNetworkDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccNetworkDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IccNetworkDepersonalizationPanel$5;
    }
.end annotation


# instance fields
.field private final ENTRY:I

.field private final ERROR:I

.field private final IN_PROGRESS:I

.field private final SUCCESS:I

.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPersoSubtype:I

.field private mPersoSubtypeText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mSubscription:I

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->ENTRY:I

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->IN_PROGRESS:I

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->ERROR:I

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->SUCCESS:I

    .line 97
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 113
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 514
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "subtype"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->ENTRY:I

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->IN_PROGRESS:I

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->ERROR:I

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->SUCCESS:I

    .line 97
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 113
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 514
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 147
    iput p2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    .line 148
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v0

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSubscription:I

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .parameter "context"
    .parameter "subtype"
    .parameter "subscription"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->ENTRY:I

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->IN_PROGRESS:I

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->ERROR:I

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->SUCCESS:I

    .line 97
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 113
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 514
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 153
    iput p2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    .line 154
    iput p3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSubscription:I

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->displayStatus(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateBusy()V

    return-void
.end method

.method private displayStatus(I)V
    .registers 8
    .parameter "type"

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, label:I
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    aget-object v2, v3, v4

    .line 261
    .local v2, persosubtype:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    sget-object v3, Lcom/android/phone/IccNetworkDepersonalizationPanel$5;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1de

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported Perso Subtype :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 507
    :goto_2a
    return-void

    .line 263
    :pswitch_2b
    packed-switch p1, :pswitch_data_1fe

    .line 492
    :goto_2e
    if-nez p1, :cond_1c9

    .line 493
    const-string v0, ""

    .line 494
    .local v0, displayText:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e041d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSubscription:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 265
    .end local v0           #displayText:Ljava/lang/String;
    :pswitch_70
    const v1, 0x7f0e0047

    .line 266
    goto :goto_2e

    .line 268
    :pswitch_74
    const v1, 0x7f0e039a

    .line 269
    goto :goto_2e

    .line 271
    :pswitch_78
    const v1, 0x7f0e039b

    .line 272
    goto :goto_2e

    .line 274
    :pswitch_7c
    const v1, 0x7f0e039c

    goto :goto_2e

    .line 279
    :pswitch_80
    packed-switch p1, :pswitch_data_20a

    goto :goto_2e

    .line 281
    :pswitch_84
    const v1, 0x7f0e0299

    .line 282
    goto :goto_2e

    .line 284
    :pswitch_88
    const v1, 0x7f0e02a7

    .line 285
    goto :goto_2e

    .line 287
    :pswitch_8c
    const v1, 0x7f0e02b2

    .line 288
    goto :goto_2e

    .line 290
    :pswitch_90
    const v1, 0x7f0e02bd

    goto :goto_2e

    .line 295
    :pswitch_94
    packed-switch p1, :pswitch_data_216

    goto :goto_2e

    .line 297
    :pswitch_98
    const v1, 0x7f0e029a

    .line 298
    goto :goto_2e

    .line 300
    :pswitch_9c
    const v1, 0x7f0e02a9

    .line 301
    goto :goto_2e

    .line 303
    :pswitch_a0
    const v1, 0x7f0e02b4

    .line 304
    goto :goto_2e

    .line 306
    :pswitch_a4
    const v1, 0x7f0e02bf

    goto :goto_2e

    .line 311
    :pswitch_a8
    packed-switch p1, :pswitch_data_222

    goto :goto_2e

    .line 313
    :pswitch_ac
    const v1, 0x7f0e029b

    .line 314
    goto/16 :goto_2e

    .line 316
    :pswitch_b1
    const v1, 0x7f0e02a8

    .line 317
    goto/16 :goto_2e

    .line 319
    :pswitch_b6
    const v1, 0x7f0e02b3

    .line 320
    goto/16 :goto_2e

    .line 322
    :pswitch_bb
    const v1, 0x7f0e02be

    goto/16 :goto_2e

    .line 327
    :pswitch_c0
    packed-switch p1, :pswitch_data_22e

    goto/16 :goto_2e

    .line 329
    :pswitch_c5
    const v1, 0x7f0e029c

    .line 330
    goto/16 :goto_2e

    .line 332
    :pswitch_ca
    const v1, 0x7f0e02aa

    .line 333
    goto/16 :goto_2e

    .line 335
    :pswitch_cf
    const v1, 0x7f0e02b5

    .line 336
    goto/16 :goto_2e

    .line 338
    :pswitch_d4
    const v1, 0x7f0e02c0

    goto/16 :goto_2e

    .line 343
    :pswitch_d9
    packed-switch p1, :pswitch_data_23a

    goto/16 :goto_2e

    .line 345
    :pswitch_de
    const v1, 0x7f0e029d

    .line 346
    goto/16 :goto_2e

    .line 348
    :pswitch_e3
    const v1, 0x7f0e02ab

    .line 349
    goto/16 :goto_2e

    .line 351
    :pswitch_e8
    const v1, 0x7f0e02b6

    .line 352
    goto/16 :goto_2e

    .line 354
    :pswitch_ed
    const v1, 0x7f0e02c1

    goto/16 :goto_2e

    .line 359
    :pswitch_f2
    packed-switch p1, :pswitch_data_246

    goto/16 :goto_2e

    .line 361
    :pswitch_f7
    const v1, 0x7f0e029e

    .line 362
    goto/16 :goto_2e

    .line 364
    :pswitch_fc
    const v1, 0x7f0e02ac

    .line 365
    goto/16 :goto_2e

    .line 367
    :pswitch_101
    const v1, 0x7f0e02b7

    .line 368
    goto/16 :goto_2e

    .line 370
    :pswitch_106
    const v1, 0x7f0e02c2

    goto/16 :goto_2e

    .line 375
    :pswitch_10b
    packed-switch p1, :pswitch_data_252

    goto/16 :goto_2e

    .line 377
    :pswitch_110
    const v1, 0x7f0e029f

    .line 378
    goto/16 :goto_2e

    .line 380
    :pswitch_115
    const v1, 0x7f0e02ad

    .line 381
    goto/16 :goto_2e

    .line 383
    :pswitch_11a
    const v1, 0x7f0e02b8

    .line 384
    goto/16 :goto_2e

    .line 386
    :pswitch_11f
    const v1, 0x7f0e02c3

    goto/16 :goto_2e

    .line 391
    :pswitch_124
    packed-switch p1, :pswitch_data_25e

    goto/16 :goto_2e

    .line 393
    :pswitch_129
    const v1, 0x7f0e02a0

    .line 394
    goto/16 :goto_2e

    .line 396
    :pswitch_12e
    const v1, 0x7f0e02af

    .line 397
    goto/16 :goto_2e

    .line 399
    :pswitch_133
    const v1, 0x7f0e02ba

    .line 400
    goto/16 :goto_2e

    .line 402
    :pswitch_138
    const v1, 0x7f0e02c5

    goto/16 :goto_2e

    .line 407
    :pswitch_13d
    packed-switch p1, :pswitch_data_26a

    goto/16 :goto_2e

    .line 409
    :pswitch_142
    const v1, 0x7f0e02a1

    .line 410
    goto/16 :goto_2e

    .line 412
    :pswitch_147
    const v1, 0x7f0e02ae

    .line 413
    goto/16 :goto_2e

    .line 415
    :pswitch_14c
    const v1, 0x7f0e02b9

    .line 416
    goto/16 :goto_2e

    .line 418
    :pswitch_151
    const v1, 0x7f0e02c4

    goto/16 :goto_2e

    .line 423
    :pswitch_156
    packed-switch p1, :pswitch_data_276

    goto/16 :goto_2e

    .line 425
    :pswitch_15b
    const v1, 0x7f0e02a2

    .line 426
    goto/16 :goto_2e

    .line 428
    :pswitch_160
    const v1, 0x7f0e02b0

    .line 429
    goto/16 :goto_2e

    .line 431
    :pswitch_165
    const v1, 0x7f0e02bb

    .line 432
    goto/16 :goto_2e

    .line 434
    :pswitch_16a
    const v1, 0x7f0e02c6

    goto/16 :goto_2e

    .line 439
    :pswitch_16f
    packed-switch p1, :pswitch_data_282

    goto/16 :goto_2e

    .line 441
    :pswitch_174
    const v1, 0x7f0e02a3

    .line 442
    goto/16 :goto_2e

    .line 444
    :pswitch_179
    const v1, 0x7f0e02b1

    .line 445
    goto/16 :goto_2e

    .line 447
    :pswitch_17e
    const v1, 0x7f0e02bc

    .line 448
    goto/16 :goto_2e

    .line 450
    :pswitch_183
    const v1, 0x7f0e02c7

    goto/16 :goto_2e

    .line 455
    :pswitch_188
    packed-switch p1, :pswitch_data_28e

    goto/16 :goto_2e

    .line 457
    :pswitch_18d
    const v1, 0x7f0e02a4

    .line 458
    goto/16 :goto_2e

    .line 460
    :pswitch_192
    const v1, 0x7f0e02b1

    .line 461
    goto/16 :goto_2e

    .line 463
    :pswitch_197
    const v1, 0x7f0e02bc

    .line 464
    goto/16 :goto_2e

    .line 466
    :pswitch_19c
    const v1, 0x7f0e02c8

    goto/16 :goto_2e

    .line 471
    :pswitch_1a1
    packed-switch p1, :pswitch_data_29a

    goto/16 :goto_2e

    .line 473
    :pswitch_1a6
    const v1, 0x7f0e02a6

    .line 474
    goto/16 :goto_2e

    .line 476
    :pswitch_1ab
    const v1, 0x7f0e02b1

    .line 477
    goto/16 :goto_2e

    .line 479
    :pswitch_1b0
    const v1, 0x7f0e02bc

    .line 480
    goto/16 :goto_2e

    .line 482
    :pswitch_1b5
    const v1, 0x7f0e02ca

    goto/16 :goto_2e

    .line 499
    .restart local v0       #displayText:Ljava/lang/String;
    :cond_1ba
    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    .line 503
    .end local v0           #displayText:Ljava/lang/String;
    :cond_1c9
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 504
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2a

    .line 261
    nop

    :pswitch_data_1de
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_80
        :pswitch_94
        :pswitch_a8
        :pswitch_c0
        :pswitch_d9
        :pswitch_f2
        :pswitch_10b
        :pswitch_124
        :pswitch_13d
        :pswitch_156
        :pswitch_16f
        :pswitch_188
        :pswitch_1a1
    .end packed-switch

    .line 263
    :pswitch_data_1fe
    .packed-switch 0x0
        :pswitch_70
        :pswitch_74
        :pswitch_78
        :pswitch_7c
    .end packed-switch

    .line 279
    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_84
        :pswitch_88
        :pswitch_8c
        :pswitch_90
    .end packed-switch

    .line 295
    :pswitch_data_216
    .packed-switch 0x0
        :pswitch_98
        :pswitch_9c
        :pswitch_a0
        :pswitch_a4
    .end packed-switch

    .line 311
    :pswitch_data_222
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_b1
        :pswitch_b6
        :pswitch_bb
    .end packed-switch

    .line 327
    :pswitch_data_22e
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_ca
        :pswitch_cf
        :pswitch_d4
    .end packed-switch

    .line 343
    :pswitch_data_23a
    .packed-switch 0x0
        :pswitch_de
        :pswitch_e3
        :pswitch_e8
        :pswitch_ed
    .end packed-switch

    .line 359
    :pswitch_data_246
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_fc
        :pswitch_101
        :pswitch_106
    .end packed-switch

    .line 375
    :pswitch_data_252
    .packed-switch 0x0
        :pswitch_110
        :pswitch_115
        :pswitch_11a
        :pswitch_11f
    .end packed-switch

    .line 391
    :pswitch_data_25e
    .packed-switch 0x0
        :pswitch_129
        :pswitch_12e
        :pswitch_133
        :pswitch_138
    .end packed-switch

    .line 407
    :pswitch_data_26a
    .packed-switch 0x0
        :pswitch_142
        :pswitch_147
        :pswitch_14c
        :pswitch_151
    .end packed-switch

    .line 423
    :pswitch_data_276
    .packed-switch 0x0
        :pswitch_15b
        :pswitch_160
        :pswitch_165
        :pswitch_16a
    .end packed-switch

    .line 439
    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_174
        :pswitch_179
        :pswitch_17e
        :pswitch_183
    .end packed-switch

    .line 455
    :pswitch_data_28e
    .packed-switch 0x0
        :pswitch_18d
        :pswitch_192
        :pswitch_197
        :pswitch_19c
    .end packed-switch

    .line 471
    :pswitch_data_29a
    .packed-switch 0x0
        :pswitch_1a6
        :pswitch_1ab
        :pswitch_1b0
        :pswitch_1b5
    .end packed-switch
.end method

.method private hideAlert()V
    .registers 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    return-void
.end method

.method private indicateBusy()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    return-void
.end method

.method private indicateError()V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e004b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 247
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    return-void
.end method

.method private indicateSuccess()V
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e004c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 522
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccNetworkDepersonalizationPanel] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 159
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const v2, 0x7f040030

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setContentView(I)V

    .line 163
    const v2, 0x7f0900f5

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 164
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 165
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, text:Ljava/lang/CharSequence;
    move-object v0, v1

    .line 169
    check-cast v0, Landroid/text/Spannable;

    .line 170
    .local v0, span:Landroid/text/Spannable;
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 172
    const v2, 0x7f0900f3

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 174
    const v2, 0x7f0900f4

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    .line 175
    invoke-direct {p0, v5}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->displayStatus(I)V

    .line 178
    const v2, 0x7f0900f6

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 179
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v2, 0x7f0900f7

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 185
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :goto_8c
    const v2, 0x7f0900f8

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 193
    const v2, 0x7f0900f9

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 196
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSubscription:I

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 198
    return-void

    .line 188
    :cond_af
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 207
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 208
    const/4 v0, 0x1

    .line 211
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 203
    return-void
.end method
