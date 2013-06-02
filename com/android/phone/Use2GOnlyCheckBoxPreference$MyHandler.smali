.class Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "Use2GOnlyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field public mClicked:Z

.field final synthetic this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 149
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 151
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_41

    .line 152
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v4

    .line 153
    .local v1, type:I
    if-eq v1, v3, :cond_15

    .line 155
    const/4 v1, 0x0

    .line 157
    :cond_15
    iget-object v5, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    if-ne v1, v3, :cond_3f

    move v2, v3

    :goto_1a
    invoke-virtual {v5, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setChecked(Z)V

    .line 159
    invoke-static {v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$202(Z)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 160
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    .line 163
    :cond_28
    invoke-static {}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$300()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "preferred_network_mode"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    .line 172
    .end local v1           #type:I
    :goto_3e
    return-void

    .restart local v1       #type:I
    :cond_3f
    move v2, v4

    .line 157
    goto :goto_1a

    .line 170
    .end local v1           #type:I
    :cond_41
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    goto :goto_3e
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 175
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 177
    .local v0, ar:Landroid/os/AsyncResult;
    iput-boolean v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->mClicked:Z

    .line 179
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1d

    .line 181
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v2, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    .line 183
    invoke-static {}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$300()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 194
    :goto_1c
    return-void

    .line 186
    :cond_1d
    invoke-static {}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$300()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    iget-object v5, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v5}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_34

    move v1, v2

    :cond_34
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    invoke-static {v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$202(Z)Z

    .line 191
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    goto :goto_1c
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 146
    :goto_5
    return-void

    .line 139
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 143
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 137
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
