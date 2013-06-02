.class Lcom/android/phone/NotificationMgr$1;
.super Landroid/os/Handler;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .registers 2
    .parameter

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1532
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 1540
    :goto_5
    return-void

    .line 1534
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v1, "the phone is out of service more than 200s,show notification to user."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 1535
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$502(Z)Z

    .line 1536
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$602(Z)Z

    .line 1537
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->showDailog()V

    goto :goto_5

    .line 1532
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
