.class public Lcom/android/phone/EditFdnContactScreen;
.super Landroid/app/Activity;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditFdnContactScreen$QueryHandler;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field protected static final NUM_PROJECTION:[Ljava/lang/String;

.field private static mSubscription:I


# instance fields
.field protected mAddContact:Z

.field private mButton:Landroid/widget/Button;

.field private final mClicked:Landroid/view/View$OnClickListener;

.field private mDataBusy:Z

.field private mEfid:Ljava/lang/String;

.field private mFDNHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mNameField:Landroid/widget/EditText;

.field protected mNumber:Ljava/lang/String;

.field protected mNumberField:Landroid/widget/EditText;

.field private final mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPin2:Ljava/lang/String;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field protected mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 93
    sput v2, Lcom/android/phone/EditFdnContactScreen;->mSubscription:I

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->NUM_PROJECTION:[Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 130
    sget-object v0, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    .line 501
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$3;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    .line 527
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$4;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    .line 571
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$5;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EditFdnContactScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/EditFdnContactScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->authenticatePin2()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mEfid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mIndex:Ljava/lang/String;

    return-object v0
.end method

.method private authenticatePin2()V
    .registers 3

    .prologue
    .line 409
    const-string v0, "gsm.sim.num.pin2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 411
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 412
    :cond_22
    const v0, 0x7f0e02dc

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 413
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    .line 421
    :goto_34
    return-void

    .line 418
    :cond_35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 419
    const-class v1, Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 420
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EditFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_34
.end method

.method private setupView()V
    .registers 3

    .prologue
    .line 267
    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    .line 268
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_1d

    .line 269
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 270
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_1d
    const v0, 0x7f090079

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    .line 274
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_43

    .line 275
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 276
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 277
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    :cond_43
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_5d

    .line 281
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_52

    .line 282
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_52
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_5d

    .line 285
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_5d
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    .line 290
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_73

    .line 291
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    :cond_73
    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 296
    return-void
.end method


# virtual methods
.method protected addContact()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 323
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertAndStrip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 326
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V

    .line 349
    :goto_13
    return-void

    .line 331
    :cond_14
    invoke-static {}, Lcom/android/phone/FdnList;->getFdnCount()I

    move-result v2

    invoke-static {}, Lcom/android/phone/FdnList;->getMaxFdnCount()I

    move-result v3

    if-lt v2, v3, :cond_22

    .line 333
    invoke-virtual {p0, v4}, Lcom/android/phone/EditFdnContactScreen;->handleResult(Z)V

    goto :goto_13

    .line 338
    :cond_22
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mFDNHandler:Landroid/os/Handler;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 339
    .local v1, onComplete:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 340
    const-string v2, "GSM"

    const-string v3, "EditFdnContactsScreen:addContact(): mPhone.getIccCard() ! = null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 347
    :cond_44
    invoke-virtual {p0, v4}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0135

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method

.method protected deleteSelected()V
    .registers 4

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_2d

    .line 394
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 395
    const-class v1, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 396
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "efid"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mEfid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v1, "index"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mIndex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->startActivity(Landroid/content/Intent;)V

    .line 404
    :cond_2d
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    .line 405
    return-void
.end method

.method protected displayProgress(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    .line 426
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-eqz v0, :cond_1a

    const/4 v0, -0x1

    :goto_c
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 431
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 432
    return-void

    .line 426
    :cond_1a
    const/4 v0, -0x2

    goto :goto_c

    .line 431
    :cond_1c
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected getContentURI()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 307
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected getNameFromTextField()Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNumberFromTextField()Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleResult(Z)V
    .registers 6
    .parameter "fullNumber"

    .prologue
    .line 449
    if-eqz p1, :cond_10

    .line 450
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0297

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 452
    :cond_10
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$1;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    return-void
.end method

.method protected handleResult(ZZ)V
    .registers 8
    .parameter "success"
    .parameter "invalidNumber"

    .prologue
    const v3, 0x7f0e013f

    .line 463
    if-eqz p1, :cond_28

    .line 464
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-eqz v1, :cond_24

    const v1, 0x7f0e0136

    :goto_10
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 492
    :goto_17
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$2;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$2;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 499
    return-void

    .line 464
    :cond_24
    const v1, 0x7f0e0139

    goto :goto_10

    .line 468
    :cond_28
    if-eqz p2, :cond_39

    .line 469
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 473
    :cond_39
    :try_start_39
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/internal/telephony/IccCardEx;->getIccPin2Blocked(Lcom/android/internal/telephony/IccCard;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 474
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V
    :try_end_55
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_39 .. :try_end_55} :catch_56

    goto :goto_17

    .line 482
    :catch_56
    move-exception v0

    .line 486
    .local v0, e:Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 475
    .end local v0           #e:Lcom/huawei/android/util/NoExtAPIException;
    :cond_63
    :try_start_63
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/internal/telephony/IccCardEx;->getIccPuk2Blocked(Lcom/android/internal/telephony/IccCard;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 476
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 480
    :cond_80
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V
    :try_end_8e
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_63 .. :try_end_8e} :catch_56

    goto :goto_17
.end method

.method protected isValidNumber(Ljava/lang/String;)Z
    .registers 4
    .parameter "number"

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 165
    sparse-switch p1, :sswitch_data_62

    .line 199
    :cond_5
    :goto_5
    return-void

    .line 167
    :sswitch_6
    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 168
    .local v7, extras:Landroid/os/Bundle;
    :goto_c
    if-eqz v7, :cond_24

    .line 169
    const-string v0, "pin2"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    .line 170
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_20

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->addContact()V

    goto :goto_5

    .end local v7           #extras:Landroid/os/Bundle;
    :cond_1e
    move-object v7, v3

    .line 167
    goto :goto_c

    .line 173
    .restart local v7       #extras:Landroid/os/Bundle;
    :cond_20
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->updateContact()V

    goto :goto_5

    .line 175
    :cond_24
    if-eq p2, v0, :cond_5

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    goto :goto_5

    .line 185
    .end local v7           #extras:Landroid/os/Bundle;
    :sswitch_2a
    if-ne p2, v0, :cond_5

    .line 189
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/EditFdnContactScreen;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 191
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_44

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 192
    :cond_44
    const-string v0, "PhoneApp"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 195
    :cond_4c
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 165
    nop

    :sswitch_data_62
    .sparse-switch
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_2a
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->resolveIntent()V

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 143
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->setContentView(I)V

    .line 144
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->setupView()V

    .line 145
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_2e

    const v0, 0x7f0e0134

    :goto_1f
    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->setTitle(I)V

    .line 148
    invoke-virtual {p0, v2}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 149
    iput-boolean v2, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    .line 151
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 153
    return-void

    .line 145
    :cond_2e
    const v0, 0x7f0e0137

    goto :goto_1f
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 211
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0e01b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020070

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    const/4 v1, 0x2

    const v2, 0x7f0e012f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 215
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 234
    :pswitch_d
    sget-object v1, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/16 v2, 0xc8

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/EditFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    .line 238
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->deleteSelected()V

    goto :goto_c

    .line 232
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_15
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 224
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    .end local v0           #result:Z
    :cond_9
    return v0
.end method

.method protected resolveIntent()V
    .registers 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    .line 249
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 251
    const-string v1, "efid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mEfid:Ljava/lang/String;

    .line 252
    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mIndex:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    :goto_35
    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    .line 258
    return-void

    .line 256
    :cond_38
    const/4 v1, 0x0

    goto :goto_35
.end method

.method protected showStatus(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "statusMsg"

    .prologue
    .line 439
    if-eqz p1, :cond_a

    .line 440
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 443
    :cond_a
    return-void
.end method

.method protected updateContact()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 353
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertAndStrip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 356
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V

    .line 386
    :goto_13
    return-void

    .line 360
    :cond_14
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mFDNHandler:Landroid/os/Handler;

    const/16 v3, 0x190

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 361
    .local v1, onComplete:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 362
    const-string v2, "GSM"

    const-string v3, "EditFdnContactsScreen:updateContact(): mPhone.getIccCard() ! = null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 384
    :cond_36
    invoke-virtual {p0, v4}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method
