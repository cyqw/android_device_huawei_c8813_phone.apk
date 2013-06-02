.class public Lcom/android/phone/ims/ImsSharedPreferences;
.super Ljava/lang/Object;
.source "ImsSharedPreferences.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    const-string v0, "IMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/ims/ImsSharedPreferences;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "IMS_PREFERENCES"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 48
    return-void
.end method


# virtual methods
.method public getCallType()I
    .registers 5

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ims_call_type"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, callType:I
    return v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ims_server_address"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, address:Ljava/lang/String;
    return-object v0
.end method

.method public getisImsDefault()Z
    .registers 5

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ims_is_default"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    .local v0, isImsDefault:Z
    return v0
.end method

.method public setCallType(I)V
    .registers 4
    .parameter "callType"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ims_call_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    return-void
.end method

.method public setIsImsDefault(Z)V
    .registers 4
    .parameter "isImsDefault"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ims_is_default"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ims_server_address"

    if-nez p1, :cond_c

    const-string p1, ""

    .end local p1
    :cond_c
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    return-void
.end method
