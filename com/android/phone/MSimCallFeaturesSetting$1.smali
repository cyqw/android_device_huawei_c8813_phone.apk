.class Lcom/android/phone/MSimCallFeaturesSetting$1;
.super Landroid/os/Handler;
.source "MSimCallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimCallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimCallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 943
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSetting$1;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 946
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 947
    .local v0, result:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_16

    .line 953
    :goto_9
    return-void

    .line 950
    :pswitch_a
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting$1;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->what:I

    add-int/lit16 v3, v3, -0x208

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;II)V

    goto :goto_9

    .line 947
    :pswitch_data_16
    .packed-switch 0x208
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
