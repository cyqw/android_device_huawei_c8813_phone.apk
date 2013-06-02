.class public Lcom/android/phone/XDivertUtility;
.super Ljava/lang/Object;
.source "XDivertUtility.java"


# static fields
.field protected static sMe:Lcom/android/phone/XDivertUtility;


# instance fields
.field private mCallNotifier:Lcom/android/phone/MSimCallNotifier;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHasImsiChanged:[Z

.field private mImsiFromSim:[Ljava/lang/String;

.field private mLineNumber:[Ljava/lang/String;

.field private mNumPhones:I

.field private mStoredImsi:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    .line 163
    new-instance v0, Lcom/android/phone/XDivertUtility$1;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertUtility$1;-><init>(Lcom/android/phone/XDivertUtility;)V

    iput-object v0, p0, Lcom/android/phone/XDivertUtility;->mHandler:Landroid/os/Handler;

    .line 83
    sput-object p0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    .line 84
    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimCallNotifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/XDivertUtility;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/XDivertUtility;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/XDivertUtility;->onSubscriptionDeactivated()V

    return-void
.end method

.method static getInstance()Lcom/android/phone/XDivertUtility;
    .registers 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    return-object v0
.end method

.method private onSubscriptionDeactivated()V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimCallNotifier;->onXDivertChanged(Z)V

    .line 259
    return-void
.end method


# virtual methods
.method protected checkImsiReady()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    if-ge v0, v3, :cond_5b

    .line 216
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertUtility;->getSimImsi(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 217
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 219
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ""

    if-ne v3, v4, :cond_2a

    .line 231
    :cond_29
    :goto_29
    return v1

    .line 221
    :cond_2a
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 225
    :cond_44
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;

    invoke-virtual {v3, v1}, Lcom/android/phone/MSimCallNotifier;->setXDivertStatus(Z)V

    .line 226
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/XDivertUtility;->setSimImsi(Ljava/lang/String;I)V

    .line 227
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/XDivertUtility;->storeNumber(Ljava/lang/String;I)V

    .line 228
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z

    aput-boolean v2, v3, v0

    .line 215
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5b
    move v1, v2

    .line 231
    goto :goto_29
.end method

.method protected getLineNumbers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;

    return-object v0
.end method

.method protected getNumber(I)Ljava/lang/String;
    .registers 5
    .parameter "subscription"

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 265
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim_number_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getSimImsi(I)Ljava/lang/String;
    .registers 5
    .parameter "subscription"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 243
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected setSimImsi(Ljava/lang/String;I)V
    .registers 7
    .parameter "imsi"
    .parameter "subscription"

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 250
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 251
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_imsi_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 253
    return-void
.end method

.method protected storeNumber(Ljava/lang/String;I)V
    .registers 7
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 270
    iget-object v2, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 272
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 273
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_number_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 278
    iget-object v2, p0, Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;

    aput-object p1, v2, p2

    .line 279
    return-void
.end method
