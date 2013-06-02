.class Lcom/android/phone/CLIRListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CLIRListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CLIRListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CLIRListPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CLIRListPreference;Lcom/android/phone/CLIRListPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference;)V

    return-void
.end method

.method private handleGetCLIRResponse(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/16 v5, 0x190

    const/4 v4, 0x1

    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 138
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v4, :cond_2c

    .line 139
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v2, v2, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 143
    :goto_15
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 144
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_36

    .line 146
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v2, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 162
    :goto_2b
    return-void

    .line 141
    :cond_2c
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v2, v2, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v2, v3, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_15

    .line 147
    :cond_36
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_46

    .line 148
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v2, v2, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v2, v3, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_2b

    .line 150
    :cond_46
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 151
    .local v1, clirArray:[I
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5b

    .line 152
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v2, v2, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v2, v3, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_2b

    .line 159
    :cond_5b
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v2, v1}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_2b
.end method

.method private handleSetCLIRResponse(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 165
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 167
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    .line 173
    :cond_9
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 175
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 133
    :goto_5
    return-void

    .line 127
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;->handleGetCLIRResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 130
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;->handleSetCLIRResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 125
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
