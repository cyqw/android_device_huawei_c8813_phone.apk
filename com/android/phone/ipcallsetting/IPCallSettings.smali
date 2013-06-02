.class public Lcom/android/phone/ipcallsetting/IPCallSettings;
.super Landroid/app/ListActivity;
.source "IPCallSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mCurrentIpAccountIsDel:Z


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mIpAccount:Ljava/lang/String;

.field private mIpAccountId:I

.field private mItemCount:I

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string v0, "IPCallSettings"

    sput-object v0, Lcom/android/phone/ipcallsetting/IPCallSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    .line 317
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ipcallsetting/IPCallSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCurrentIpAccountIsDel:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    sput-boolean p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCurrentIpAccountIsDel:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/ipcallsetting/IPCallSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccountId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/ipcallsetting/IPCallSettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccount:Ljava/lang/String;

    return-object v0
.end method

.method private addNewIPAccount()V
    .registers 4

    .prologue
    .line 255
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    :goto_14
    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->startActivity(Landroid/content/Intent;)V

    .line 266
    return-void

    .line 261
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    const-string v1, "com.android.ipcallsetting.INPUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_14
.end method

.method private init()V
    .registers 11

    .prologue
    .line 104
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 106
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    if-nez v1, :cond_65

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    :goto_10
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCursor:Landroid/database/Cursor;

    .line 112
    :goto_1b
    new-instance v0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;

    const v3, 0x109000f

    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v6, v1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;-><init>(Lcom/android/phone/ipcallsetting/IPCallSettings;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mAdapter:Landroid/widget/ListAdapter;

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 120
    .local v9, listView:Landroid/widget/ListView;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 121
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 124
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 125
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040001

    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 127
    .local v7, headerView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 129
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    return-void

    .line 106
    .end local v7           #headerView:Landroid/view/View;
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #listView:Landroid/widget/ListView;
    :cond_65
    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    goto :goto_10

    .line 109
    :cond_68
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCursor:Landroid/database/Cursor;

    goto :goto_1b
.end method

.method private registerOnCreateContextMenuListener()V
    .registers 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/phone/ipcallsetting/IPCallSettings$1;

    invoke-direct {v1, p0}, Lcom/android/phone/ipcallsetting/IPCallSettings$1;-><init>(Lcom/android/phone/ipcallsetting/IPCallSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 171
    return-void
.end method


# virtual methods
.method public createDeleteContextMenu(Landroid/view/ContextMenu;I)V
    .registers 6
    .parameter "menu"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 179
    const/4 v0, 0x1

    const v1, 0x7f0e0279

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    invoke-direct {v1, p0, p2}, Lcom/android/phone/ipcallsetting/IPCallSettings$2;-><init>(Lcom/android/phone/ipcallsetting/IPCallSettings;I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 222
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->setContentView(I)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccountId:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccount:Ljava/lang/String;

    .line 80
    iput v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mItemCount:I

    .line 83
    sput-boolean v2, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCurrentIpAccountIsDel:Z

    .line 87
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 89
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    .line 95
    :goto_27
    invoke-direct {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->init()V

    .line 97
    invoke-direct {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->registerOnCreateContextMenuListener()V

    .line 98
    return-void

    .line 91
    :cond_2e
    sget-object v0, Lcom/android/phone/ipcallsetting/IPCallSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "else part is executed mSubscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 311
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_9
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 315
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "listView"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 271
    if-nez p3, :cond_6

    .line 274
    invoke-direct {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->addNewIPAccount()V

    .line 298
    :goto_5
    return-void

    .line 277
    :cond_6
    if-lez p3, :cond_37

    .line 279
    iput p3, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mItemCount:I

    .line 281
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 282
    .local v0, c:Landroid/database/Cursor;
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccountId:I

    .line 284
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccount:Ljava/lang/String;

    .line 289
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 291
    iget v1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccountId:I

    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccount:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    invoke-static {p0, v1, v2, v3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 297
    .end local v0           #c:Landroid/database/Cursor;
    :cond_37
    :goto_37
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_5

    .line 293
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_3b
    iget v1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccountId:I

    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccount:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_37
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 242
    :goto_7
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 237
    :pswitch_c
    invoke-direct {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->addNewIPAccount()V

    goto :goto_7

    .line 235
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 227
    const/4 v0, 0x1

    const v1, 0x7f0e0277

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 230
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 302
    iget v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mItemCount:I

    if-lez v0, :cond_b

    .line 303
    iget v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccountId:I

    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccount:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;)V

    .line 305
    :cond_b
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 306
    return-void
.end method
