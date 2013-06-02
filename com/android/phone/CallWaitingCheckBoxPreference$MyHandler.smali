.class Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallWaitingCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallWaitingCheckBoxPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallWaitingCheckBoxPreference;Lcom/android/phone/CallWaitingCheckBoxPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingCheckBoxPreference;)V

    return-void
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 86
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v3, :cond_19

    .line 87
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_3f

    .line 88
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v6, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-interface {v3, v6, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 94
    :cond_19
    :goto_19
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4b

    .line 98
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v3, :cond_3e

    .line 100
    iget-object v6, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_49

    move v3, v4

    :goto_2e
    invoke-virtual {v6, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setChecked(Z)V

    .line 102
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v4, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v4, v5, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 125
    :cond_3e
    :goto_3e
    return-void

    .line 90
    :cond_3f
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v6, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-interface {v3, v6, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_19

    :cond_49
    move v3, v5

    .line 100
    goto :goto_2e

    .line 105
    :cond_4b
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_72

    .line 107
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v6, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v6}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_70

    :goto_5b
    invoke-virtual {v3, v4}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setChecked(Z)V

    .line 109
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const/16 v5, 0x190

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_3e

    :cond_70
    move v4, v5

    .line 107
    goto :goto_5b

    .line 114
    :cond_72
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 119
    .local v1, cwArray:[I
    :try_start_79
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const/4 v6, 0x0

    aget v6, v1, v6

    if-ne v6, v4, :cond_a9

    const/4 v6, 0x1

    aget v6, v1, v6

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_a9

    :goto_87
    invoke-virtual {v3, v4}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setChecked(Z)V
    :try_end_8a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_79 .. :try_end_8a} :catch_8b

    goto :goto_3e

    .line 120
    :catch_8b
    move-exception v2

    .line 121
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "CallWaitingCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCallWaitingResponse: improper result: err ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_a9
    move v4, v5

    .line 119
    goto :goto_87
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 130
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_f

    .line 137
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setChecked(Z)V

    .line 142
    :cond_f
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v4, v4, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 144
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 81
    :goto_5
    return-void

    .line 75
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 78
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 73
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
