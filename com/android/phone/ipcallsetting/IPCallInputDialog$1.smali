.class Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;
.super Ljava/lang/Object;
.source "IPCallInputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ipcallsetting/IPCallInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "editable"

    .prologue
    .line 71
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "charsequence"
    .parameter "i"
    .parameter "j"
    .parameter "k"

    .prologue
    .line 75
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "s"
    .parameter "i"
    .parameter "j"
    .parameter "k"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, ipcall:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 81
    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    const v2, 0x7f0e0278

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    #getter for: Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$000(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    :goto_24
    return-void

    .line 86
    :cond_25
    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    #calls: Lcom/android/phone/ipcallsetting/IPCallInputDialog;->isIPNumExist(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$100(Lcom/android/phone/ipcallsetting/IPCallInputDialog;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 88
    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    const v2, 0x7f0e027e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 90
    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    #getter for: Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$000(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_24

    .line 92
    :cond_43
    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    #getter for: Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$000(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_24
.end method
