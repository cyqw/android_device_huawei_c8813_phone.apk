.class Lcom/android/phone/SimContacts$4;
.super Landroid/os/Handler;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
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
    .line 681
    iput-object p1, p0, Lcom/android/phone/SimContacts$4;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 684
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30

    .line 694
    :goto_5
    return-void

    .line 686
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 687
    .local v0, result:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 688
    iget-object v1, p0, Lcom/android/phone/SimContacts$4;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, p0, Lcom/android/phone/SimContacts$4;->this$0:Lcom/android/phone/SimContacts;

    const v3, 0x7f0e0456

    invoke-virtual {v2, v3}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/SimContacts;->access$500(Lcom/android/phone/SimContacts;Ljava/lang/String;)V

    goto :goto_5

    .line 690
    :cond_20
    iget-object v1, p0, Lcom/android/phone/SimContacts$4;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, p0, Lcom/android/phone/SimContacts$4;->this$0:Lcom/android/phone/SimContacts;

    const v3, 0x7f0e0457

    invoke-virtual {v2, v3}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/SimContacts;->access$500(Lcom/android/phone/SimContacts;Ljava/lang/String;)V

    goto :goto_5

    .line 684
    nop

    :pswitch_data_30
    .packed-switch 0x9
        :pswitch_6
    .end packed-switch
.end method
