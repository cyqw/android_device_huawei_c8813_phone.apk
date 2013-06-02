.class public Lcom/android/phone/ipcallsetting/IPCallUtils;
.super Ljava/lang/Object;
.source "IPCallUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    }
.end annotation


# static fields
.field public static final IS_SUPPORT_IPCALL:Z

.field static final PROJECTION:[Ljava/lang/String;

.field private static sConnectionLogNumberMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const-string v0, "ro.config.hw_support_ipcall"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    return-void
.end method

.method public static getLogNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .registers 5
    .parameter "conn"

    .prologue
    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v1, 0x0

    .line 53
    :cond_3
    :goto_3
    return-object v1

    .line 45
    :cond_4
    const/4 v1, 0x0

    .line 46
    .local v1, logNumber:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, connHashCode:Ljava/lang/String;
    sget-object v3, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;

    .line 49
    .local v2, phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    if-eqz v2, :cond_3

    .line 50
    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->getLogNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static removeConnection(Lcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "conn"

    .prologue
    .line 61
    if-nez p0, :cond_3

    .line 67
    :goto_2
    return-void

    .line 65
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, connHashCode:Ljava/lang/String;
    sget-object v1, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static removeConnection(Ljava/lang/String;)V
    .registers 9
    .parameter "phoneNumber"

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 76
    .local v2, connHashCode:Ljava/lang/String;
    sget-object v7, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 78
    .local v0, cnlist:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;>;"
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 80
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    .local v1, conn:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;

    .line 82
    .local v4, phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    invoke-virtual {v4}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, tempPhoneNumber:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->getLogNumber()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, tempLogNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v5, :cond_b

    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 89
    move-object v2, v1

    .line 95
    .end local v1           #conn:Ljava/lang/String;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;"
    .end local v4           #phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    .end local v5           #tempLogNumber:Ljava/lang/String;
    .end local v6           #tempPhoneNumber:Ljava/lang/String;
    :cond_48
    if-eqz v2, :cond_4f

    .line 96
    sget-object v7, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_4f
    return-void
.end method

.method public static setConnectionAndPhoneNumber(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .registers 5
    .parameter "conn"
    .parameter "phoneNumber"

    .prologue
    .line 165
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 180
    :cond_8
    :goto_8
    return-void

    .line 169
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, connHashCode:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 175
    new-instance v1, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;

    const-string v2, ""

    invoke-direct {v1, p1, v2}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v1, phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public static setLogNumber(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .parameter "phoneNumber"
    .parameter "intent"

    .prologue
    .line 123
    const-string v1, "android.intent.extra.PHONE_LOGNUMBER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, logNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 126
    invoke-static {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallUtils;->setLogNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_f
    return-void

    .line 128
    :cond_10
    invoke-static {p0}, Lcom/android/phone/ipcallsetting/IPCallUtils;->removeConnection(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static setLogNumber(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "phoneNumber"
    .parameter "logNumber"

    .prologue
    .line 138
    sget-object v5, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 140
    .local v0, cnlist:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;>;"
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;

    .line 143
    .local v2, phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, tempPhoneNumber:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->getLogNumber()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, tempLogNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 151
    invoke-virtual {v2, p1}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->setLogNumber(Ljava/lang/String;)V

    .line 156
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;"
    .end local v2           #phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    .end local v3           #tempLogNumber:Ljava/lang/String;
    .end local v4           #tempPhoneNumber:Ljava/lang/String;
    :cond_43
    return-void
.end method

.method public static setLogNumberToIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .parameter "oldIntent"
    .parameter "newIntent"

    .prologue
    .line 108
    const-string v1, "android.intent.extra.PHONE_LOGNUMBER"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, logNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 111
    const-string v1, "android.intent.extra.PHONE_LOGNUMBER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    :cond_11
    return-object p1
.end method
