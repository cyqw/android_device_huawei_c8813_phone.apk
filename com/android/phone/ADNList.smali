.class public Lcom/android/phone/ADNList;
.super Landroid/app/ListActivity;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ADNList$QueryHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field private static final VIEW_NAMES:[I

.field protected static mCursor:Landroid/database/Cursor;

.field private static maxCount:I


# instance fields
.field protected mCursorAdapter:Landroid/widget/CursorAdapter;

.field protected mEmptyText:Landroid/widget/TextView;

.field protected mInitialSelection:I

.field protected mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

.field mSize:[I

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const-string v1, "emails"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "efid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    .line 80
    new-array v0, v4, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 100
    sput v3, Lcom/android/phone/ADNList;->maxCount:I

    return-void

    .line 80
    nop

    :array_2c
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/phone/ADNList;->mSize:[I

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/ADNList;->mSubscription:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 251
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 60
    sget v0, Lcom/android/phone/ADNList;->maxCount:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    sput p0, Lcom/android/phone/ADNList;->maxCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/phone/ADNList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/ADNList;->setAdapter()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ADNList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/ADNList;->reQuery()V

    return-void
.end method

.method public static getFdnCount()I
    .registers 1

    .prologue
    .line 291
    sget-object v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 292
    sget-object v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 295
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getMaxFdnCount()I
    .registers 1

    .prologue
    .line 302
    sget v0, Lcom/android/phone/ADNList;->maxCount:I

    return v0
.end method

.method protected static isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private query()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    .line 178
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/ADNList$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    .line 181
    return-void
.end method

.method private reQuery()V
    .registers 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 185
    return-void
.end method

.method private setAdapter()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_32

    .line 213
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->newAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 215
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    :goto_f
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    if-ltz v0, :cond_31

    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 221
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setSelection(I)V

    .line 222
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 225
    :cond_31
    return-void

    .line 217
    :cond_32
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    sget-object v1, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_f
.end method


# virtual methods
.method protected displayProgress(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    const v0, 0x7f0e0140

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_24

    const/4 v0, -0x1

    :goto_12
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 242
    return-void

    .line 236
    :cond_16
    invoke-static {p0}, Lcom/android/phone/ADNList;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x7f0e0143

    goto :goto_7

    :cond_20
    const v0, 0x7f0e0141

    goto :goto_7

    .line 239
    :cond_24
    const/4 v0, -0x2

    goto :goto_12
.end method

.method protected getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 306
    sget-object v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public declared-synchronized getFdnSize()V
    .registers 3

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/ADNList$1;

    invoke-direct {v1, p0}, Lcom/android/phone/ADNList$1;-><init>(Lcom/android/phone/ADNList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 136
    monitor-exit p0

    return-void

    .line 119
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .registers 7

    .prologue
    .line 228
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090004

    sget-object v3, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    sget-object v5, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 112
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setContentView(I)V

    .line 113
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    .line 114
    new-instance v0, Lcom/android/phone/ADNList$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ADNList$QueryHandler;-><init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    .line 115
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 141
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 142
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 147
    sget-object v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 148
    sget-object v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 150
    :cond_c
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 157
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredVoiceSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/phone/ADNList;->mSubscription:I

    .line 158
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_27

    .line 159
    iget v1, p0, Lcom/android/phone/ADNList;->mSubscription:I

    if-nez v1, :cond_2c

    .line 160
    const-string v1, "content://iccmsim/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    :cond_27
    :goto_27
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 161
    :cond_2c
    iget v1, p0, Lcom/android/phone/ADNList;->mSubscription:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    .line 162
    const-string v1, "content://iccmsim/adn_sub2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_27

    .line 168
    :cond_3b
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_27

    .line 169
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_27
.end method
