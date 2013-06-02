.class Lcom/android/phone/PhoneApp$SetAudioHandler;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetAudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 2803
    iput-object p1, p0, Lcom/android/phone/PhoneApp$SetAudioHandler;->this$0:Lcom/android/phone/PhoneApp;

    .line 2804
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2805
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 2808
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 2813
    :goto_5
    return-void

    .line 2810
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/PhoneApp$SetAudioHandler;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mSavedCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->setAudioMode()V

    goto :goto_5

    .line 2808
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
