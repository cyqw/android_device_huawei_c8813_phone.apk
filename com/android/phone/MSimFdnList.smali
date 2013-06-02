.class public Lcom/android/phone/MSimFdnList;
.super Lcom/android/phone/FdnList;
.source "MSimFdnList.java"


# instance fields
.field private mSubscription:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/phone/FdnList;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    return-void
.end method


# virtual methods
.method protected addContact()V
    .registers 4

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-class v1, Lcom/android/phone/MSimEditFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimFdnList;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method protected deleteSelected()V
    .registers 6

    .prologue
    .line 95
    sget-object v0, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/phone/MSimFdnList;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 96
    sget-object v0, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 100
    const-string v3, "subscription"

    iget v4, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-class v3, Lcom/android/phone/MSimDeleteFdnContactScreen;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v0, "number"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimFdnList;->startActivity(Landroid/content/Intent;)V

    .line 106
    :cond_38
    return-void
.end method

.method protected editSelected(I)V
    .registers 7
    .parameter

    .prologue
    .line 80
    sget-object v0, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 81
    sget-object v0, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 85
    const-string v3, "subscription"

    iget v4, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-class v3, Lcom/android/phone/MSimEditFdnContactScreen;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v0, "number"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimFdnList;->startActivity(Landroid/content/Intent;)V

    .line 91
    :cond_34
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/phone/FdnList;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 48
    :cond_9
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/phone/MSimFdnList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/MSimFdnList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    .line 54
    iget v1, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    if-nez v1, :cond_23

    .line 55
    const-string v1, "content://iccmsim/fdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    :cond_1e
    :goto_1e
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 56
    :cond_23
    iget v1, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 57
    const-string v1, "content://iccmsim/fdn_sub2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1e
.end method
