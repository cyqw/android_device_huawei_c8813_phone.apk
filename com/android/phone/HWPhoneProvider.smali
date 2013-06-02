.class public Lcom/android/phone/HWPhoneProvider;
.super Landroid/content/ContentProvider;
.source "HWPhoneProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HWPhoneProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final IPCALLS_CURRENT_URI:Landroid/net/Uri;

.field public static final IPCALLS_SUB1_CURRENT_URI:Landroid/net/Uri;

.field public static final IPCALLS_SUB1_URI:Landroid/net/Uri;

.field public static final IPCALLS_SUB2_CURRENT_URI:Landroid/net/Uri;

.field public static final IPCALLS_SUB2_URI:Landroid/net/Uri;

.field public static final IPCALLS_URI:Landroid/net/Uri;

.field private static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final MESSAGE_URI:Landroid/net/Uri;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

.field private mDbObserver:Landroid/database/ContentObserver;

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 42
    const-string v0, "HWPhoneProvider"

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    .line 94
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 98
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts/current"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts1"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts2"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts1/current"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts2/current"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "rejectmessage"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "rejectmessage/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    const-string v0, "content://hwphone/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    .line 120
    const-string v0, "content://hwphone/accounts/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_CURRENT_URI:Landroid/net/Uri;

    .line 122
    const-string v0, "content://hwphone/accounts1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    .line 123
    const-string v0, "content://hwphone/accounts2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    .line 124
    const-string v0, "content://hwphone/accounts1/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_CURRENT_URI:Landroid/net/Uri;

    .line 125
    const-string v0, "content://hwphone/accounts2/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_CURRENT_URI:Landroid/net/Uri;

    .line 127
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    .line 131
    const-string v0, "content://hwphone/rejectmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->MESSAGE_URI:Landroid/net/Uri;

    .line 132
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    .line 139
    new-instance v0, Lcom/android/phone/HWPhoneProvider$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/HWPhoneProvider$1;-><init>(Lcom/android/phone/HWPhoneProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/HWPhoneProvider;->mDbObserver:Landroid/database/ContentObserver;

    .line 985
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HWPhoneProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/HWPhoneProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method private static getCustomMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;I)V
    .registers 11
    .parameter "db"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 688
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 691
    .local v3, xml:Landroid/content/res/XmlResourceParser;
    :cond_8
    :goto_8
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, xmlEventType:I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_6e

    .line 692
    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    const-string v5, "message"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 695
    const/4 v5, 0x0

    const-string v6, "value"

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 696
    .local v2, resId:I
    if-nez v2, :cond_6f

    .line 697
    const/4 v5, 0x0

    const-string v6, "value"

    invoke-interface {v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, customMessage:Ljava/lang/String;
    :goto_2f
    if-eqz v0, :cond_8

    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO reject_message (_data) VALUES(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 706
    sget-object v5, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pre install custom Message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66

    goto :goto_8

    .line 711
    .end local v0           #customMessage:Ljava/lang/String;
    .end local v2           #resId:I
    .end local v3           #xml:Landroid/content/res/XmlResourceParser;
    .end local v4           #xmlEventType:I
    :catch_66
    move-exception v1

    .line 712
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    const-string v6, "Error while trying to get message from custom_message_config"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6e
    return-void

    .line 699
    .restart local v2       #resId:I
    .restart local v3       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v4       #xmlEventType:I
    :cond_6f
    :try_start_6f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_66

    move-result-object v0

    .restart local v0       #customMessage:Ljava/lang/String;
    goto :goto_2f
.end method

.method public static getDefaultIPDialNumberData(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 954
    const-string v1, "IPCallSettings"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 957
    .local v0, preference:Landroid/content/SharedPreferences;
    const-string v1, "pref_current_ip_account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "sub"

    .prologue
    .line 963
    const-string v1, "IPCallSettings"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 965
    .local v0, preference:Landroid/content/SharedPreferences;
    if-nez p1, :cond_12

    .line 967
    const-string v1, "pref_current_ip_account1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 971
    :goto_11
    return-object v1

    :cond_12
    const-string v1, "pref_current_ip_account2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method public static getDefaultIPDialNumberID(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 926
    const-string v1, "IPCallSettings"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 929
    .local v0, preference:Landroid/content/SharedPreferences;
    const-string v1, "pref_current_ip_account_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDefaultIPDialNumberID(Landroid/content/Context;I)I
    .registers 6
    .parameter "context"
    .parameter "sub"

    .prologue
    const/4 v3, 0x0

    .line 935
    const-string v1, "IPCallSettings"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 937
    .local v0, preference:Landroid/content/SharedPreferences;
    if-nez p1, :cond_11

    .line 939
    const-string v1, "pref_current_ip_account_id1"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 943
    :goto_10
    return v1

    :cond_11
    const-string v1, "pref_current_ip_account_id2"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_10
.end method

.method private static getPreInstalledIPNumber(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;I)V
    .registers 15
    .parameter "db"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 574
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 579
    .local v7, xml:Landroid/content/res/XmlResourceParser;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v9

    if-eqz v9, :cond_127

    .line 581
    const/4 v4, 0x2

    .line 582
    .local v4, ipNumberID:I
    const/4 v2, 0x0

    .line 583
    .local v2, hasSetDefaultIPNumber1:Z
    const/4 v3, 0x0

    .line 584
    .local v3, hasSetDefaultIPNumber2:Z
    :cond_11
    :goto_11
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .local v8, xmlEventType:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_a3

    .line 586
    const/4 v9, 0x2

    if-ne v8, v9, :cond_a4

    const-string v9, "ipnumber1"

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 589
    const-string v6, ""

    .line 590
    .local v6, preInstallIPNumber:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 591
    if-eqz v6, :cond_11

    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 593
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "INSERT INTO ip_accounts (_data,_subscription) VALUES(\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 596
    add-int/lit8 v4, v4, 0x1

    .line 597
    if-nez v2, :cond_7b

    .line 599
    const/4 v9, 0x0

    const-string v10, "default"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 600
    .local v5, isDefault:Ljava/lang/String;
    if-eqz v5, :cond_7b

    const-string v9, "1"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 603
    const/4 v9, 0x0

    invoke-static {p1, v4, v6, v9}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 604
    const/4 v2, 0x1

    .line 609
    .end local v5           #isDefault:Ljava/lang/String;
    :cond_7b
    sget-object v9, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pre install ipnumber "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "--SUB1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_99} :catch_9b

    goto/16 :goto_11

    .line 673
    .end local v2           #hasSetDefaultIPNumber1:Z
    .end local v3           #hasSetDefaultIPNumber2:Z
    .end local v4           #ipNumberID:I
    .end local v6           #preInstallIPNumber:Ljava/lang/String;
    .end local v7           #xml:Landroid/content/res/XmlResourceParser;
    .end local v8           #xmlEventType:I
    :catch_9b
    move-exception v0

    .line 674
    .local v0, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    const-string v10, "Error while trying to get ipnumber from ipcall_config"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a3
    return-void

    .line 613
    .restart local v2       #hasSetDefaultIPNumber1:Z
    .restart local v3       #hasSetDefaultIPNumber2:Z
    .restart local v4       #ipNumberID:I
    .restart local v7       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v8       #xmlEventType:I
    :cond_a4
    const/4 v9, 0x2

    if-ne v8, v9, :cond_11

    :try_start_a7
    const-string v9, "ipnumber2"

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 616
    const-string v6, ""

    .line 617
    .restart local v6       #preInstallIPNumber:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 618
    if-eqz v6, :cond_11

    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 619
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "INSERT INTO ip_accounts (_data,_subscription) VALUES(\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 622
    add-int/lit8 v4, v4, 0x1

    .line 623
    if-nez v3, :cond_107

    .line 625
    const/4 v9, 0x0

    const-string v10, "default"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 626
    .restart local v5       #isDefault:Ljava/lang/String;
    if-eqz v5, :cond_107

    const-string v9, "1"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_107

    .line 629
    const/4 v9, 0x1

    invoke-static {p1, v4, v6, v9}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 630
    const/4 v3, 0x1

    .line 635
    .end local v5           #isDefault:Ljava/lang/String;
    :cond_107
    sget-object v9, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pre install ipnumber "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "--SUB2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 642
    .end local v2           #hasSetDefaultIPNumber1:Z
    .end local v3           #hasSetDefaultIPNumber2:Z
    .end local v4           #ipNumberID:I
    .end local v6           #preInstallIPNumber:Ljava/lang/String;
    .end local v8           #xmlEventType:I
    :cond_127
    const/4 v4, 0x1

    .line 643
    .restart local v4       #ipNumberID:I
    const/4 v1, 0x0

    .line 644
    .local v1, hasSetDefaultIPNumber:Z
    :cond_129
    :goto_129
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .restart local v8       #xmlEventType:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_a3

    .line 645
    const/4 v9, 0x2

    if-ne v8, v9, :cond_129

    const-string v9, "ipnumber"

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_129

    .line 648
    const-string v6, ""

    .line 649
    .restart local v6       #preInstallIPNumber:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 650
    if-eqz v6, :cond_129

    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_129

    .line 651
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "INSERT INTO ip_accounts (_data) VALUES(\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 654
    add-int/lit8 v4, v4, 0x1

    .line 655
    if-nez v1, :cond_187

    .line 656
    const/4 v9, 0x0

    const-string v10, "default"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 657
    .restart local v5       #isDefault:Ljava/lang/String;
    if-eqz v5, :cond_187

    const-string v9, "1"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_187

    .line 659
    invoke-static {p1, v4, v6}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;)V

    .line 660
    const/4 v1, 0x1

    .line 665
    .end local v5           #isDefault:Ljava/lang/String;
    :cond_187
    sget-object v9, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pre install ipnumber "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_19f} :catch_9b

    goto :goto_129
.end method

.method public static updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "id"
    .parameter "account"

    .prologue
    .line 727
    if-eqz p1, :cond_6

    .line 728
    invoke-static {p0, p1, p2}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;)V

    .line 773
    :cond_5
    :goto_5
    return-void

    .line 733
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 738
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_34

    .line 739
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 740
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 741
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 745
    :cond_34
    if-eqz v6, :cond_39

    .line 746
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 749
    :cond_39
    invoke-static {p0}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;)I

    move-result v8

    .line 750
    .local v8, saved_id:I
    invoke-static {p0}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 752
    .local v7, saved_account:Ljava/lang/String;
    if-nez v8, :cond_4c

    .line 754
    invoke-static {p0, p1, p2}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;)V

    .line 770
    :cond_46
    :goto_46
    if-eqz v6, :cond_5

    .line 771
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 756
    :cond_4c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ? and _data = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 765
    if-eqz v6, :cond_75

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_46

    .line 766
    :cond_75
    invoke-static {p0, p1, p2}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_46
