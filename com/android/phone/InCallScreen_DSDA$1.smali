.class Lcom/android/phone/InCallScreen_DSDA$1;
.super Landroid/os/Handler;
.source "InCallScreen_DSDA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen_DSDA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen_DSDA;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 2
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA$1;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$1;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mIsDestroyed:Z

    if-eqz v0, :cond_2b

    .line 356
    invoke-static {}, Lcom/android/phone/InCallScreen_DSDA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$1;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler: ignoring message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; we\'re destroyed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen_DSDA;->access$100(Lcom/android/phone/InCallScreen_DSDA;Ljava/lang/String;)V

    .line 414
    :cond_2a
    :goto_2a
    return-void

    .line 359
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$1;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    if-nez v0, :cond_55

    .line 360
    invoke-static {}, Lcom/android/phone/InCallScreen_DSDA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$1;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler: handling message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while not in foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen_DSDA;->access$100(Lcom/android/phone/InCallScreen_DSDA;Ljava/lang/String;)V

    .line 368
    :cond_55
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_a6

    .line 411
    const-string v0, "InCallScreen_DSDA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 383
    :sswitch_73
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$1;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto :goto_2a

    .line 391
    :sswitch_7c
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$1;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_2a

    .line 392
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$1;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto :goto_2a

    .line 397
    :sswitch_8e
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$1;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_2a

    .line 398
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$1;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto :goto_2a

    .line 403
    :sswitch_a0
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$1;->this$0:Lcom/android/phone/InCallScreen_DSDA;

    #calls: Lcom/android/phone/InCallScreen_DSDA;->updateScreen()V
    invoke-static {v0}, Lcom/android/phone/InCallScreen_DSDA;->access$200(Lcom/android/phone/InCallScreen_DSDA;)V

    goto :goto_2a

    .line 368
    :sswitch_data_a6
    .sparse-switch
        0x70 -> :sswitch_73
        0x76 -> :sswitch_7c
        0x77 -> :sswitch_8e
        0x7a -> :sswitch_a0
    .end sparse-switch
.end method
