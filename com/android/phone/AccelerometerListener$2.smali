.class Lcom/android/phone/AccelerometerListener$2;
.super Landroid/os/Handler;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AccelerometerListener;


# direct methods
.method constructor <init>(Lcom/android/phone/AccelerometerListener;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 151
    :goto_5
    return-void

    .line 145
    :pswitch_6
    monitor-enter p0

    .line 146
    :try_start_7
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    iget-object v1, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    #getter for: Lcom/android/phone/AccelerometerListener;->mPendingOrientation:I
    invoke-static {v1}, Lcom/android/phone/AccelerometerListener;->access$200(Lcom/android/phone/AccelerometerListener;)I

    move-result v1

    #setter for: Lcom/android/phone/AccelerometerListener;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/phone/AccelerometerListener;->access$102(Lcom/android/phone/AccelerometerListener;I)I

    .line 147
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    #getter for: Lcom/android/phone/AccelerometerListener;->mListener:Lcom/android/phone/AccelerometerListener$OrientationListener;
    invoke-static {v0}, Lcom/android/phone/AccelerometerListener;->access$300(Lcom/android/phone/AccelerometerListener;)Lcom/android/phone/AccelerometerListener$OrientationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    #getter for: Lcom/android/phone/AccelerometerListener;->mOrientation:I
    invoke-static {v1}, Lcom/android/phone/AccelerometerListener;->access$100(Lcom/android/phone/AccelerometerListener;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/phone/AccelerometerListener$OrientationListener;->orientationChanged(I)V

    .line 148
    monitor-exit p0

    goto :goto_5

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0

    .line 143
    :pswitch_data_26
    .packed-switch 0x4d2
        :pswitch_6
    .end packed-switch
.end method
