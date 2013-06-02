.class Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "IPCallSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ipcallsetting/IPCallSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustumSimpleCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;


# direct methods
.method public constructor <init>(Lcom/android/phone/ipcallsetting/IPCallSettings;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 13
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 320
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 321
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v9, 0x7f0e0282

    const v6, 0x1020014

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 325
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 327
    const-string v5, "_id"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 329
    .local v4, ipAccount_id:I
    const-string v5, "_data"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, ipAccount_data:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 338
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    #getter for: Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I
    invoke-static {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$000(Lcom/android/phone/ipcallsetting/IPCallSettings;)I

    move-result v5

    invoke-static {p2, v5}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;I)I

    move-result v2

    .line 339
    .local v2, currentIPAccount_id:I
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    #getter for: Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I
    invoke-static {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$000(Lcom/android/phone/ipcallsetting/IPCallSettings;)I

    move-result v5

    invoke-static {p2, v5}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, currentIPAccount_data:Ljava/lang/String;
    if-eq v7, v4, :cond_3e

    const/4 v5, 0x2

    if-ne v5, v4, :cond_47

    .line 343
    :cond_3e
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 344
    .local v0, checkTextView:Landroid/widget/CheckedTextView;
    invoke-virtual {v0, v9}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 362
    .end local v0           #checkTextView:Landroid/widget/CheckedTextView;
    :cond_47
    :goto_47
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    #getter for: Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccountId:I
    invoke-static {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$200(Lcom/android/phone/ipcallsetting/IPCallSettings;)I

    move-result v5

    if-ltz v5, :cond_55

    invoke-static {}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$100()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 365
    :cond_55
    if-ne v4, v2, :cond_8c

    if-eqz v3, :cond_8c

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 368
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 373
    :goto_6e
    invoke-static {}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$100()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 374
    invoke-static {v8}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$102(Z)Z

    .line 388
    :cond_77
    :goto_77
    return-void

    .line 347
    .end local v1           #currentIPAccount_data:Ljava/lang/String;
    .end local v2           #currentIPAccount_id:I
    :cond_78
    invoke-static {p2}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;)I

    move-result v2

    .line 348
    .restart local v2       #currentIPAccount_id:I
    invoke-static {p2}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .restart local v1       #currentIPAccount_data:Ljava/lang/String;
    if-ne v7, v4, :cond_47

    .line 352
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 353
    .restart local v0       #checkTextView:Landroid/widget/CheckedTextView;
    invoke-virtual {v0, v9}, Landroid/widget/CheckedTextView;->setText(I)V

    goto :goto_47

    .line 370
    .end local v0           #checkTextView:Landroid/widget/CheckedTextView;
    :cond_8c
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_6e

    .line 380
    :cond_9c
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    #getter for: Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccountId:I
    invoke-static {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$200(Lcom/android/phone/ipcallsetting/IPCallSettings;)I

    move-result v5

    if-ne v4, v5, :cond_c2

    if-eqz v3, :cond_c2

    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    #getter for: Lcom/android/phone/ipcallsetting/IPCallSettings;->mIpAccount:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$300(Lcom/android/phone/ipcallsetting/IPCallSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 383
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_77

    .line 385
    :cond_c2
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_77
.end method
