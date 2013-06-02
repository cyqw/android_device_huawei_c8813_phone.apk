.class public Lcom/android/phone/CallBarringEnterPasswordDialog;
.super Landroid/app/AlertDialog;
.source "CallBarringEnterPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mOkButton:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mListener:Landroid/view/View$OnClickListener;

    .line 24
    return-void
.end method

.method private cleanEnterPassword()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    .line 87
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_b
    return-void
.end method

.method private showPassword()V
    .registers 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x90

    :goto_c
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 84
    return-void

    .line 82
    :cond_12
    const/16 v0, 0x80

    goto :goto_c
.end method


# virtual methods
.method public disableAllButton()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 66
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    .line 69
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    :cond_13
    return-void
.end method

.method public enableAllButton()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 75
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    .line 78
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    :cond_13
    return-void
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 46
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isCancelButton(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isOkButton(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mOkButton:Landroid/widget/Button;

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
    .line 100
    invoke-direct {p0}, Lcom/android/phone/CallBarringEnterPasswordDialog;->showPassword()V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/phone/CallBarringEnterPasswordDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mView:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringEnterPasswordDialog;->setView(Landroid/view/View;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringEnterPasswordDialog;->setInverseBackgroundForced(Z)V

    .line 31
    const v0, 0x7f0e0434

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringEnterPasswordDialog;->setTitle(I)V

    .line 32
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mView:Landroid/view/View;

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mShowPassword:Landroid/widget/CheckBox;

    .line 33
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mView:Landroid/view/View;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mPassword:Landroid/widget/EditText;

    .line 34
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mView:Landroid/view/View;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mOkButton:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mView:Landroid/view/View;

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mCancelButton:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/CallBarringEnterPasswordDialog;->cleanEnterPassword()V

    .line 93
    invoke-direct {p0}, Lcom/android/phone/CallBarringEnterPasswordDialog;->showPassword()V

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/CallBarringEnterPasswordDialog;->enableAllButton()V

    .line 96
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 97
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 3
    .parameter "password"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/CallBarringEnterPasswordDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
