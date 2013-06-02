.class public Lcom/android/phone/MSimNotificationMgr;
.super Lcom/android/phone/NotificationMgr;
.source "MSimNotificationMgr.java"


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MSimNotificationMgr;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter "app"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    .line 90
    return-void
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/MSimNotificationMgr;
    .registers 5
    .parameter

    .prologue
    .line 101
    const-class v1, Lcom/android/phone/MSimNotificationMgr;

    monitor-enter v1

    .line 102
    :try_start_3
    sget-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_19

    .line 103
    new-instance v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimNotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 105
    sget-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 109
    :goto_13
    sget-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    monitor-exit v1

    return-object v0

    .line 107
    :cond_19
    const-string v0, "MSimNotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 110
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 360
    const-string v0, "MSimNotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method


# virtual methods
.method updateCfi(ZI)V
    .registers 14
    .parameter "visible"
    .parameter "subscription"

    .prologue
    const/4 v10, 0x0

    .line 273
    const/4 v6, 0x2

    new-array v0, v6, [I

    fill-array-data v0, :array_5c

    .line 276
    .local v0, callfwdIcon:[I
    if-nez p2, :cond_53

    const/4 v3, 0x6

    .line 279
    .local v3, notificationId:I
    :goto_a
    if-eqz p1, :cond_56

    .line 291
    aget v4, v0, p2

    .line 293
    .local v4, resId:I
    const/4 v5, 0x1

    .line 295
    .local v5, showExpandedNotification:Z
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.MSimCallFeaturesSetting"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    new-instance v2, Landroid/app/Notification;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct {v2, v4, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 307
    .local v2, notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0064

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0067

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 320
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 322
    iget-object v6, p0, Lcom/android/phone/MSimNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 328
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v4           #resId:I
    .end local v5           #showExpandedNotification:Z
    :goto_52
    return-void

    .line 276
    .end local v3           #notificationId:I
    :cond_53
    const/16 v3, 0x15

    goto :goto_a

    .line 326
    .restart local v3       #notificationId:I
    :cond_56
    iget-object v6, p0, Lcom/android/phone/MSimNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_52

    .line 273
    :array_5c
    .array-data 0x4
        0xadt 0x0t 0x2t 0x7ft
        0xaet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method updateMwi(ZLcom/android/internal/telephony/Phone;)V
    .registers 33
    .parameter "visible"
    .parameter "phone"

    .prologue
    .line 121
    if-nez p2, :cond_3

    .line 265
    :goto_2
    return-void

    .line 124
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/huawei/internal/telephony/PhoneEx;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v18

    .line 127
    .local v18, subscription:I
    if-eqz p1, :cond_24d

    .line 128
    const v16, 0x108007e

    .line 129
    .local v16, resId:I
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v7, v0, [I

    fill-array-data v7, :array_260

    .line 142
    .local v7, iconId:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0e0180

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 143
    .local v12, notificationTitle:Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v25

    .line 144
    .local v25, vmNumber:Ljava/lang/String;
    sget-boolean v26, Lcom/android/phone/MSimNotificationMgr;->DBG:Z

    if-eqz v26, :cond_5c

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "- got vm number: \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " on Subscription: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 147
    :cond_5c
    :try_start_5c
    aget v16, v7, v18
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5e} :catch_a9

    .line 167
    :goto_5e
    if-nez v25, :cond_d0

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v26

    if-nez v26, :cond_d0

    .line 168
    sget-boolean v26, Lcom/android/phone/MSimNotificationMgr;->DBG:Z

    if-eqz v26, :cond_73

    const-string v26, "- Null vm number: SIM records not loaded (yet)..."

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 181
    :cond_73
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/MSimNotificationMgr;->mVmNumberRetriesRemaining:I

    move/from16 v26, v0

    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/MSimNotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v26, :cond_c9

    .line 182
    sget-boolean v26, Lcom/android/phone/MSimNotificationMgr;->DBG:Z

    if-eqz v26, :cond_90

    const-string v26, "  - Retrying in 10000 msec..."

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 183
    :cond_90
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/MSimCallNotifier;

    const-wide/16 v27, 0x2710

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/MSimCallNotifier;->sendMwiChangedDelayed(JLcom/android/internal/telephony/Phone;)V

    goto/16 :goto_2

    .line 148
    :catch_a9
    move-exception v6

    .line 149
    .local v6, e:Ljava/lang/Exception;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "error subscription: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    goto :goto_5e

    .line 187
    .end local v6           #e:Ljava/lang/Exception;
    :cond_c9
    const-string v26, "MSimNotificationMgr"

    const-string v27, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_d0
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v26

    if-eqz v26, :cond_ff

    .line 195
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v24

    .line 196
    .local v24, vmCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0e0181

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 197
    .local v19, titleFormat:Ljava/lang/String;
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 201
    .end local v19           #titleFormat:Ljava/lang/String;
    .end local v24           #vmCount:I
    :cond_ff
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_206

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0e0183

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, notificationText:Ljava/lang/String;
    :goto_112
    if-nez v25, :cond_229

    .line 213
    new-instance v8, Landroid/content/Intent;

    const-string v26, "android.intent.action.CALL"

    const-string v27, "voicemail"

    const-string v28, ""

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 221
    .local v8, intent:Landroid/content/Intent;
    :goto_129
    const-string v26, "subscription"

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 224
    .local v14, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 226
    .local v15, prefs:Landroid/content/SharedPreferences;
    const-string v26, "button_voicemail_notification_ringtone_key"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 228
    .local v20, uriString:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_244

    .line 229
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 234
    .local v17, ringtoneUri:Landroid/net/Uri;
    :goto_166
    new-instance v5, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v5, builder:Landroid/app/Notification$Builder;
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 241
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 243
    .local v9, notification:Landroid/app/Notification;
    const-string v26, "button_voicemail_notification_vibrate_when_key"

    const-string v27, "never"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 245
    .local v23, vibrateWhen:Ljava/lang/String;
    const-string v26, "always"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 246
    .local v21, vibrateAlways:Z
    const-string v26, "silent"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 247
    .local v22, vibrateSilent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "audio"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 249
    .local v4, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_248

    const/4 v13, 0x1

    .line 250
    .local v13, nowSilent:Z
    :goto_1d9
    if-nez v21, :cond_1df

    if-eqz v22, :cond_1e9

    if-eqz v13, :cond_1e9

    .line 251
    :cond_1df
    iget v0, v9, Landroid/app/Notification;->defaults:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    iput v0, v9, Landroid/app/Notification;->defaults:I

    .line 254
    :cond_1e9
    iget v0, v9, Landroid/app/Notification;->flags:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x20

    move/from16 v0, v26

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 255
    invoke-static {v9}, Lcom/android/phone/MSimNotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 256
    if-nez v18, :cond_24a

    const/4 v10, 0x5

    .line 258
    .local v10, notificationId:I
    :goto_1f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_2

    .line 205
    .end local v4           #audioManager:Landroid/media/AudioManager;
    .end local v5           #builder:Landroid/app/Notification$Builder;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #notification:Landroid/app/Notification;
    .end local v10           #notificationId:I
    .end local v11           #notificationText:Ljava/lang/String;
    .end local v13           #nowSilent:Z
    .end local v14           #pendingIntent:Landroid/app/PendingIntent;
    .end local v15           #prefs:Landroid/content/SharedPreferences;
    .end local v17           #ringtoneUri:Landroid/net/Uri;
    .end local v20           #uriString:Ljava/lang/String;
    .end local v21           #vibrateAlways:Z
    .end local v22           #vibrateSilent:Z
    .end local v23           #vibrateWhen:Ljava/lang/String;
    :cond_206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0e0182

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #notificationText:Ljava/lang/String;
    goto/16 :goto_112

    .line 216
    :cond_229
    new-instance v8, Landroid/content/Intent;

    const-string v26, "android.intent.action.CALL"

    const-string v27, "voicemail"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v8       #intent:Landroid/content/Intent;
    goto/16 :goto_129

    .line 231
    .restart local v14       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v15       #prefs:Landroid/content/SharedPreferences;
    .restart local v20       #uriString:Ljava/lang/String;
    :cond_244
    sget-object v17, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .restart local v17       #ringtoneUri:Landroid/net/Uri;
    goto/16 :goto_166

    .line 249
    .restart local v4       #audioManager:Landroid/media/AudioManager;
    .restart local v5       #builder:Landroid/app/Notification$Builder;
    .restart local v9       #notification:Landroid/app/Notification;
    .restart local v21       #vibrateAlways:Z
    .restart local v22       #vibrateSilent:Z
    .restart local v23       #vibrateWhen:Ljava/lang/String;
    :cond_248
    const/4 v13, 0x0

    goto :goto_1d9

    .line 256
    .restart local v13       #nowSilent:Z
    :cond_24a
    const/16 v10, 0x14

    goto :goto_1f9

    .line 260
    .end local v4           #audioManager:Landroid/media/AudioManager;
    .end local v5           #builder:Landroid/app/Notification$Builder;
    .end local v7           #iconId:[I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #notification:Landroid/app/Notification;
    .end local v11           #notificationText:Ljava/lang/String;
    .end local v12           #notificationTitle:Ljava/lang/String;
    .end local v13           #nowSilent:Z
    .end local v14           #pendingIntent:Landroid/app/PendingIntent;
    .end local v15           #prefs:Landroid/content/SharedPreferences;
    .end local v16           #resId:I
    .end local v17           #ringtoneUri:Landroid/net/Uri;
    .end local v20           #uriString:Ljava/lang/String;
    .end local v21           #vibrateAlways:Z
    .end local v22           #vibrateSilent:Z
    .end local v23           #vibrateWhen:Ljava/lang/String;
    .end local v25           #vmNumber:Ljava/lang/String;
    :cond_24d
    if-nez v18, :cond_25d

    const/4 v10, 0x5

    .line 262
    .restart local v10       #notificationId:I
    :goto_250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2

    .line 260
    .end local v10           #notificationId:I
    :cond_25d
    const/16 v10, 0x14

    goto :goto_250

    .line 129
    :array_260
    .array-data 0x4
        0xa8t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method updateXDivert(Z)V
    .registers 11
    .parameter "visible"

    .prologue
    const/16 v8, 0x16

    const/4 v7, 0x0

    .line 336
    if-eqz p1, :cond_48

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MSimCallFeaturesSetting"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const v2, 0x7f0200af

    .line 342
    .local v2, resId:I
    new-instance v1, Landroid/app/Notification;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 347
    .local v1, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e03e5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0e03ed

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/MSimNotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 353
    iget-object v3, p0, Lcom/android/phone/MSimNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 357
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #resId:I
    :goto_47
    return-void

    .line 355
    :cond_48
    iget-object v3, p0, Lcom/android/phone/MSimNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_47
.end method
