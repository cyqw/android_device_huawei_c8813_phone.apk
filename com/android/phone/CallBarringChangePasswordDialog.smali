.class public Lcom/android/phone/CallBarringChangePasswordDialog;
.super Landroid/app/AlertDialog;
.source "CallBarringChangePasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmPassword:Landroid/widget/EditText;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mNewPassword:Landroid/widget/EditText;

.field private mOldPassword:Landroid/widget/EditText;

.field private mSaveButton:Landroid/widget/Button;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mListener:Landroid/view/View$OnClickListener;

    .line 26
    return-void
.end method

.method private showPassword()V
    .registers 5

    .prologue
    const/16 v1, 0x90

    const/16 v2, 0x80

    .line 51
    iget-object v3, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    :goto_f
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 53
    iget-object v3, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    :goto_1f
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 55
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mConfirmPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_38

    :goto_2e
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 57
    return-void

    :cond_34
    move v0, v2

    .line 51
    goto :goto_f

    :cond_36
    move v0, v2

    .line 53
    goto :goto_1f

    :cond_38
    move v1, v2

    .line 55
    goto :goto_2e
.end method


# virtual methods
.method public cleanEnterPassword()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    .line 107
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_16

    .line 110
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_16
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mConfirmPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_21

    .line 113
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mConfirmPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_21
    return-void
.end method

.method public disableAllButton()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 91
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    .line 94
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    :cond_13
    return-void
.end method

.method public enableAllButton()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 81
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 82
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    .line 85
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    :cond_13
    return-void
.end method

.method public getConfirmPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOldPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCancelButton(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSaveButton(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/CallBarringChangePasswordDialog;->showPassword()V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/phone/CallBarringChangePasswordDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mView:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringChangePasswordDialog;->setView(Landroid/view/View;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringChangePasswordDialog;->setInverseBackgroundForced(Z)V

    .line 34
    const v0, 0x7f0e0429

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringChangePasswordDialog;->setTitle(I)V

    .line 37
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mView:Landroid/view/View;

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mShowPassword:Landroid/widget/CheckBox;

    .line 38
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mView:Landroid/view/View;

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mOldPassword:Landroid/widget/EditText;

    .line 39
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mView:Landroid/view/View;

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mNewPassword:Landroid/widget/EditText;

    .line 40
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mView:Landroid/view/View;

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mConfirmPassword:Landroid/widget/EditText;

    .line 41
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mView:Landroid/view/View;

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mSaveButton:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mView:Landroid/view/View;

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mCancelButton:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/CallBarringChangePasswordDialog;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/phone/CallBarringChangePasswordDialog;->cleanEnterPassword()V

    .line 61
    invoke-direct {p0}, Lcom/android/phone/CallBarringChangePasswordDialog;->showPassword()V

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/CallBarringChangePasswordDialog;->enableAllButton()V

    .line 64
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 65
    return-void
.end method
