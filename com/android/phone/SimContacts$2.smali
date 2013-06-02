.class Lcom/android/phone/SimContacts$2;
.super Ljava/lang/Object;
.source "SimContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimContacts;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/phone/SimContacts;IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    iput p2, p0, Lcom/android/phone/SimContacts$2;->val$resultCode:I

    iput p3, p0, Lcom/android/phone/SimContacts$2;->val$requestCode:I

    iput-object p4, p0, Lcom/android/phone/SimContacts$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 577
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 578
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v9}, Lcom/android/phone/SimContacts;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 579
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_16

    .line 580
    const-string v9, "SimContacts"

    const-string v10, "onActivityResult: uri is null, return!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_15
    return-void

    .line 583
    :cond_16
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 585
    .local v8, values:Landroid/content/ContentValues;
    iget v9, p0, Lcom/android/phone/SimContacts$2;->val$resultCode:I

    if-ne v9, v10, :cond_6a

    iget v9, p0, Lcom/android/phone/SimContacts$2;->val$requestCode:I

    if-ne v9, v11, :cond_6a

    .line 586
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->val$intent:Landroid/content/Intent;

    const-string v10, "NEWNAME"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->val$intent:Landroid/content/Intent;

    const-string v10, "NEWPHONE"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, number:Ljava/lang/String;
    const-string v9, "tag"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v9, "number"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v9}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 591
    .local v6, result:Landroid/net/Uri;
    if-eqz v6, :cond_5b

    .line 592
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    iget-object v10, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    const v11, 0x7f0e0450

    invoke-virtual {v10, v11}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/phone/SimContacts;->access$500(Lcom/android/phone/SimContacts;Ljava/lang/String;)V

    .line 612
    .end local v0           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v6           #result:Landroid/net/Uri;
    :cond_57
    :goto_57
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_15

    .line 594
    .restart local v0       #name:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    .restart local v6       #result:Landroid/net/Uri;
    :cond_5b
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    iget-object v10, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    const v11, 0x7f0e0451

    invoke-virtual {v10, v11}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/phone/SimContacts;->access$500(Lcom/android/phone/SimContacts;Ljava/lang/String;)V

    goto :goto_57

    .line 596
    .end local v0           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v6           #result:Landroid/net/Uri;
    :cond_6a
    iget v9, p0, Lcom/android/phone/SimContacts$2;->val$resultCode:I

    if-ne v9, v10, :cond_57

    iget v9, p0, Lcom/android/phone/SimContacts$2;->val$requestCode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_57

    .line 597
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->val$intent:Landroid/content/Intent;

    const-string v10, "NAME"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, oldName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->val$intent:Landroid/content/Intent;

    const-string v10, "PHONE"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, oldNumber:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->val$intent:Landroid/content/Intent;

    const-string v10, "NEWNAME"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, newName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->val$intent:Landroid/content/Intent;

    const-string v10, "NEWPHONE"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, newNumber:Ljava/lang/String;
    const-string v9, "tag"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v9, "number"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v9, "newTag"

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v9, "newNumber"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v9}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 606
    .local v6, result:I
    if-ne v6, v11, :cond_c2

    .line 607
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    iget-object v10, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    const v11, 0x7f0e0452

    invoke-virtual {v10, v11}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/phone/SimContacts;->access$500(Lcom/android/phone/SimContacts;Ljava/lang/String;)V

    goto :goto_57

    .line 609
    :cond_c2
    iget-object v9, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    iget-object v10, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    const v11, 0x7f0e0453

    invoke-virtual {v10, v11}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/phone/SimContacts;->access$500(Lcom/android/phone/SimContacts;Ljava/lang/String;)V

    goto :goto_57
.end method
