.class Lcom/android/phone/EditPhoneNumberPreference$1;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPhoneNumberPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 222
    :try_start_8
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/EditPhoneNumberPreference;->access$100(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I
    invoke-static {v3}, Lcom/android/phone/EditPhoneNumberPreference;->access$200(Lcom/android/phone/EditPhoneNumberPreference;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 228
    :cond_1d
    :goto_1d
    return-void

    .line 223
    :catch_1e
    move-exception v0

    .line 224
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "EditPhoneNumberPreference"

    const-string v2, "Activity Start Failed, do nothing and let user try again!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
