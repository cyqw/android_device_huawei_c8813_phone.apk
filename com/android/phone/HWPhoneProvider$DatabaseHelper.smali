.class final Lcom/android/phone/HWPhoneProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HWPhoneProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HWPhoneProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "name"

    .prologue
    .line 989
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 990
    iput-object p1, p0, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 991
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x2

    #calls: Lcom/android/phone/HWPhoneProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {v0, p1, v1, v2}, Lcom/android/phone/HWPhoneProvider;->access$100(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 999
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    #calls: Lcom/android/phone/HWPhoneProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/phone/HWPhoneProvider;->access$100(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1009
    return-void
.end method
