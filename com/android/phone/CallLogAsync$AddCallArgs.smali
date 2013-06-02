.class public Lcom/android/phone/CallLogAsync$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final callType:I

.field public final ci:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final durationInSec:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final subFlag:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .registers 12
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 114
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 115
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 116
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 117
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 118
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->subFlag:I

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V
    .registers 15
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "subscription"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 145
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 146
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 147
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 148
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 149
    const-wide/16 v2, 0x3e8

    div-long v2, p8, v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 151
    const/4 v2, 0x1

    if-ne p10, v2, :cond_36

    invoke-static {}, Lcom/android/phone/CallLogAsync;->access$000()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {}, Lcom/android/phone/CallLogAsync;->access$100()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 152
    :cond_25
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p10}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getSlotIdFromSubId(I)I

    move-result v0

    .line 153
    .local v0, slotid:I
    const/4 v1, 0x0

    .line 154
    .local v1, subid:I
    if-nez v0, :cond_34

    .line 160
    const/4 v1, 0x2

    .line 164
    :goto_31
    iput v1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->subFlag:I

    .line 168
    .end local v0           #slotid:I
    .end local v1           #subid:I
    :goto_33
    return-void

    .line 162
    .restart local v0       #slotid:I
    .restart local v1       #subid:I
    :cond_34
    move v1, p10

    goto :goto_31

    .line 166
    .end local v0           #slotid:I
    .end local v1           #subid:I
    :cond_36
    iput p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->subFlag:I

    goto :goto_33
.end method
