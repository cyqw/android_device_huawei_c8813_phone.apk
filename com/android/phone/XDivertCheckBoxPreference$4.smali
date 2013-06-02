.class Lcom/android/phone/XDivertCheckBoxPreference$4;
.super Landroid/os/Handler;
.source "XDivertCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/XDivertCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/XDivertCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/XDivertCheckBoxPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/phone/XDivertCheckBoxPreference$4;->this$0:Lcom/android/phone/XDivertCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 261
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 262
    .local v0, result:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1c

    .line 271
    :goto_9
    return-void

    .line 264
    :pswitch_a
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference$4;->this$0:Lcom/android/phone/XDivertCheckBoxPreference;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/XDivertCheckBoxPreference;->handleGetCFNRCResponse(Landroid/os/AsyncResult;I)V
    invoke-static {v1, v0, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->access$000(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V

    goto :goto_9

    .line 268
    :pswitch_12
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference$4;->this$0:Lcom/android/phone/XDivertCheckBoxPreference;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/phone/XDivertCheckBoxPreference;->handleGetCallWaitingResponse(Landroid/os/AsyncResult;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/phone/XDivertCheckBoxPreference;->access$100(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;II)V

    goto :goto_9

    .line 262
    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method