.end method

.method public static updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 14
    .parameter "context"
    .parameter "id"
    .parameter "account"
    .parameter "sub"

    .prologue
    .line 779
    if-eqz p1, :cond_6

    .line 781
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;I)V

    .line 839
    :cond_5
    :goto_5
    return-void

    .line 784
    :cond_6
    if-nez p3, :cond_4e

    .line 786
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 793
    .local v6, c:Landroid/database/Cursor;
    :goto_17
    if-eqz v6, :cond_36

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_36

    .line 795
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 796
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 797
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 799
    :cond_36
    if-eqz v6, :cond_3b

    .line 801
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 803
    :cond_3b
    invoke-static {p0, p3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;I)I

    move-result v8

    .line 804
    .local v8, saved_id:I
    invoke-static {p0, p3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 806
    .local v7, saved_account:Ljava/lang/String;
    if-nez v8, :cond_5e

    .line 809
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;I)V

    .line 834
    :cond_48
    :goto_48
    if-eqz v6, :cond_5

    .line 836
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 790
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #saved_account:Ljava/lang/String;
    .end local v8           #saved_id:I
    :cond_4e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #c:Landroid/database/Cursor;
    goto :goto_17

    .line 813
    .restart local v7       #saved_account:Ljava/lang/String;
    .restart local v8       #saved_id:I
    :cond_5e
    if-nez p3, :cond_8d

    .line 815
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ? and _data = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 818
    if-eqz v6, :cond_89

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_48

    .line 820
    :cond_89
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_48

    .line 823
    :cond_8d
    const/4 v0, 0x1

    if-ne p3, v0, :cond_48

    .line 825
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ? and _data = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 828
    if-eqz v6, :cond_b9

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_48

    .line 830
    :cond_b9
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_48
.end method

