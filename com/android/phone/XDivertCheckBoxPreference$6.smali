.class Lcom/android/phone/XDivertCheckBoxPreference$6;
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
    .line 302
    iput-object p1, p0, Lcom/android/phone/XDivertCheckBoxPreference$6;->this$0:Lcom/android/phone/XDivertCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 305
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 306
    .local v0, result:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_12

    .line 311
    :goto_9
    return-void

    .line 308
    :pswitch_a
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference$6;->this$0:Lcom/android/phone/XDivertCheckBoxPreference;

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertSetCFNRC(Landroid/os/AsyncResult;I)V
    invoke-static {v1, v0, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->access$400(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V

    goto :goto_9

    .line 306
    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_a
    .end packed-switch
.end method
