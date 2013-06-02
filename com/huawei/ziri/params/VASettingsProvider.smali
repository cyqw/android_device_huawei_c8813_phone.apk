.class public Lcom/huawei/ziri/params/VASettingsProvider;
.super Landroid/content/ContentProvider;
.source "VASettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final MATCHER:Landroid/content/UriMatcher;

.field private static sNotesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOpenHelper:Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 83
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/huawei/ziri/params/VASettingsProvider;->MATCHER:Landroid/content/UriMatcher;

    .line 84
    sget-object v0, Lcom/huawei/ziri/params/VASettingsProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.ziri"

    const-string v2, "service"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/huawei/ziri/params/VASettingsProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.ziri"

    const-string v2, "service/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ziri/params/VASettingsProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    .line 88
    sget-object v0, Lcom/huawei/ziri/params/VASettingsProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/huawei/ziri/params/VASettingsProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/huawei/ziri/params/VASettingsProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 94
    return-void
.end method

.method private static isVoiceBroadcast(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, broadcast:Z
    invoke-static {p0}, Lcom/huawei/ziri/params/VASettingsProvider;->queryVoiceBroadcast(Landroid/content/Context;)I

    move-result v1

    .line 309
    .local v1, notify:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 310
    const/4 v0, 0x1

    .line 312
    :cond_9
    return v0
.end method

.method public static isVoiceCallNotify(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 322
    invoke-static {p0}, Lcom/huawei/ziri/params/VASettingsProvider;->isVoiceBroadcast(Landroid/content/Context;)Z

    move-result v0

    .line 323
    .local v0, isNotify:Z
    if-eqz v0, :cond_e

    .line 324
    invoke-static {p0}, Lcom/huawei/ziri/params/VASettingsProvider;->queryVoiceNotify(Landroid/content/Context;)I

    move-result v1

    .line 325
    .local v1, notify:I
    packed-switch v1, :pswitch_data_12

    .line 331
    const/4 v0, 0x0

    .line 335
    .end local v1           #notify:I
    :cond_e
    :goto_e
    return v0

    .line 328
    .restart local v1       #notify:I
    :pswitch_f
    const/4 v0, 0x1

    .line 329
    goto :goto_e

    .line 325
    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public static queryVoiceBroadcast(Landroid/content/Context;)I
    .registers 10
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 388
    if-nez p0, :cond_5

    .line 416
    :cond_4
    :goto_4
    return v8

    .line 391
    :cond_5
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    const/4 v0, 0x1

    const-string v1, "value"

    aput-object v1, v2, v0

    .line 395
    .local v2, columns:[Ljava/lang/String;
    const/4 v8, -0x1

    .line 396
    .local v8, type:I
    const-string v7, ""

    .line 398
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/ziri/params/VASettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "name = \'BroadCast\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 402
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_47

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 404
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 405
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 409
    :goto_3d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 413
    :goto_40
    const/4 v0, -0x1

    if-ne v0, v8, :cond_4

    .line 414
    const/4 v8, 0x1

    goto :goto_4

    .line 407
    :cond_45
    const/4 v8, -0x1

    goto :goto_3d

    .line 411
    :cond_47
    const/4 v8, -0x1

    goto :goto_40
.end method

.method public static queryVoiceNotify(Landroid/content/Context;)I
    .registers 10
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 345
    if-nez p0, :cond_5

    .line 347
    const/4 v8, 0x3

    .line 378
    :goto_4
    return v8

    .line 350
    :cond_5
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "value"

    aput-object v1, v2, v0

    .line 355
    .local v2, columns:[Ljava/lang/String;
    const/4 v8, 0x3

    .line 357
    .local v8, type:I
    const-string v7, ""

    .line 359
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/ziri/params/VASettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "name = \'OpenNotify\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 363
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_44

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 365
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 366
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 372
    :goto_3e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 369
    :cond_42
    const/4 v8, 0x3

    goto :goto_3e

    .line 375
    :cond_44
    const/4 v8, 0x3

    goto :goto_4
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 231
    iget-object v4, p0, Lcom/huawei/ziri/params/VASettingsProvider;->mOpenHelper:Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 233
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/huawei/ziri/params/VASettingsProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_88

    .line 253
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 235
    :pswitch_28
    const-string v4, "service"

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 255
    .local v0, count:I
    :goto_2e
    invoke-virtual {p0}, Lcom/huawei/ziri/params/VASettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 256
    return v0

    .line 239
    .end local v0           #count:I
    :pswitch_3b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    .local v2, noteId:Ljava/lang/String;
    const-string v3, ""

    .line 241
    .local v3, temp:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    :goto_67
    const-string v4, "service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 250
    .restart local v0       #count:I
    goto :goto_2e

    .line 244
    .end local v0           #count:I
    :cond_85
    const-string v3, ""

    goto :goto_67

    .line 233
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_28
        :pswitch_3b
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 172
    sget-object v0, Lcom/huawei/ziri/params/VASettingsProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 13
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 191
    sget-object v7, Lcom/huawei/ziri/params/VASettingsProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_22

    .line 192
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 195
    :cond_22
    if-eqz p2, :cond_79

    .line 196
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 200
    .local v6, values:Landroid/content/ContentValues;
    :goto_29
    const-string v7, "name"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 201
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 202
    .local v3, r:Landroid/content/res/Resources;
    const-string v7, "name"

    const v8, 0x104000f

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v3           #r:Landroid/content/res/Resources;
    :cond_41
    const-string v7, "value"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_50

    .line 205
    const-string v7, "value"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_50
    iget-object v7, p0, Lcom/huawei/ziri/params/VASettingsProvider;->mOpenHelper:Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 208
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, 0x0

    .line 210
    .local v4, rowId:J
    :try_start_58
    const-string v7, "service"

    const-string v8, "value"

    invoke-virtual {v0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5f} :catch_7f

    move-result-wide v4

    .line 215
    :goto_60
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_84

    .line 216
    sget-object v7, Lcom/huawei/ziri/params/VASettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 217
    .local v2, noteUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/huawei/ziri/params/VASettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 218
    return-object v2

    .line 198
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #noteUri:Landroid/net/Uri;
    .end local v4           #rowId:J
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_79
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .restart local v6       #values:Landroid/content/ContentValues;
    goto :goto_29

    .line 211
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #rowId:J
    :catch_7f
    move-exception v1

    .line 212
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60

    .line 220
    .end local v1           #e:Ljava/lang/Exception;
    :cond_84
    new-instance v7, Landroid/database/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to insert row into "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 128
    new-instance v0, Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/huawei/ziri/params/VASettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/ziri/params/VASettingsProvider;->mOpenHelper:Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 143
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 144
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/huawei/ziri/params/VASettingsProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_7a

    .line 157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :pswitch_28
    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 147
    sget-object v2, Lcom/huawei/ziri/params/VASettingsProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 159
    :goto_32
    const-string v7, ""

    .line 160
    .local v7, orderBy:Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ziri/params/VASettingsProvider;->mOpenHelper:Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 161
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 162
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/huawei/ziri/params/VASettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 163
    return-object v8

    .line 151
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_4e
    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 152
    sget-object v2, Lcom/huawei/ziri/params/VASettingsProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 144
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_4e
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 268
    iget-object v5, p0, Lcom/huawei/ziri/params/VASettingsProvider;->mOpenHelper:Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/huawei/ziri/params/VASettingsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 269
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 271
    .local v0, count:I
    :try_start_7
    sget-object v5, Lcom/huawei/ziri/params/VASettingsProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_8e

    .line 291
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_29

    .line 293
    :catch_29
    move-exception v2

    .line 294
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 296
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2d
    invoke-virtual {p0}, Lcom/huawei/ziri/params/VASettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 297
    return v0

    .line 273
    :pswitch_3a
    :try_start_3a
    const-string v5, "service"

    invoke-virtual {v1, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 274
    goto :goto_2d

    .line 277
    :pswitch_41
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 278
    .local v3, noteId:Ljava/lang/String;
    const-string v4, ""

    .line 279
    .local v4, temp:Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    :goto_6d
    const-string v5, "service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 288
    goto :goto_2d

    .line 282
    :cond_8b
    const-string v4, ""
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_8d} :catch_29

    goto :goto_6d

    .line 271
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_41
    .end packed-switch
.end method
