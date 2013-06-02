.class public Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutgoingCallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method public constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 177
    const-string v19, "android.phone.extra.ALREADY_CALLED"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 179
    .local v4, alreadyCalled:Z
    if-eqz v4, :cond_1e

    .line 180
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v19

    if-eqz v19, :cond_1d

    const-string v19, "OutgoingCallReceiver"

    const-string v20, "CALL already placed -- returning."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1d
    :goto_1d
    return-void

    .line 188
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v12

    .line 190
    .local v12, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    .line 192
    .local v5, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->isOtaActive()Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/OutgoingCallBroadcaster;->access$300(Lcom/android/phone/OutgoingCallBroadcaster;)Z

    move-result v19

    if-eqz v19, :cond_3a

    .line 194
    const-string v19, "OutgoingCallReceiver"

    const-string v20, "OTASP call is active: disallowing a new outgoing call."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 199
    :cond_3a
    if-nez v12, :cond_4a

    .line 200
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v19

    if-eqz v19, :cond_1d

    const-string v19, "OutgoingCallReceiver"

    const-string v20, "CALL cancelled (null number), returning..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 202
    :cond_4a
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v19

    if-eqz v19, :cond_7e

    iget-object v0, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7e

    iget-object v0, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7e

    .line 205
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v19

    if-eqz v19, :cond_1d

    const-string v19, "OutgoingCallReceiver"

    const-string v20, "Call is active, a 2nd OTA call cancelled -- returning."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 207
    :cond_7e
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_a8

    .line 212
    const-string v19, "OutgoingCallReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot modify outgoing call to emergency number "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 216
    :cond_a8
    const-string v19, "android.phone.extra.ORIGINAL_URI"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 218
    .local v13, originalUri:Ljava/lang/String;
    if-nez v13, :cond_bd

    .line 219
    const-string v19, "OutgoingCallReceiver"

    const-string v20, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 223
    :cond_bd
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 230
    .local v18, uri:Landroid/net/Uri;
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 231
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "config_tianyi_dialer"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/huawei/android/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_265

    .line 235
    const-string v19, "tianyi_dialer"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 236
    .local v8, isCallFromTianyiDialer:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    .line 237
    .local v14, phone:Lcom/android/internal/telephony/Phone;
    if-nez v14, :cond_100

    .line 239
    const-string v19, "OutgoingCallReceiver"

    const-string v20, "get null Phone from sub=0"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 243
    :cond_100
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->isNetworkRoamingCT(I)Z

    move-result v9

    .line 246
    .local v9, isRoaming:Z
    const/4 v15, 0x0

    .line 247
    .local v15, sIdd:Ljava/lang/String;
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v17

    .line 248
    .local v17, sOperator:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v19

    if-eqz v19, :cond_12f

    const-string v19, "OutgoingCallReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "the curr MCC is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_12f
    if-eqz v17, :cond_19b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_19b

    .line 252
    const/16 v19, 0x0

    const/16 v20, 0x3

    :try_start_141
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 253
    .local v16, sMcc:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 254
    .local v7, iMcc:I
    invoke-static {v7}, Lcom/huawei/android/hwnv/HWFlagFuncation;->getIDD(I)Ljava/lang/String;

    move-result-object v15

    .line 255
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v19

    if-eqz v19, :cond_19b

    const-string v19, "OutgoingCallReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sOperator="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " iMcc="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " sIdd="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " sMcc="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_19b} :catch_234

    .line 262
    .end local v7           #iMcc:I
    .end local v16           #sMcc:Ljava/lang/String;
    :cond_19b
    :goto_19b
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v19

    if-eqz v19, :cond_1d3

    const-string v19, "OutgoingCallReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "number="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  sIdd="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  isCallFromTianyiDialer="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1d3
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v19

    if-eqz v19, :cond_1f7

    const-string v19, "OutgoingCallReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isNetworkRoamingCT="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->isNetworkRoamingCT(I)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_1f7
    if-eqz v9, :cond_221

    if-nez v8, :cond_221

    const-string v19, "+"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_221

    if-eqz v15, :cond_20d

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_221

    :cond_20d
    const-string v19, "**133"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_238

    const-string v19, "#"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_238

    .line 270
    :cond_221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v12}, Lcom/android/phone/OutgoingCallBroadcaster;->access$400(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 256
    :catch_234
    move-exception v6

    .line 257
    .local v6, e:Ljava/lang/Exception;
    const/4 v15, 0x0

    goto/16 :goto_19b

    .line 275
    .end local v6           #e:Ljava/lang/Exception;
    :cond_238
    const-string v19, "tel"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v12, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 276
    .local v11, newuri:Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    const-string v19, "com.huawei.android.TIANYI_DIALER"

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    .local v10, newintent:Landroid/content/Intent;
    const-string v19, "subscription"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1d

    .line 281
    .end local v8           #isCallFromTianyiDialer:Z
    .end local v9           #isRoaming:Z
    .end local v10           #newintent:Landroid/content/Intent;
    .end local v11           #newuri:Landroid/net/Uri;
    .end local v14           #phone:Lcom/android/internal/telephony/Phone;
    .end local v15           #sIdd:Ljava/lang/String;
    .end local v17           #sOperator:Ljava/lang/String;
    :cond_265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v12}, Lcom/android/phone/OutgoingCallBroadcaster;->access$400(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1d
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 168
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 169
    return-void
.end method
