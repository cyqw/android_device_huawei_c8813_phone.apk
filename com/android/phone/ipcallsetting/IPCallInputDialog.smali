.class public Lcom/android/phone/ipcallsetting/IPCallInputDialog;
.super Landroid/app/Activity;
.source "IPCallInputDialog.java"


# instance fields
.field private cancel_onClickListener:Landroid/view/View$OnClickListener;

.field private mBtn_ok:Landroid/widget/Button;

.field private mEditText:Landroid/widget/EditText;

.field private mHintContentText:Landroid/widget/TextView;

.field private mHintInput:Landroid/widget/TextView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPickByIntent:Z

.field private mSubscription:I

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private ok_onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintInput:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    .line 60
    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintContentText:Landroid/widget/TextView;

    .line 61
    iput-boolean v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPickByIntent:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPhoneNumber:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    .line 69
    new-instance v0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;-><init>(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)V

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 98
    new-instance v0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog$2;-><init>(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)V

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->cancel_onClickListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;

    invoke-direct {v0, p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;-><init>(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)V

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->ok_onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/ipcallsetting/IPCallInputDialog;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->isIPNumExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPickByIntent:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintContentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ipcallsetting/IPCallInputDialog;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->showSoftInputFromWindow(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/ipcallsetting/IPCallInputDialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->dialNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dialNumber(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "ipNumber"
    .parameter "phoneNumber"

    .prologue
    .line 367
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 390
    :cond_4
    :goto_4
    return-void

    .line 373
    :cond_5
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 376
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 378
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 379
    invoke-direct {p0, p2}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 381
    :cond_19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 385
    const-string v1, "android.intent.extra.PHONE_LOGNUMBER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "phoneNumber"

    .prologue
    .line 398
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 400
    const-string v0, "+86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 402
    const-string v0, "+86"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 410
    :cond_1a
    :goto_1a
    return-object p1

    .line 405
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1a
.end method

.method private initOtherUi()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e027c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, content_ok_button:Ljava/lang/String;
    const v2, 0x7f0900b6

    invoke-virtual {p0, v2}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;

    .line 292
    iget-boolean v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPickByIntent:Z

    if-eqz v2, :cond_53

    .line 293
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0280

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintInput:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 296
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintContentText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    :goto_38
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->ok_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    const v2, 0x7f0900b7

    invoke-virtual {p0, v2}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 309
    .local v0, btn_cancel:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->cancel_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    return-void

    .line 298
    .end local v0           #btn_cancel:Landroid/widget/Button;
    :cond_53
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintContentText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 301
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->showSoftInputFromWindow(Z)V

    .line 302
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_38
.end method

.method private isIPNumExist(Ljava/lang/String;)Z
    .registers 11
    .parameter "ipcall"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 318
    const/4 v7, 0x0

    .line 324
    .local v7, isExist:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 326
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    if-nez v1, :cond_2f

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    :goto_14
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_data = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 333
    .local v6, cursor:Landroid/database/Cursor;
    :goto_20
    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 334
    const/4 v7, 0x1

    .line 337
    :cond_29
    if-eqz v6, :cond_2e

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_2e
    return v7

    .line 326
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2f
    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    goto :goto_14

    .line 330
    :cond_32
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_data = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_20
.end method

.method private showSoftInputFromWindow(Z)V
    .registers 6
    .parameter "show"

    .prologue
    const/4 v3, 0x0

    .line 349
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 351
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_19

    .line 352
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 354
    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 359
    :goto_18
    return-void

    .line 356
    :cond_19
    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_18
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    sget-boolean v0, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-nez v0, :cond_f

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->finish()V

    .line 284
    :cond_e
    :goto_e
    return-void

    .line 201
    :cond_f
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 202
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "pickByIntent"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPickByIntent:Z

    .line 205
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 207
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    .line 210
    :cond_2d
    iget-boolean v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPickByIntent:Z

    if-eqz v0, :cond_ff

    .line 211
    const-string v0, "phoneNumber"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPhoneNumber:Ljava/lang/String;

    .line 213
    const-string v9, ""

    .line 219
    .local v9, ipNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    if-nez v1, :cond_bf

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_CURRENT_URI:Landroid/net/Uri;

    :goto_4b
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 228
    .local v6, cursor:Landroid/database/Cursor;
    :goto_53
    if-eqz v6, :cond_68

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_68

    .line 229
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 234
    :cond_68
    if-eqz v6, :cond_6d

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_6d
    const/4 v10, 0x0

    .line 240
    .local v10, totalCount:I
    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 244
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 246
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    if-nez v1, :cond_d1

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    :goto_86
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 254
    :goto_8e
    if-eqz v6, :cond_97

    .line 255
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_97
    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 261
    const-string v7, ""

    .line 262
    .local v7, disableIpNumber:Ljava/lang/String;
    const v0, 0x7f0e0466

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 263
    const-string v0, ""

    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->dialNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v12, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->setResult(ILandroid/content/Intent;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->finish()V

    goto/16 :goto_e

    .line 221
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #disableIpNumber:Ljava/lang/String;
    .end local v10           #totalCount:I
    :cond_bf
    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_CURRENT_URI:Landroid/net/Uri;

    goto :goto_4b

    .line 225
    :cond_c2
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_CURRENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_53

    .line 246
    .restart local v10       #totalCount:I
    :cond_d1
    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    goto :goto_86

    .line 250
    :cond_d4
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_8e

    .line 267
    :cond_e3
    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    if-le v10, v11, :cond_e

    .line 269
    :cond_ed
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v9, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->dialNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v12, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->setResult(ILandroid/content/Intent;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->finish()V

    goto/16 :goto_e

    .line 275
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #ipNumber:Ljava/lang/String;
    .end local v10           #totalCount:I
    :cond_ff
    invoke-virtual {p0, v11}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->requestWindowFeature(I)Z

    .line 276
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->setContentView(I)V

    .line 277
    const v0, 0x7f0900b3

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintInput:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f0900b5

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    .line 279
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintContentText:Landroid/widget/TextView;

    .line 281
    invoke-direct {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->initOtherUi()V

    goto/16 :goto_e
.end method
