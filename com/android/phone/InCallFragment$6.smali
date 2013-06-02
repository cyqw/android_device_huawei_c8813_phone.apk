.class Lcom/android/phone/InCallFragment$6;
.super Landroid/os/Handler;
.source "InCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1930
    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/phone/InCallScreen_DSDA;->mIsDestroyed:Z

    if-eqz v9, :cond_17

    .line 2177
    :cond_16
    :goto_16
    :sswitch_16
    return-void

    .line 1935
    :cond_17
    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    if-nez v9, :cond_21

    .line 1944
    :cond_21
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_264

    goto :goto_16

    .line 2172
    :sswitch_27
    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v10, :cond_2e

    move v7, v8

    :cond_2e
    #calls: Lcom/android/phone/InCallFragment;->updateInCallTouchUiButtons(Z)V
    invoke-static {v9, v7}, Lcom/android/phone/InCallFragment;->access$2100(Lcom/android/phone/InCallFragment;Z)V

    goto :goto_16

    .line 1946
    :sswitch_32
    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {v8, v7}, Lcom/android/phone/InCallFragment;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_16

    .line 1950
    :sswitch_3c
    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallFragment;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v8, v7}, Lcom/android/phone/InCallFragment;->access$700(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V

    goto :goto_16

    .line 1954
    :sswitch_46
    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallFragment;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v8, v7}, Lcom/android/phone/InCallFragment;->access$800(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V

    goto :goto_16

    .line 1958
    :sswitch_50
    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget v9, p1, Landroid/os/Message;->arg1:I

    int-to-char v9, v9

    #calls: Lcom/android/phone/InCallFragment;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v8, v7, v9}, Lcom/android/phone/InCallFragment;->access$900(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;C)V

    goto :goto_16

    .line 1962
    :sswitch_5d
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #calls: Lcom/android/phone/InCallFragment;->addVoiceMailNumberPanel()V
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$1000(Lcom/android/phone/InCallFragment;)V

    goto :goto_16

    .line 1966
    :sswitch_63
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #calls: Lcom/android/phone/InCallFragment;->dontAddVoiceMailNumber()V
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$1100(Lcom/android/phone/InCallFragment;)V

    goto :goto_16

    .line 1970
    :sswitch_69
    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9, v7, v8}, Lcom/android/phone/InCallFragment;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_16

    .line 1974
    :sswitch_73
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$1200(Lcom/android/phone/InCallFragment;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 1976
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$1200(Lcom/android/phone/InCallFragment;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 1977
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #setter for: Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v10}, Lcom/android/phone/InCallFragment;->access$1202(Lcom/android/phone/InCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_16

    .line 1982
    :sswitch_8a
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v7}, Lcom/android/phone/InCallFragment;->updateScreen()V

    goto :goto_16

    .line 1992
    :sswitch_90
    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallFragment;->onNewRingingConnection(Landroid/os/AsyncResult;)V
    invoke-static {v8, v7}, Lcom/android/phone/InCallFragment;->access$1300(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V

    goto/16 :goto_16

    .line 1998
    :sswitch_9b
    sget-boolean v7, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    if-eqz v7, :cond_16

    .line 1999
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #calls: Lcom/android/phone/InCallFragment;->reStartTone()V
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$1400(Lcom/android/phone/InCallFragment;)V

    goto/16 :goto_16

    .line 2005
    :sswitch_a6
    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v8}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v7, v8, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    .line 2006
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #calls: Lcom/android/phone/InCallFragment;->updateProviderOverlay()V
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$1500(Lcom/android/phone/InCallFragment;)V

    goto/16 :goto_16

    .line 2018
    :sswitch_b7
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v7}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 2026
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$1600(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallTouchUi_DSDA;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/InCallTouchUi_DSDA;->refreshAudioModePopup()V

    goto/16 :goto_16

    .line 2035
    :sswitch_c7
    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v9

    if-nez v9, :cond_16

    .line 2042
    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mHwVibrate:Z
    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$1700(Lcom/android/phone/InCallFragment;)Z

    move-result v9

    if-eqz v9, :cond_e2

    .line 2043
    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$1800(Lcom/android/phone/InCallFragment;)Landroid/os/SystemVibrator;

    move-result-object v9

    const-wide/16 v10, 0x1e

    invoke-virtual {v9, v10, v11}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 2046
    :cond_e2
    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/phone/PhoneApp;->setCDMACallReallyConnected(Z)V

    .line 2053
    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;
    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$2000(Lcom/android/phone/InCallFragment;)Lcom/android/phone/CallCard_DSDA;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/InCallFragment;->access$1900(Lcom/android/phone/InCallFragment;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v11}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/phone/CallCard_DSDA;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 2055
    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v10}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/phone/InCallScreen_DSDA;->refreshRejectCallHint(I)V

    .line 2059
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v9

    iget-object v10, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v10}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v10

    if-eq v9, v10, :cond_17a

    .line 2060
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v10}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    .line 2061
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 2063
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v2

    .line 2064
    .local v2, fragment:Lcom/android/phone/InCallFragment;
    if-eqz v2, :cond_170

    .line 2065
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/phone/InCallScreen_DSDA;->getMatchingTabToaFragment(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    move-result-object v6

    .line 2066
    .local v6, tab:Landroid/app/ActionBar$Tab;
    if-eqz v6, :cond_170

    .line 2068
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 2071
    .end local v6           #tab:Landroid/app/ActionBar$Tab;
    :cond_170
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #calls: Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$200(Lcom/android/phone/InCallFragment;)V

    .line 2072
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #calls: Lcom/android/phone/InCallFragment;->updateInCallTouchUiButtons(Z)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallFragment;->access$2100(Lcom/android/phone/InCallFragment;Z)V

    .line 2075
    .end local v2           #fragment:Lcom/android/phone/InCallFragment;
    :cond_17a
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen_DSDA;->refreshTabs()V

    .line 2077
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$2200(Lcom/android/phone/InCallFragment;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v12, :cond_16

    .line 2078
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v7}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_16

    .line 2084
    :sswitch_19c
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    const-string v8, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallFragment;->access$500(Lcom/android/phone/InCallFragment;Ljava/lang/String;)V

    .line 2090
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v7}, Lcom/android/phone/InCallFragment;->updateScreen()V

    goto/16 :goto_16

    .line 2098
    :sswitch_1aa
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v7

    if-eqz v7, :cond_1b9

    .line 2100
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #calls: Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$200(Lcom/android/phone/InCallFragment;)V

    goto/16 :goto_16

    .line 2106
    :cond_1b9
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$1900(Lcom/android/phone/InCallFragment;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v8}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2112
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_16

    .line 2118
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v8}, Lcom/android/phone/InCallFragment;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallScreen_DSDA;->getMatchingTabToaFragment(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    move-result-object v6

    .line 2120
    .restart local v6       #tab:Landroid/app/ActionBar$Tab;
    if-eqz v6, :cond_1ee

    .line 2121
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 2124
    :cond_1ee
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v7}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 2125
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_16

    .line 2132
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    .end local v6           #tab:Landroid/app/ActionBar$Tab;
    :sswitch_1fe
    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {v8, v7}, Lcom/android/phone/InCallFragment;->onMMIInitiate(Landroid/os/AsyncResult;)V

    goto/16 :goto_16

    .line 2136
    :sswitch_209
    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/Phone;

    #calls: Lcom/android/phone/InCallFragment;->onMMICancel(Lcom/android/internal/telephony/Phone;)V
    invoke-static {v8, v7}, Lcom/android/phone/InCallFragment;->access$2300(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_16

    .line 2149
    :sswitch_214
    :try_start_214
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget-object v3, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/MmiCode;

    .line 2150
    .local v3, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-static {v3}, Lcom/huawei/internal/telephony/MmiCodeEx;->getPhone(Lcom/android/internal/telephony/MmiCode;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 2152
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2153
    .local v5, phoneType:I
    if-ne v5, v12, :cond_23f

    .line 2154
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v7, v3, v8, v9}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    :try_end_233
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_214 .. :try_end_233} :catch_235

    goto/16 :goto_16

    .line 2161
    .end local v3           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    .end local v5           #phoneType:I
    :catch_235
    move-exception v1

    .line 2162
    .local v1, e:Lcom/huawei/android/util/NoExtAPIException;
    const-string v7, "InCallFragment"

    const-string v8, "InCallFragment->MMI_COMPLETE->NoExtAPIException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 2155
    .end local v1           #e:Lcom/huawei/android/util/NoExtAPIException;
    .restart local v3       #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .restart local v4       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v5       #phoneType:I
    :cond_23f
    if-ne v5, v8, :cond_16

    .line 2156
    :try_start_241
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v7, v8, :cond_16

    .line 2158
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$2400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallFragment$InCallFragmentListener;

    move-result-object v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;
    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$2400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallFragment$InCallFragmentListener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v8}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V
    :try_end_261
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_241 .. :try_end_261} :catch_235

    goto/16 :goto_16

    .line 1944
    nop

    :sswitch_data_264
    .sparse-switch
        0xb -> :sswitch_27
        0x33 -> :sswitch_1fe
        0x34 -> :sswitch_214
        0x35 -> :sswitch_209
        0x65 -> :sswitch_3c
        0x66 -> :sswitch_46
        0x67 -> :sswitch_b7
        0x68 -> :sswitch_50
        0x6a -> :sswitch_5d
        0x6b -> :sswitch_63
        0x6c -> :sswitch_69
        0x6e -> :sswitch_32
        0x72 -> :sswitch_19c
        0x73 -> :sswitch_1aa
        0x78 -> :sswitch_73
        0x79 -> :sswitch_a6
        0x7a -> :sswitch_8a
        0x7b -> :sswitch_16
        0x7c -> :sswitch_90
        0x7d -> :sswitch_c7
        0x3e9 -> :sswitch_9b
    .end sparse-switch
.end method
