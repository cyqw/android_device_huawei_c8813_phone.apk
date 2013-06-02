.class Lcom/android/phone/NetworkSetting$1;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 221
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_da

    .line 313
    :cond_7
    :goto_7
    return-void

    .line 224
    :sswitch_8
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 227
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 228
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z
    invoke-static {v5, v7}, Lcom/android/phone/NetworkSetting;->access$102(Lcom/android/phone/NetworkSetting;Z)Z

    goto :goto_7

    .line 231
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :sswitch_1b
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v6, "NetworkSetting, msg received, start to scan network..."

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 235
    :try_start_22
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-static {v6}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_31} :catch_d6

    .line 238
    :goto_31
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V
    invoke-static {v5, v8}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;Z)V

    goto :goto_7

    .line 242
    :sswitch_37
    iget-object v6, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget v7, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v6, v5, v7}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V

    goto :goto_7

    .line 248
    :sswitch_43
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 251
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v5}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 254
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v5, v5, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_7e

    .line 256
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V
    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)V

    .line 265
    :goto_66
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 266
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v5, "reset_to_automatic_mode"

    invoke-static {v3, v5, v8}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 267
    .local v2, isResetToAutomaticMode:I
    if-ne v2, v7, :cond_7

    .line 268
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic()V
    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)V

    goto :goto_7

    .line 260
    .end local v2           #isResetToAutomaticMode:I
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_7e
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 261
    .local v4, tempEX:Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v5, v4}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    goto :goto_66

    .line 280
    .end local v4           #tempEX:Ljava/lang/Throwable;
    :sswitch_89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 281
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    goto/16 :goto_7

    .line 292
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_93
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-boolean v5, v5, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v5, :cond_a0

    .line 293
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v6, 0x12c

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkSetting;->dismissDialog(I)V

    .line 295
    :cond_a0
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v5}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 297
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 298
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_ba

    .line 300
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v5, v6}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 303
    :cond_ba
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v5, v5, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_cf

    .line 304
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V
    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_7

    .line 306
    :cond_cf
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSearching()V
    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_7

    .line 236
    .end local v0           #ar:Landroid/os/AsyncResult;
    :catch_d6
    move-exception v5

    goto/16 :goto_31

    .line 221
    nop

    :sswitch_data_da
    .sparse-switch
        0x64 -> :sswitch_37
        0xc8 -> :sswitch_89
        0x12c -> :sswitch_93
        0x1f4 -> :sswitch_1b
        0x258 -> :sswitch_8
        0x3e8 -> :sswitch_43
    .end sparse-switch
.end method
