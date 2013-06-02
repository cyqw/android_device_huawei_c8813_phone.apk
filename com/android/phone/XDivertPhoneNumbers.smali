.class public Lcom/android/phone/XDivertPhoneNumbers;
.super Landroid/app/Activity;
.source "XDivertPhoneNumbers.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field mNumPhones:I

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mSub1Line1Number:Landroid/widget/EditText;

.field private mSub2Line1Number:Landroid/widget/EditText;

.field private mSubLine1Number:[Ljava/lang/String;

.field mXDivertUtility:Lcom/android/phone/XDivertUtility;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 155
    new-instance v0, Lcom/android/phone/XDivertPhoneNumbers$3;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertPhoneNumbers$3;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mClicked:Landroid/view/View$OnClickListener;

    .line 174
    new-instance v0, Lcom/android/phone/XDivertPhoneNumbers$4;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertPhoneNumbers$4;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/XDivertPhoneNumbers;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getSub1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/XDivertPhoneNumbers;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getSub2Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/XDivertPhoneNumbers;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->processXDivert()V

    return-void
.end method

.method private displayAlertDialog(I)V
    .registers 5
    .parameter "resId"

    .prologue
    .line 103
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e03e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/XDivertPhoneNumbers$2;

    invoke-direct {v2, p0}, Lcom/android/phone/XDivertPhoneNumbers$2;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/XDivertPhoneNumbers$1;

    invoke-direct {v1, p0}, Lcom/android/phone/XDivertPhoneNumbers$1;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 116
    return-void
.end method

.method private getSub1Number()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSub2Number()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processXDivert()V
    .registers 4

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    const-class v1, Lcom/android/phone/XDivertSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 150
    const-string v1, "Sub1_Line1Number"

    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getSub1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "Sub2_Line1Number"

    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getSub2Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertPhoneNumbers;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method private setupView()V
    .registers 4

    .prologue
    .line 119
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertPhoneNumbers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    .line 120
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    if-eqz v0, :cond_27

    .line 121
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_27
    const v0, 0x7f090101

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertPhoneNumbers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    .line 127
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    if-eqz v0, :cond_4e

    .line 128
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_4e
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertPhoneNumbers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_64

    .line 135
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_64
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 75
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    .line 76
    invoke-static {}, Lcom/android/phone/XDivertUtility;->getInstance()Lcom/android/phone/XDivertUtility;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    .line 77
    iget v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    iget v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    if-ge v0, v3, :cond_2a

    .line 79
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 81
    :cond_2a
    const v3, 0x7f040033

    invoke-virtual {p0, v3}, Lcom/android/phone/XDivertPhoneNumbers;->setContentView(I)V

    .line 85
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v3}, Lcom/android/phone/XDivertUtility;->checkImsiReady()Z

    move-result v2

    .line 86
    .local v2, isImsiReady:Z
    if-nez v2, :cond_3f

    .line 87
    const v3, 0x7f0e03f6

    invoke-direct {p0, v3}, Lcom/android/phone/XDivertPhoneNumbers;->displayAlertDialog(I)V

    .line 95
    :goto_3e
    return-void

    .line 92
    :cond_3f
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v3}, Lcom/android/phone/XDivertUtility;->getLineNumbers()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->setupView()V

    goto :goto_3e
.end method
