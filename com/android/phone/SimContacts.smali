.class public Lcom/android/phone/SimContacts;
.super Lcom/android/phone/ADNList;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimContacts$deleteAllSimContactsThread;,
        Lcom/android/phone/SimContacts$ImportAllSimContactsThread;,
        Lcom/android/phone/SimContacts$NamePhoneTypePair;
    }
.end annotation


# static fields
.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    .line 681
    new-instance v0, Lcom/android/phone/SimContacts$4;

    invoke-direct {v0, p0}, Lcom/android/phone/SimContacts$4;-><init>(Lcom/android/phone/SimContacts;)V

    iput-object v0, p0, Lcom/android/phone/SimContacts;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimContacts;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-static {p0, p1, p2}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SimContacts;Landroid/database/Cursor;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/phone/SimContacts;->actuallyDeleteOneSimContact(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/SimContacts;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SimContacts;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method private actuallyDeleteOneSimContact(Landroid/database/Cursor;)I
    .registers 11
    .parameter "cursor"

    .prologue
    .line 533
    new-instance v1, Lcom/android/phone/SimContacts$NamePhoneTypePair;

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/phone/SimContacts$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 535
    .local v1, namePhoneTypePair:Lcom/android/phone/SimContacts$NamePhoneTypePair;
    iget-object v0, v1, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 536
    .local v0, name:Ljava/lang/String;
    iget v3, v1, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 537
    .local v3, phoneType:I
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 540
    .local v5, uri:Landroid/net/Uri;
    const/4 v4, -0x1

    .line 541
    .local v4, result:I
    if-eqz v5, :cond_41

    .line 542
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND number="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 547
    :goto_40
    return v4

    .line 545
    :cond_41
    const-string v6, "SimContacts"

    const-string v7, "actuallyDeleteOneSimContact: uri is null!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .registers 23
    .parameter "cursor"
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 191
    new-instance v11, Lcom/android/phone/SimContacts$NamePhoneTypePair;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lcom/android/phone/SimContacts$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 193
    .local v11, namePhoneTypePair:Lcom/android/phone/SimContacts$NamePhoneTypePair;
    iget-object v10, v11, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 194
    .local v10, name:Ljava/lang/String;
    iget v14, v11, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 195
    .local v14, phoneType:I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 196
    .local v13, phoneNumber:Ljava/lang/String;
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, emailAddresses:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_f6

    .line 199
    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, emailAddressArray:[Ljava/lang/String;
    :goto_2a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v12, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v15, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 208
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v9, 0x0

    .line 209
    .local v9, myGroupsId:Ljava/lang/String;
    if-eqz p2, :cond_f9

    .line 210
    const-string v15, "account_name"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 211
    const-string v15, "account_type"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 215
    :goto_52
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 218
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 219
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 220
    const-string v15, "data1"

    invoke-virtual {v2, v15, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 221
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 224
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 225
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 226
    const-string v15, "data2"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 227
    const-string v15, "data1"

    invoke-virtual {v2, v15, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 228
    const-string v15, "is_primary"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 229
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    if-eqz v6, :cond_100

    .line 232
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_be
    if-ge v7, v8, :cond_100

    aget-object v4, v1, v7

    .line 233
    .local v4, emailAddress:Ljava/lang/String;
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 234
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 235
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 236
    const-string v15, "data2"

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 237
    const-string v15, "data1"

    invoke-virtual {v2, v15, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 238
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v7, v7, 0x1

    goto :goto_be

    .line 201
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #emailAddress:Ljava/lang/String;
    .end local v5           #emailAddressArray:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #myGroupsId:Ljava/lang/String;
    .end local v12           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_f6
    const/4 v5, 0x0

    .restart local v5       #emailAddressArray:[Ljava/lang/String;
    goto/16 :goto_2a

    .line 213
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v9       #myGroupsId:Ljava/lang/String;
    .restart local v12       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_f9
    sget-object v15, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_52

    .line 242
    :cond_100
    if-eqz v9, :cond_126

    .line 243
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 244
    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 245
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 246
    const-string v15, "group_sourceid"

    invoke-virtual {v2, v15, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 247
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_126
    :try_start_126
    const-string v15, "com.android.contacts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_12d
    .catch Landroid/os/RemoteException; {:try_start_126 .. :try_end_12d} :catch_12e
    .catch Landroid/content/OperationApplicationException; {:try_start_126 .. :try_end_12d} :catch_153

    .line 257
    :goto_12d
    return-void

    .line 252
    :catch_12e
    move-exception v3

    .line 253
    .local v3, e:Landroid/os/RemoteException;
    const-string v15, "SimContacts"

    const-string v16, "%s: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    .line 254
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_153
    move-exception v3

    .line 255
    .local v3, e:Landroid/content/OperationApplicationException;
    const-string v15, "SimContacts"

    const-string v16, "%s: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d
.end method

.method private deleteOneSimContact(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 514
    sget-object v0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 515
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/SimContacts$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SimContacts$1;-><init>(Lcom/android/phone/SimContacts;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 530
    :goto_15
    return-void

    .line 528
    :cond_16
    const v0, 0x7f0e045a

    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_15
.end method

.method private dialNumber(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 460
    sget-object v2, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 461
    sget-object v2, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, phoneNumber:Ljava/lang/String;
    if-eqz v1, :cond_17

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 463
    :cond_17
    const-string v2, "SimContacts"

    const-string v3, " There is no number in contact ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 467
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->startActivity(Landroid/content/Intent;)V

    .line 470
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->finish()V

    .line 474
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #phoneNumber:Ljava/lang/String;
    :goto_37
    return-void

    .line 472
    :cond_38
    const v2, 0x7f0e045a

    invoke-virtual {p0, v2}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_37
.end method

.method private editOneSimContact(I)V
    .registers 8
    .parameter "position"

    .prologue
    .line 551
    sget-object v4, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 552
    new-instance v1, Lcom/android/phone/SimContacts$NamePhoneTypePair;

    sget-object v4, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/phone/SimContacts$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 554
    .local v1, namePhoneTypePair:Lcom/android/phone/SimContacts$NamePhoneTypePair;
    iget-object v0, v1, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 555
    .local v0, name:Ljava/lang/String;
    iget v3, v1, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 556
    .local v3, phoneType:I
    sget-object v4, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, phoneNumber:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/phone/SimContacts;->showContactScreen(Ljava/lang/String;Ljava/lang/String;I)V

    .line 561
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #namePhoneTypePair:Lcom/android/phone/SimContacts$NamePhoneTypePair;
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v3           #phoneType:I
    :goto_23
    return-void

    .line 559
    :cond_24
    const v4, 0x7f0e045a

    invoke-virtual {p0, v4}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_23
.end method

.method private importOneSimContact(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 262
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 263
    .local v0, cur:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 264
    iget-object v2, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v1, v2}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    .line 269
    :goto_13
    return-void

    .line 267
    :cond_14
    const-string v2, "SimContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to move the cursor to the position \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 618
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 619
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const-string v1, "Result..."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 620
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 621
    const-string v1, "OK"

    new-instance v2, Lcom/android/phone/SimContacts$3;

    invoke-direct {v2, p0}, Lcom/android/phone/SimContacts$3;-><init>(Lcom/android/phone/SimContacts;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 627
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 628
    return-void
.end method

.method private showContactScreen(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "name"
    .parameter "phoneNumber"
    .parameter "requestCode"

    .prologue
    .line 564
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 565
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.ContactScreenActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v1, "NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v1, "PHONE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0, v0, p3}, Lcom/android/phone/SimContacts;->startActivityForResult(Landroid/content/Intent;I)V

    .line 569
    return-void
.end method

.method private smsToNumber(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 447
    sget-object v2, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 448
    sget-object v2, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 452
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->startActivity(Landroid/content/Intent;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->finish()V

    .line 457
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #phoneNumber:Ljava/lang/String;
    :goto_27
    return-void

    .line 455
    :cond_28
    const v2, 0x7f0e045a

    invoke-virtual {p0, v2}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_27
.end method


# virtual methods
.method protected getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 698
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 298
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f04002f

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 574
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/ADNList;->onActivityResult(IILandroid/content/Intent;)V

    .line 575
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/SimContacts$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/phone/SimContacts$2;-><init>(Lcom/android/phone/SimContacts;IILandroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 615
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 704
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 705
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 419
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 420
    .local v0, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    instance-of v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_19

    .line 421
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local v0           #menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 426
    .local v1, position:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_32

    .line 443
    :pswitch_14
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .end local v1           #position:I
    :goto_18
    return v2

    .line 424
    .restart local v0       #menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_19
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_18

    .line 428
    .end local v0           #menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    .restart local v1       #position:I
    :pswitch_1e
    invoke-direct {p0, v1}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    goto :goto_18

    .line 431
    :pswitch_22
    invoke-direct {p0, v1}, Lcom/android/phone/SimContacts;->editOneSimContact(I)V

    goto :goto_18

    .line 434
    :pswitch_26
    invoke-direct {p0, v1}, Lcom/android/phone/SimContacts;->smsToNumber(I)V

    goto :goto_18

    .line 437
    :pswitch_2a
    invoke-direct {p0, v1}, Lcom/android/phone/SimContacts;->dialNumber(I)V

    goto :goto_18

    .line 440
    :pswitch_2e
    invoke-direct {p0, v1}, Lcom/android/phone/SimContacts;->deleteOneSimContact(I)V

    goto :goto_18

    .line 426
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 278
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_28

    .line 279
    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, accountName:Ljava/lang/String;
    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 282
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    .line 286
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    :cond_28
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/SimContacts;->registerForContextMenu(Landroid/view/View;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 289
    .local v2, actionBar:Landroid/app/ActionBar;
    if-eqz v2, :cond_39

    .line 291
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 293
    :cond_39
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 633
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_40

    move-object v0, p3

    .line 634
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 636
    .local v0, itemInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 637
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_1c

    .line 638
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 640
    :cond_1c
    const/4 v2, 0x1

    const v3, 0x7f0e01ad

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 642
    const/4 v2, 0x5

    const v3, 0x7f0e044b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 643
    const/4 v2, 0x6

    const v3, 0x7f0e044c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 644
    const/4 v2, 0x7

    const v3, 0x7f0e044d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 645
    const/16 v2, 0x8

    const v3, 0x7f0e0279

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 648
    .end local v0           #itemInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_40
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 319
    const/4 v0, 0x2

    const v1, 0x7f0e01ae

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 321
    const/4 v0, 0x3

    const v1, 0x7f0e0449

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 322
    const/4 v0, 0x4

    const v1, 0x7f0e0448

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 657
    packed-switch p1, :pswitch_data_48

    .line 678
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/phone/ADNList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_8
    :goto_8
    return v2

    .line 660
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 661
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, phoneNumber:Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 668
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 670
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1080

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 672
    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->startActivity(Landroid/content/Intent;)V

    .line 673
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->finish()V

    goto :goto_8

    .line 657
    nop

    :pswitch_data_48
    .packed-switch 0x5
        :pswitch_9
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 652
    invoke-direct {p0, p3}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    .line 653
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 13
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    const v8, 0x7f0e002d

    const/4 v9, -0x2

    const/4 v6, 0x1

    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_ac

    .line 404
    :goto_d
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_11
    return v6

    .line 351
    :sswitch_12
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 352
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "com.android.contacts"

    const-string v8, "com.android.contacts.activities.PeopleActivity"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const/high16 v7, 0x400

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v2}, Lcom/android/phone/SimContacts;->startActivity(Landroid/content/Intent;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->finish()V

    goto :goto_11

    .line 359
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_2a
    const v7, 0x7f0e0449

    invoke-virtual {p0, v7}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, title:Ljava/lang/CharSequence;
    const v7, 0x7f0e044a

    invoke-virtual {p0, v7}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, message:Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;

    invoke-direct {v1, p0}, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;-><init>(Lcom/android/phone/SimContacts;)V

    .line 362
    .local v1, deleteThread:Lcom/android/phone/SimContacts$deleteAllSimContactsThread;
    sget-object v7, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    if-nez v7, :cond_4c

    .line 363
    const v6, 0x7f0e045a

    invoke-virtual {p0, v6}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_d

    .line 366
    :cond_4c
    invoke-virtual {p0, v5, v3}, Lcom/android/phone/SimContacts;->prepareProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 367
    iget-object v7, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v8}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 369
    iget-object v7, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 370
    invoke-virtual {v1}, Lcom/android/phone/SimContacts$deleteAllSimContactsThread;->start()V

    goto :goto_11

    .line 373
    .end local v1           #deleteThread:Lcom/android/phone/SimContacts$deleteAllSimContactsThread;
    .end local v3           #message:Ljava/lang/CharSequence;
    .end local v5           #title:Ljava/lang/CharSequence;
    :sswitch_61
    invoke-direct {p0, v10, v10, v6}, Lcom/android/phone/SimContacts;->showContactScreen(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_11

    .line 378
    :sswitch_65
    const v7, 0x7f0e01ae

    invoke-virtual {p0, v7}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 379
    .restart local v5       #title:Ljava/lang/CharSequence;
    const v7, 0x7f0e01af

    invoke-virtual {p0, v7}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 382
    .restart local v3       #message:Ljava/lang/CharSequence;
    new-instance v4, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    invoke-direct {v4, p0}, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;-><init>(Lcom/android/phone/SimContacts;)V

    .line 386
    .local v4, thread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 387
    .local v0, cur:Landroid/database/Cursor;
    if-nez v0, :cond_86

    .line 388
    const-string v6, "SimContacts"

    const-string v7, "cursor is null. Ignore silently."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 392
    :cond_86
    invoke-virtual {p0, v5, v3}, Lcom/android/phone/SimContacts;->prepareProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 394
    iget-object v7, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v8}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 396
    iget-object v7, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 397
    iget-object v7, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 399
    iget-object v7, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 400
    invoke-virtual {v4}, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->start()V

    goto/16 :goto_11

    .line 349
    nop

    :sswitch_data_ac
    .sparse-switch
        0x2 -> :sswitch_65
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_61
        0x102002c -> :sswitch_12
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 329
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 330
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1d

    .line 332
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_38

    move v1, v2

    :goto_1a
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 336
    :cond_1d
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_33

    .line 338
    sget-object v1, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3a

    :goto_30
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 341
    :cond_33
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_38
    move v1, v3

    .line 332
    goto :goto_1a

    :cond_3a
    move v2, v3

    .line 338
    goto :goto_30
.end method

.method prepareProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "title"
    .parameter "message"

    .prologue
    .line 408
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 409
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 412
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 413
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 414
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 306
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 307
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 309
    const-string v1, "index"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/phone/SimContacts;->mInitialSelection:I

    .line 313
    :cond_24
    :goto_24
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 310
    :cond_29
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 311
    iput v3, p0, Lcom/android/phone/SimContacts;->mInitialSelection:I

    goto :goto_24
.end method
