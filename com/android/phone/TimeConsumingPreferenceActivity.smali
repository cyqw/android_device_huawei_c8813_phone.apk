.class public Lcom/android/phone/TimeConsumingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/phone/TimeConsumingPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TimeConsumingPreferenceActivity$1;,
        Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;,
        Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final mBusyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDismiss:Landroid/content/DialogInterface$OnClickListener;

.field private final mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

.field protected mIsForeground:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->DBG:Z

    .line 45
    new-instance v0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    new-instance v0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    .line 64
    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    return-void
.end method

.method private dismissDialogSafely(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 233
    :goto_3
    return-void

    .line 228
    :catch_4
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->finish()V

    .line 223
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 155
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const v6, 0x7f0e0085

    .line 68
    const/16 v5, 0x64

    if-eq p1, v5, :cond_d

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_44

    .line 69
    :cond_d
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 70
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0e007c

    invoke-virtual {p0, v5}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 73
    sparse-switch p1, :sswitch_data_ca

    move-object v1, v4

    .line 148
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_24
    return-object v1

    .line 76
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_25
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 78
    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 79
    const v4, 0x7f0e007e

    invoke-virtual {p0, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 82
    :sswitch_36
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 83
    const v4, 0x7f0e007f

    invoke-virtual {p0, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 90
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_44
    const/16 v5, 0x190

    if-eq p1, v5, :cond_60

    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_60

    const/16 v5, 0x12c

    if-eq p1, v5, :cond_60

    const/16 v5, 0x258

    if-eq p1, v5, :cond_60

    const/16 v5, 0x2bc

    if-eq p1, v5, :cond_60

    const/16 v5, 0x320

    if-eq p1, v5, :cond_60

    const/16 v5, 0x384

    if-ne p1, v5, :cond_c7

    .line 94
    :cond_60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e007d

    .line 99
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_d4

    .line 132
    const v2, 0x7f0e0082

    .line 134
    .local v2, msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    :goto_73
    invoke-virtual {p0, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 144
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_24

    .line 101
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_91
    const v2, 0x7f0e0081

    .line 102
    .restart local v2       #msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_73

    .line 105
    .end local v2           #msgId:I
    :sswitch_9a
    const v2, 0x7f0e0084

    .line 107
    .restart local v2       #msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_73

    .line 110
    .end local v2           #msgId:I
    :sswitch_a3
    const v2, 0x7f0e0444

    .line 111
    .restart local v2       #msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_73

    .line 115
    .end local v2           #msgId:I
    :sswitch_ac
    const v2, 0x7f0e0441

    .line 117
    .restart local v2       #msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_73

    .line 120
    .end local v2           #msgId:I
    :sswitch_b5
    const v2, 0x7f0e0442

    .line 122
    .restart local v2       #msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_73

    .line 125
    .end local v2           #msgId:I
    :sswitch_be
    const v2, 0x7f0e0443

    .line 127
    .restart local v2       #msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_73

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_c7
    move-object v1, v4

    .line 148
    goto/16 :goto_24

    .line 73
    :sswitch_data_ca
    .sparse-switch
        0x64 -> :sswitch_25
        0xc8 -> :sswitch_36
    .end sparse-switch

    .line 99
    :sswitch_data_d4
    .sparse-switch
        0x190 -> :sswitch_91
        0x1f4 -> :sswitch_9a
        0x258 -> :sswitch_a3
        0x2bc -> :sswitch_ac
        0x320 -> :sswitch_b5
        0x384 -> :sswitch_be
    .end sparse-switch
.end method

.method public onError(Landroid/preference/Preference;I)V
    .registers 4
    .parameter "preference"
    .parameter "error"

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-eqz v0, :cond_7

    .line 204
    invoke-virtual {p0, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 206
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 207
    return-void
.end method

.method public onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V
    .registers 5
    .parameter "preference"
    .parameter "exception"

    .prologue
    .line 211
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_e

    .line 212
    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 217
    :goto_d
    return-void

    .line 214
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    goto :goto_d
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .registers 5
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 190
    if-eqz p2, :cond_1d

    .line 191
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    .line 196
    :cond_18
    :goto_18
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 197
    return-void

    .line 193
    :cond_1d
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    goto :goto_18
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 167
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 161
    return-void
.end method

.method public onStarted(Landroid/preference/Preference;Z)V
    .registers 5
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-eqz v0, :cond_14

    .line 175
    if-eqz p2, :cond_15

    .line 176
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 182
    :cond_14
    :goto_14
    return-void

    .line 178
    :cond_15
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    goto :goto_14
.end method
