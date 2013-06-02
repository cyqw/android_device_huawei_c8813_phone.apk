.class final Lcom/android/phone/PhoneUtils$5;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inputText:Landroid/widget/EditText;

.field final synthetic val$newDialog:Landroid/app/AlertDialog;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2295
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$5;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$5;->val$inputText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/PhoneUtils$5;->val$newDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2297
    sparse-switch p2, :sswitch_data_22

    .line 2306
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2300
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1f

    .line 2301
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$5;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneUtils$5;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 2302
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$5;->val$newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2304
    :cond_1f
    const/4 v0, 0x1

    goto :goto_4

    .line 2297
    nop

    :sswitch_data_22
    .sparse-switch
        0x5 -> :sswitch_5
        0x42 -> :sswitch_5
    .end sparse-switch
.end method
