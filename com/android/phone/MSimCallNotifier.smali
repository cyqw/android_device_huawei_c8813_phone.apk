.class public Lcom/android/phone/MSimCallNotifier;
.super Lcom/android/phone/CallNotifier;
.source "MSimCallNotifier.java"


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MSimCallNotifier;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .registers 6
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimCallNotifier;ZLcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .registers 4
    .parameter "sub"

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Lcom/android/phone/MSimCallNotifier$1;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/MSimCallNotifier$1;-><init>(Lcom/android/phone/MSimCallNotifier;I)V
    :try_end_5
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_5} :catch_6

    .line 191
    :goto_5
    return-object v1

    .line 177
    :catch_6
    move-exception v0

    .line 178
    .local v0, e:Lcom/huawei/android/util/NoExtAPIException;
    new-instance v1, Lcom/android/phone/MSimCallNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/phone/MSimCallNotifier$2;-><init>(Lcom/android/phone/MSimCallNotifier;)V

    .line 191
    .local v1, phoneStateListener:Landroid/telephony/PhoneStateListener;
    goto :goto_5
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/MSimCallNotifier;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    const-class v6, Lcom/android/phone/MSimCallNotifier;

    monitor-enter v6

    .line 65
    :try_start_3
    sget-object v0, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_19

    .line 66
    new-instance v0, Lcom/android/phone/MSimCallNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MSimCallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 70
    :goto_13
    sget-object v0, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    check-cast v0, Lcom/android/phone/MSimCallNotifier;

    monitor-exit v6

    return-object v0

    .line 68
    :cond_19
    const-string v0, "MSimCallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 71
    :catchall_34
    move-exception v0

    monitor-exit v6
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private onMwiChanged(ZLcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "visible"
    .parameter "phone"

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_c

    .line 118
    const-string v0, "MSimCallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_b
    return-void

    .line 122
    :cond_c
    iget-object v0, p0, Lcom/android/phone/MSimCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/MSimNotificationMgr;->updateMwi(ZLcom/android/internal/telephony/Phone;)V

    goto :goto_b
.end method


# virtual methods
.method protected getXDivertStatus()Z
    .registers 5

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/phone/MSimCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "xdivert_status_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 148
    .local v1, status:Z
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 82
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_28

    .line 94
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->handleMessage(Landroid/os/Message;)V

    .line 96
    :goto_8
    return-void

    .line 84
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 86
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1b

    .line 87
    iget-object v1, p0, Lcom/android/phone/MSimCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/MSimCallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V

    goto :goto_8

    .line 89
    :cond_1b
    iget-object v1, p0, Lcom/android/phone/MSimCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallNotifier;->onMwiChanged(Z)V

    goto :goto_8

    .line 82
    nop

    :pswitch_data_28
    .packed-switch 0x15
        :pswitch_9
    .end packed-switch
.end method

.method listen()V
    .registers 5

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/phone/MSimCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "phone_msim"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/MSimTelephonyManager;

    .line 102
    .local v1, telephonyManager:Landroid/telephony/MSimTelephonyManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 103
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallNotifier;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 107
    :cond_23
    return-void
.end method

.method protected onCfiChanged(ZI)V
    .registers 4
    .parameter "visible"
    .parameter "subscription"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/phone/MSimCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/MSimNotificationMgr;->updateCfi(ZI)V

    .line 137
    return-void
.end method

.method protected onXDivertChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/MSimCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimNotificationMgr;->updateXDivert(Z)V

    .line 141
    return-void
.end method

.method sendMwiChangedDelayed(JLcom/android/internal/telephony/Phone;)V
    .registers 6
    .parameter "delayMillis"
    .parameter "phone"

    .prologue
    .line 131
    const/16 v1, 0x15

    invoke-static {p0, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/MSimCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 133
    return-void
.end method

.method protected setXDivertStatus(Z)V
    .registers 5
    .parameter "status"

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/phone/MSimCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 155
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "xdivert_status_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    return-void
.end method
