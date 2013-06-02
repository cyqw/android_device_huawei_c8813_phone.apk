.class public Lcom/android/phone/callvasisstantutils/VALog;
.super Ljava/lang/Object;
.source "VALog.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
