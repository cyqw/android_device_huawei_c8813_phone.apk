.class Lcom/android/phone/CallLogAsync$AddCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/CallLogAsync$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallLogAsync;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallLogAsync;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/CallLogAsync;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;
    .registers 18
    .parameter "callList"

    .prologue
    .line 229
    move-object/from16 v0, p1

    array-length v11, v0

    .line 230
    .local v11, count:I
    new-array v15, v11, [Landroid/net/Uri;

    .line 231
    .local v15, result:[Landroid/net/Uri;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_6
    if-ge v14, v11, :cond_52

    .line 232
    aget-object v10, p1, v14

    .line 239
    .local v10, c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    const/4 v13, 0x0

    .line 241
    .local v13, flag:Z
    :try_start_b
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z
    :try_end_12
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_b .. :try_end_12} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_46

    move-result v13

    .line 245
    :goto_13
    if-eqz v13, :cond_31

    .line 247
    :try_start_15
    iget-object v1, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v3, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iget v4, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    iget v5, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    iget-wide v6, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    iget v8, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    iget v9, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->subFlag:I

    invoke-static/range {v1 .. v9}, Lcom/huawei/android/provider/CallLogEx;->addCallWithSub(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJII)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v15, v14

    .line 231
    :goto_2b
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 242
    :catch_2e
    move-exception v12

    .line 243
    .local v12, e:Lcom/huawei/android/util/NoExtAPIException;
    const/4 v13, 0x0

    goto :goto_13

    .line 251
    .end local v12           #e:Lcom/huawei/android/util/NoExtAPIException;
    :cond_31
    iget-object v1, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v3, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iget v4, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    iget v5, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    iget-wide v6, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    iget v8, v10, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static/range {v1 .. v8}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v15, v14
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_45} :catch_46

    goto :goto_2b

    .line 256
    :catch_46
    move-exception v12

    .line 257
    .local v12, e:Ljava/lang/Exception;
    const-string v1, "CallLogAsync"

    const-string v2, "AddCallTask occur exception: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    .line 262
    .end local v10           #c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #flag:Z
    :cond_52
    return-object v15
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->onPostExecute([Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute([Landroid/net/Uri;)V
    .registers 8
    .parameter "result"

    .prologue
    .line 270
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 271
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_10

    .line 272
    const-string v4, "CallLogAsync"

    const-string v5, "Failed to write call to the log."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 275
    .end local v3           #uri:Landroid/net/Uri;
    :cond_13
    return-void
.end method
