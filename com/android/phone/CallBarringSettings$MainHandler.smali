.class Lcom/android/phone/CallBarringSettings$MainHandler;
.super Landroid/os/Handler;
.source "CallBarringSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallBarringSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallBarringSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/phone/CallBarringSettings$MainHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallBarringSettings;Lcom/android/phone/CallBarringSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringSettings$MainHandler;-><init>(Lcom/android/phone/CallBarringSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 381
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 387
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings$MainHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainHandler default msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 390
    :goto_1f
    return-void

    .line 383
    :pswitch_20
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings$MainHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v1, ""

    #calls: Lcom/android/phone/CallBarringSettings;->dismissProgressDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallBarringSettings;->access$2000(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/phone/CallBarringSettings$MainHandler;->this$0:Lcom/android/phone/CallBarringSettings;

    const-string v1, "MainHandler CB_OPERATION_TIME_OUT"

    #calls: Lcom/android/phone/CallBarringSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallBarringSettings;->access$300(Lcom/android/phone/CallBarringSettings;Ljava/lang/String;)V

    goto :goto_1f

    .line 381
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method
