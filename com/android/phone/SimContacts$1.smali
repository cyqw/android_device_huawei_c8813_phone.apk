.class Lcom/android/phone/SimContacts$1;
.super Ljava/lang/Object;
.source "SimContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimContacts;->deleteOneSimContact(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method constructor <init>(Lcom/android/phone/SimContacts;)V
    .registers 2
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 517
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 518
    iget-object v1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    sget-object v2, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    #calls: Lcom/android/phone/SimContacts;->actuallyDeleteOneSimContact(Landroid/database/Cursor;)I
    invoke-static {v1, v2}, Lcom/android/phone/SimContacts;->access$300(Lcom/android/phone/SimContacts;Landroid/database/Cursor;)I

    move-result v0

    .line 519
    .local v0, result:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 520
    iget-object v1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    const v3, 0x7f0e0454

    invoke-virtual {v2, v3}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/SimContacts;->access$500(Lcom/android/phone/SimContacts;Ljava/lang/String;)V

    .line 524
    :goto_1c
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 525
    return-void

    .line 522
    :cond_20
    iget-object v1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    const v3, 0x7f0e0455

    invoke-virtual {v2, v3}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/SimContacts;->access$500(Lcom/android/phone/SimContacts;Ljava/lang/String;)V

    goto :goto_1c
.end method
