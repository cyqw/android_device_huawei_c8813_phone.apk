.class Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;
.super Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;
.source "MSimPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSimPhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimPhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimPhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimPhoneApp;Lcom/android/phone/MSimPhoneApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 807
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/MSimPhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 810
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 812
    const-string v2, "subscription"

    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/MSimPhoneApp;->getDefaultSubscription()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 814
    const-string v4, "true"

    iget-object v5, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v5, v5, Lcom/android/phone/MSimPhoneApp;->ifNotOnlyUse2gAfterRestoreFactory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    sget v5, Lcom/android/phone/PhoneApp;->SUBSCRIPTION:I

    invoke-virtual {v4, v5}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v3, :cond_91

    .line 816
    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v4, v4, Lcom/android/phone/MSimPhoneApp;->sharePref:Landroid/content/SharedPreferences;

    const-string v5, "restore_factory_flag"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/phone/PhoneApp;->isJustRestoreFactory:Z

    .line 817
    const-string v4, "MSimPhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isJustRestoreFactory\' value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/phone/PhoneApp;->isJustRestoreFactory:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    sget-boolean v4, Lcom/android/phone/PhoneApp;->isJustRestoreFactory:Z

    if-eqz v4, :cond_91

    .line 820
    const-string v4, "MSimPhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set preferred network type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v4, v2}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v5, v5, Lcom/android/phone/MSimPhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 822
    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v4, v4, Lcom/android/phone/MSimPhoneApp;->sharePref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 823
    const-string v5, "restore_factory_flag"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 827
    :cond_91
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 833
    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 836
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_c1

    .line 837
    if-eqz v4, :cond_116

    move v0, v1

    .line 838
    :goto_a6
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_116

    .line 839
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v2, v0}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v4, :cond_bf

    move v2, v3

    :goto_b9
    invoke-interface {v5, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    :cond_bf
    move v2, v1

    .line 839
    goto :goto_b9

    :cond_c1
    move v0, v1

    .line 847
    :goto_c2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_116

    .line 848
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v2, v0}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v4, :cond_db

    move v2, v3

    :goto_d5
    invoke-interface {v5, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    :cond_db
    move v2, v1

    .line 848
    goto :goto_d5

    .line 853
    :cond_dd
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11e

    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v4, v4, Lcom/android/phone/MSimPhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    if-eqz v4, :cond_11e

    .line 859
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v0, v0, Lcom/android/phone/MSimPhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v4, v4, Lcom/android/phone/MSimPhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 861
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 863
    #calls: Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;
    invoke-static {v2}, Lcom/android/phone/MSimPhoneApp;->access$200(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    iput-boolean v3, v0, Lcom/android/phone/SinglePhone;->mIsSimPukLocked:Z

    .line 913
    :cond_116
    :goto_116
    return-void

    .line 865
    :cond_117
    #calls: Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;
    invoke-static {v2}, Lcom/android/phone/MSimPhoneApp;->access$200(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/phone/SinglePhone;->mIsSimPukLocked:Z

    goto :goto_116

    .line 867
    :cond_11e
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_131

    .line 868
    const-string v0, "phoneName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 869
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimPhoneApp;->initForNewRadioTechnology(I)V

    goto :goto_116

    .line 870
    :cond_131
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_169

    .line 871
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 873
    sput v2, Lcom/android/phone/PhoneApp;->sub:I

    .line 876
    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    #calls: Lcom/android/phone/MSimPhoneApp;->handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    invoke-static {v4, p2, v0}, Lcom/android/phone/MSimPhoneApp;->access$300(Lcom/android/phone/MSimPhoneApp;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    .line 878
    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    #calls: Lcom/android/phone/MSimPhoneApp;->setAutoTimeByNetworkType()V
    invoke-static {v4}, Lcom/android/phone/MSimPhoneApp;->access$400(Lcom/android/phone/MSimPhoneApp;)V

    .line 881
    iget-object v4, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v4, v4, Lcom/android/phone/MSimPhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 883
    const-string v5, "show_outofservice_notify"

    invoke-static {v4, v5, v1}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_116

    .line 885
    if-nez v2, :cond_116

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_116

    .line 887
    iget-object v1, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    #calls: Lcom/android/phone/MSimPhoneApp;->notifyNetworkChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    invoke-static {v1, p2, v0}, Lcom/android/phone/MSimPhoneApp;->access$500(Lcom/android/phone/MSimPhoneApp;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    goto :goto_116

    .line 891
    :cond_169
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b3

    .line 892
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 893
    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_195

    .line 895
    const-string v0, "phoneinECMState"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 896
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 897
    const-string v1, "subscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 898
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_116

    .line 903
    :cond_195
    const-string v1, "MSimPhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ACTION_EMERGENCY_CALLBACK_MODE_CHANGED, but ECM isn\'t supported for phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_116

    .line 906
    :cond_1b3
    const-string v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 907
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    #setter for: Lcom/android/phone/MSimPhoneApp;->mDefaultSubscription:I
    invoke-static {v0, v2}, Lcom/android/phone/MSimPhoneApp;->access$602(Lcom/android/phone/MSimPhoneApp;I)I

    .line 908
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimPhoneApp;->setDefaultPhone(I)V

    .line 909
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v0, v0, Lcom/android/phone/MSimPhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v1, v1, Lcom/android/phone/MSimPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->setPhone(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_116

    .line 911
    :cond_1d2
    invoke-super {p0, p1, p2}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_116
.end method
