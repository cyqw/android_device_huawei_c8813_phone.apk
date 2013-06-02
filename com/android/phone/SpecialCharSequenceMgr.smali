.class public Lcom/android/phone/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 199
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 224
    :cond_10
    :goto_10
    return v3

    .line 203
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 204
    .local v2, len:I
    if-le v2, v4, :cond_10

    const/4 v5, 0x5

    if-ge v2, v5, :cond_10

    const-string v5, "#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 206
    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    :try_start_25
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, index:I
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 211
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.MSimContacts"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :goto_41
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    const-string v5, "index"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 221
    goto :goto_10

    .line 214
    :cond_54
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.SimContacts"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_5b} :catch_5c

    goto :goto_41

    .line 222
    .end local v0           #index:I
    .end local v1           #intent:Landroid/content/Intent;
    :catch_5c
    move-exception v4

    goto :goto_10
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .parameter "context"
    .parameter "input"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 5
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 113
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0, v0, p2}, Lcom/android/phone/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 119
    :cond_1c
    const/4 v1, 0x1

    .line 122
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .parameter "context"
    .parameter "input"

    .prologue
    .line 281
    const-string v0, "*#06#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 282
    invoke-static {p0}, Lcom/android/phone/SpecialCharSequenceMgr;->showDeviceIdPanel(Landroid/content/Context;)V

    .line 283
    const/4 v0, 0x1

    .line 286
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 12
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 232
    const-string v8, "**04"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "**05"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    :cond_10
    const-string v8, "#"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 234
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 235
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v6, 0x0

    .line 236
    .local v6, phone:Lcom/android/internal/telephony/Phone;
    const/4 v4, 0x0

    .line 237
    .local v4, isPukRequired:Z
    const-string v8, "**05"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 245
    :try_start_26
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v5

    .line 246
    .local v5, numPhones:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2f
    if-ge v2, v5, :cond_3b

    .line 247
    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->isSimPukLocked(I)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 248
    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;
    :try_end_3a
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_26 .. :try_end_3a} :catch_54

    move-result-object v6

    .line 256
    .end local v2           #i:I
    .end local v5           #numPhones:I
    :cond_3b
    :goto_3b
    if-nez v6, :cond_3f

    .line 257
    iget-object v6, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 264
    :cond_3f
    :goto_3f
    invoke-interface {v6, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v3

    .line 271
    .local v3, isMMIHandled:Z
    if-eqz v3, :cond_50

    const-string v8, "**05"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 272
    invoke-virtual {v0, p2}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 276
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #isMMIHandled:Z
    .end local v4           #isPukRequired:Z
    .end local v6           #phone:Lcom/android/internal/telephony/Phone;
    :cond_50
    :goto_50
    return v3

    .line 246
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v2       #i:I
    .restart local v4       #isPukRequired:Z
    .restart local v5       #numPhones:I
    .restart local v6       #phone:Lcom/android/internal/telephony/Phone;
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 252
    .end local v2           #i:I
    .end local v5           #numPhones:I
    :catch_54
    move-exception v1

    .line 253
    .local v1, e:Lcom/huawei/android/util/NoExtAPIException;
    const-string v8, "handlePinEntry->NoExtAPIException!"

    invoke-static {v8}, Lcom/android/phone/SpecialCharSequenceMgr;->log(Ljava/lang/String;)V

    goto :goto_3b

    .line 261
    .end local v1           #e:Lcom/huawei/android/util/NoExtAPIException;
    :cond_5b
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v7

    .line 262
    .local v7, voiceSub:I
    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    goto :goto_3f

    .line 276
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v4           #isPukRequired:Z
    .end local v6           #phone:Lcom/android/internal/telephony/Phone;
    .end local v7           #voiceSub:I
    :cond_64
    const/4 v3, 0x0

    goto :goto_50
.end method

.method private static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 164
    .local v1, len:I
    const/16 v3, 0x8

    if-le v1, v3, :cond_43

    const-string v3, "*#*#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v3, "#*#*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    add-int/lit8 v6, v1, -0x4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    .end local v0           #intent:Landroid/content/Intent;
    :goto_42
    return v2

    .line 172
    :cond_43
    const-string v3, "*#2846#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_42

    .line 180
    .end local v0           #intent:Landroid/content/Intent;
    :cond_79
    const-string v3, "*#2846*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_42

    .line 189
    .end local v0           #intent:Landroid/content/Intent;
    :cond_af
    const/4 v2, 0x0

    goto :goto_42
.end method

.method private static log(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 306
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpecialCharSequenceMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method private static showDeviceIdPanel(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 291
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 292
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->getDeviceIdLabel(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 293
    .local v2, labelId:I
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, deviceId:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e0029

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 301
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d7

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 302
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 303
    return-void
.end method
