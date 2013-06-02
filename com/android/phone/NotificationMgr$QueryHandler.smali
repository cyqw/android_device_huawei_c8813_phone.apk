.class Lcom/android/phone/NotificationMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    .line 364
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 365
    return-void
.end method

.method private final getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 459
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;-><init>(Lcom/android/phone/NotificationMgr$QueryHandler;Lcom/android/phone/NotificationMgr$1;)V

    .line 460
    .local v0, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 461
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 462
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    .line 463
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    .line 469
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 472
    :cond_4a
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 476
    :cond_4c
    return-object v0
.end method


# virtual methods
.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .registers 14
    .parameter "token"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "cookie"

    .prologue
    .line 450
    move-object v8, p4

    check-cast v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 451
    .local v8, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    iget-wide v6, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 452
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 19
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 386
    packed-switch p1, :pswitch_data_a8

    .line 445
    :cond_3
    :goto_3
    return-void

    .line 390
    :pswitch_4
    if-eqz p3, :cond_3

    .line 391
    :goto_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 394
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr$QueryHandler;->getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    move-result-object v3

    .line 397
    .local v3, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v1

    const/4 v2, -0x2

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v5, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "number"

    invoke-virtual/range {v1 .. v8}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 402
    .end local v3           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :cond_2b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 408
    :pswitch_2f
    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    move-object/from16 v3, p2

    .line 409
    check-cast v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 411
    .restart local v3       #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    const/4 v12, 0x0

    .line 412
    .local v12, personUri:Landroid/net/Uri;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 413
    const-string v1, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 415
    const-string v1, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 417
    .local v13, person_id:J
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 420
    .end local v13           #person_id:J
    :cond_62
    if-eqz v12, :cond_8d

    .line 421
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_80

    .line 422
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start obtaining picture for the missed call. Uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 428
    :cond_80
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v2, v2, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v12, p0, v3}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 440
    :goto_88
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 431
    :cond_8d
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_98

    .line 432
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "Failed to find Uri for obtaining photo. Just send notification without it."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 437
    :cond_98
    iget-object v4, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v5, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    invoke-virtual/range {v4 .. v11}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto :goto_88

    .line 386
    :pswitch_data_a8
    .packed-switch -0x2
        :pswitch_2f
        :pswitch_4
    .end packed-switch
.end method