.method private static updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "id"
    .parameter "ipAccount"

    .prologue
    .line 851
    const-string v4, "IPCallSettings"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 853
    .local v3, preference:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 855
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1b

    .line 857
    const-string v4, "pref_current_ip_account"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 858
    const-string v4, "pref_current_ip_account_id"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 873
    :cond_17
    :goto_17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 874
    return-void

    .line 860
    :cond_1b
    invoke-static {p0}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;)I

    move-result v1

    .line 861
    .local v1, id_old:I
    invoke-static {p0}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 863
    .local v2, ipAccount_old:Ljava/lang/String;
    if-eqz p2, :cond_17

    if-ne p1, v1, :cond_2d

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 866
    :cond_2d
    const-string v4, "pref_current_ip_account_id"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 867
    const-string v4, "pref_current_ip_account"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_17
.end method

.method private static updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 10
    .parameter "context"
    .parameter "id"
    .parameter "ipAccount"
    .parameter "sub"

    .prologue
    .line 879
    const-string v4, "IPCallSettings"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 881
    .local v3, preference:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 882
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_28

    .line 885
    if-nez p3, :cond_1d

    .line 887
    const-string v4, "pref_current_ip_account1"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 888
    const-string v4, "pref_current_ip_account_id1"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 916
    :cond_19
    :goto_19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 917
    return-void

    .line 892
    :cond_1d
    const-string v4, "pref_current_ip_account2"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 893
    const-string v4, "pref_current_ip_account_id2"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 898
    :cond_28
    invoke-static {p0, p3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;I)I

    move-result v1

    .line 899
    .local v1, id_old:I
    invoke-static {p0, p3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, ipAccount_old:Ljava/lang/String;
    if-eqz p2, :cond_19

    if-ne p1, v1, :cond_3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 903
    :cond_3a
    if-nez p3, :cond_47

    .line 905
    const-string v4, "pref_current_ip_account_id1"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 906
    const-string v4, "pref_current_ip_account1"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 910
    :cond_47
    const-string v4, "pref_current_ip_account_id2"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 911
    const-string v4, "pref_current_ip_account2"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19
.end method

.method private static updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "context"
    .parameter "db"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 182
    if-eq p3, v4, :cond_2c

    .line 183
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 186
    :cond_2c
    if-le p2, p3, :cond_5c

    .line 187
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 192
    :cond_5c
    if-ge p2, v3, :cond_c1

    .line 194
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v0, "DROP TABLE IF EXISTS ip_accounts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 201
    const-string v0, "CREATE TABLE IF NOT EXISTS ip_accounts (_id INTEGER PRIMARY KEY,_data TEXT,_subscription INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    const-string v0, "INSERT INTO ip_accounts (_data,_subscription) VALUES(\'\',0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    const-string v0, "INSERT INTO ip_accounts (_data,_subscription) VALUES(\'\',1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v3, v0, v1}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 211
    const-string v0, ""

    invoke-static {p0, v4, v0, v3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 226
    :goto_ab
    const v0, 0x7f060013

    invoke-static {p1, p0, v0}, Lcom/android/phone/HWPhoneProvider;->getPreInstalledIPNumber(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;I)V

    .line 228
    const-string v0, "DROP TABLE IF EXISTS reject_message"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const-string v0, "CREATE TABLE IF NOT EXISTS reject_message (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    const v0, 0x7f06000c

    invoke-static {p1, p0, v0}, Lcom/android/phone/HWPhoneProvider;->getCustomMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;I)V

    .line 238
    :cond_c1
    return-void

    .line 215
    :cond_c2
    const-string v0, "CREATE TABLE IF NOT EXISTS ip_accounts (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    const-string v0, "INSERT INTO ip_accounts (_data) VALUES(\'\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    const-string v0, ""

    invoke-static {p0, v3, v0}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_ab
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v7, 0x1

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, count:I
    sget-object v5, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 438
    .local v3, match:I
    const/4 v4, 0x0

    .line 440
    .local v4, where:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    if-nez v5, :cond_f

    move v1, v0

    .line 529
    .end local v0           #count:I
    .local v1, count:I
    :goto_e
    return v1

    .line 444
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_f
    iget-object v5, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 447
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 449
    packed-switch v3, :pswitch_data_172

    .line 525
    :goto_1e
    :pswitch_1e
    if-lez v0, :cond_2c

    .line 526
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2c
    move v1, v0

    .line 529
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_e

    .line 451
    .end local v1           #count:I
    .restart local v0       #count:I
    :pswitch_2e
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    .line 452
    const-string v4, "_id <> 1 and _subscription = 0"

    .line 453
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 454
    move-object p2, v4

    .line 459
    :goto_3a
    const-string v5, "ip_accounts"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 461
    goto :goto_1e

    .line 456
    :cond_41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3a

    .line 463
    :pswitch_5f
    iput v7, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    .line 464
    const-string v4, "_id <> 2 and _subscription = 1"

    .line 465
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 466
    move-object p2, v4

    .line 470
    :goto_6a
    const-string v5, "ip_accounts"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 473
    goto :goto_1e

    .line 468
    :cond_71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6a

    .line 477
    :pswitch_8f
    const-string v5, "reject_message"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 479
    goto :goto_1e

    .line 482
    :pswitch_96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 483
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 484
    move-object p2, v4

    .line 488
    :goto_ba
    const-string v5, "reject_message"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1e

    .line 486
    :cond_c2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_ba

    .line 494
    :cond_e6
    sparse-switch v3, :sswitch_data_186

    goto/16 :goto_1e

    .line 496
    :sswitch_eb
    const-string v4, "_id <> 1"

    .line 497
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 498
    move-object p2, v4

    .line 502
    :goto_f4
    const-string v5, "ip_accounts"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 504
    goto/16 :goto_1e

    .line 500
    :cond_fc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_f4

    .line 507
    :sswitch_11a
    const-string v5, "reject_message"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 509
    goto/16 :goto_1e

    .line 512
    :sswitch_122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 513
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14e

    .line 514
    move-object p2, v4

    .line 518
    :goto_146
    const-string v5, "reject_message"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1e

    .line 516
    :cond_14e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_146

    .line 449
    :pswitch_data_172
    .packed-switch 0x4
        :pswitch_2e
        :pswitch_5f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_8f
        :pswitch_96
    .end packed-switch

    .line 494
    :sswitch_data_186
    .sparse-switch
        0x1 -> :sswitch_eb
        0xa -> :sswitch_11a
        0xb -> :sswitch_122
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 328
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 345
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :pswitch_12
    return-object v1

    .line 328
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_a
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_a
        :pswitch_a
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 351
    iget-object v6, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    if-nez v6, :cond_b

    move-object v2, v5

    .line 431
    :cond_a
    :goto_a
    return-object v2

    .line 356
    :cond_b
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 358
    .local v1, match:I
    const/4 v2, 0x0

    .line 359
    .local v2, newUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 361
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_1f

    .line 362
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .restart local p2
    :cond_1f
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 368
    sparse-switch v1, :sswitch_data_e0

    .line 401
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 371
    :sswitch_41
    iput v7, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    .line 372
    const-string v6, "_subscription"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v6, "ip_accounts"

    const-string v7, "name"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 374
    .local v3, rowId:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_5e

    .line 375
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 427
    :cond_5e
    :goto_5e
    if-eqz v2, :cond_a

    .line 428
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_a

    .line 382
    .end local v3           #rowId:J
    :sswitch_6c
    iput v10, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    .line 383
    const-string v6, "_subscription"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    const-string v6, "ip_accounts"

    const-string v7, "name"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 385
    .restart local v3       #rowId:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_5e

    .line 386
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_5e

    .line 393
    .end local v3           #rowId:J
    :sswitch_8a
    const-string v6, "reject_message"

    const-string v7, "name"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 394
    .restart local v3       #rowId:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_5e

    .line 395
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->MESSAGE_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_5e

    .line 404
    .end local v3           #rowId:J
    :cond_9d
    sparse-switch v1, :sswitch_data_ee

    .line 423
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 406
    :sswitch_b9
    const-string v6, "ip_accounts"

    const-string v7, "name"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 407
    .restart local v3       #rowId:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_5e

    .line 408
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_5e

    .line 415
    .end local v3           #rowId:J
    :sswitch_cc
    const-string v6, "reject_message"

    const-string v7, "name"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 416
    .restart local v3       #rowId:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_5e

    .line 417
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->MESSAGE_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_5e

    .line 368
    nop

    :sswitch_data_e0
    .sparse-switch
        0x4 -> :sswitch_41
        0x5 -> :sswitch_6c
        0xa -> :sswitch_8a
    .end sparse-switch

    .line 404
    :sswitch_data_ee
    .sparse-switch
        0x1 -> :sswitch_b9
        0xa -> :sswitch_cc
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 158
    new-instance v0, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hwphone.db"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    .line 160
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/HWPhoneProvider;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 165
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/HWPhoneProvider;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/HWPhoneProvider;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    :cond_41
    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 243
    sget-object v2, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 245
    .local v11, table:I
    iget-object v2, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    if-nez v2, :cond_c

    .line 246
    const/4 v9, 0x0

    .line 322
    :cond_b
    :goto_b
    return-object v9

    .line 248
    :cond_c
    iget-object v2, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 249
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 250
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, limit:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_116

    .line 256
    packed-switch v11, :pswitch_data_182

    .line 288
    :pswitch_26
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :pswitch_43
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 259
    const-string v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 260
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 261
    :cond_54
    const-string v2, "_subscription = 0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 316
    :cond_59
    :goto_59
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 318
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_b

    .line 319
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_b

    .line 264
    .end local v9           #c:Landroid/database/Cursor;
    :pswitch_73
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 265
    const-string v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_84

    .line 266
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 267
    :cond_84
    const-string v2, "_subscription = 1"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_59

    .line 270
    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;I)I

    move-result v10

    .line 271
    .local v10, id:I
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_subscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_59

    .line 275
    .end local v10           #id:I
    :pswitch_c6
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;I)I

    move-result v10

    .line 276
    .restart local v10       #id:I
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_subscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_59

    .line 281
    .end local v10           #id:I
    :pswitch_103
    const-string v2, "reject_message"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 282
    const-string v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 283
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_59

    .line 291
    :cond_116
    sparse-switch v11, :sswitch_data_194

    .line 312
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :sswitch_136
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 294
    const-string v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 295
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_59

    .line 299
    :sswitch_149
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;)I

    move-result v10

    .line 300
    .restart local v10       #id:I
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_59

    .line 305
    .end local v10           #id:I
    :sswitch_16e
    const-string v2, "reject_message"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 306
    const-string v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 307
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_59

    .line 256
    nop

    :pswitch_data_182
    .packed-switch 0x4
        :pswitch_43
        :pswitch_73
        :pswitch_8a
        :pswitch_c6
        :pswitch_26
        :pswitch_26
        :pswitch_103
    .end packed-switch

    .line 291
    :sswitch_data_194
    .sparse-switch
        0x1 -> :sswitch_136
        0x3 -> :sswitch_149
        0xa -> :sswitch_16e
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, count:I
    sget-object v5, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 540
    .local v3, match:I
    iget-object v5, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    if-nez v5, :cond_d

    move v1, v0

    .line 561
    .end local v0           #count:I
    .local v1, count:I
    :goto_c
    return v1

    .line 545
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_d
    sget-object v5, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update for uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", initValues="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v5, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 549
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v3, :pswitch_data_54

    .line 558
    :goto_38
    if-lez v0, :cond_46

    .line 559
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_46
    move v1, v0

    .line 561
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_c

    .line 551
    .end local v1           #count:I
    .restart local v0       #count:I
    :pswitch_48
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 552
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "reject_message"

    invoke-virtual {v2, v5, v4, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 553
    goto :goto_38

    .line 549
    :pswitch_data_54
    .packed-switch 0xa
        :pswitch_48
    .end packed-switch
.end method
