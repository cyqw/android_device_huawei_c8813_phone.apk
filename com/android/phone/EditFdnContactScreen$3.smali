.class Lcom/android/phone/EditFdnContactScreen$3;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 504
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 524
    :cond_d
    :goto_d
    return-void

    .line 508
    :cond_e
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1c

    .line 509
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_d

    .line 510
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-ne p1, v0, :cond_2c

    .line 511
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_d

    .line 512
    :cond_2c
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 516
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$200(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 521
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$3;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->authenticatePin2()V
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)V

    goto :goto_d
.end method
