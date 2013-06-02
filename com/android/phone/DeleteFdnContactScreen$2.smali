.class Lcom/android/phone/DeleteFdnContactScreen$2;
.super Landroid/os/Handler;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DeleteFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$2;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 260
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2e

    .line 275
    :goto_6
    return-void

    .line 262
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 263
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_21

    .line 264
    const-string v1, "PhoneApp"

    const-string v2, "PIN2 ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen$2;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v1, v3}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen$2;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->handleResult(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/DeleteFdnContactScreen;->access$000(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    goto :goto_6

    .line 269
    :cond_21
    const-string v1, "PhoneApp"

    const-string v2, "DELETE  FDN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen$2;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->deleteContactReq()V
    invoke-static {v1}, Lcom/android/phone/DeleteFdnContactScreen;->access$100(Lcom/android/phone/DeleteFdnContactScreen;)V

    goto :goto_6

    .line 260
    :pswitch_data_2e
    .packed-switch 0x12c
        :pswitch_7
    .end packed-switch
.end method
