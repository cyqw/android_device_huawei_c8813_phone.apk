.class Lcom/android/phone/XDivertPhoneNumbers$3;
.super Ljava/lang/Object;
.source "XDivertPhoneNumbers.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/XDivertPhoneNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/XDivertPhoneNumbers;


# direct methods
.method constructor <init>(Lcom/android/phone/XDivertPhoneNumbers;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    #getter for: Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$000(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/EditText;

    move-result-object v1

    if-ne p1, v1, :cond_12

    .line 158
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    #getter for: Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$100(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 171
    :cond_11
    :goto_11
    return-void

    .line 159
    :cond_12
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    #getter for: Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$100(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/EditText;

    move-result-object v1

    if-ne p1, v1, :cond_24

    .line 160
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    #getter for: Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$200(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_11

    .line 161
    :cond_24
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    #getter for: Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$200(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_11

    .line 162
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    #calls: Lcom/android/phone/XDivertPhoneNumbers;->getSub1Number()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$300(Lcom/android/phone/XDivertPhoneNumbers;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    #calls: Lcom/android/phone/XDivertPhoneNumbers;->getSub2Number()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$400(Lcom/android/phone/XDivertPhoneNumbers;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_56

    .line 163
    :cond_44
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    invoke-virtual {v1}, Lcom/android/phone/XDivertPhoneNumbers;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e03f0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 166
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_11

    .line 168
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_56
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    #calls: Lcom/android/phone/XDivertPhoneNumbers;->processXDivert()V
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$500(Lcom/android/phone/XDivertPhoneNumbers;)V

    goto :goto_11
.end method
