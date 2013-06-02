.class public Lcom/android/phone/MSimEditFdnContactScreen;
.super Lcom/android/phone/EditFdnContactScreen;
.source "MSimEditFdnContactScreen.java"


# static fields
.field private static mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;-><init>()V

    return-void
.end method


# virtual methods
.method protected addContact()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MSimEditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 87
    invoke-virtual {p0, v5, v4}, Lcom/android/phone/MSimEditFdnContactScreen;->handleResult(ZZ)V

    .line 108
    :goto_f
    return-void

    .line 91
    :cond_10
    invoke-static {}, Lcom/android/phone/FdnList;->getFdnCount()I

    move-result v2

    invoke-static {}, Lcom/android/phone/FdnList;->getMaxFdnCount()I

    move-result v3

    if-lt v2, v3, :cond_1e

    .line 92
    invoke-virtual {p0, v4}, Lcom/android/phone/MSimEditFdnContactScreen;->handleResult(Z)V

    goto :goto_f

    .line 96
    :cond_1e
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v1

    .line 98
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 99
    .local v0, bundle:Landroid/content/ContentValues;
    const-string v2, "tag"

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "number"

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "pin2"

    iget-object v3, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "subscription"

    sget v3, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    new-instance v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 105
    iget-object v2, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3, v1, v0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 106
    invoke-virtual {p0, v4}, Lcom/android/phone/MSimEditFdnContactScreen;->displayProgress(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0135

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MSimEditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method protected deleteSelected()V
    .registers 4

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_26

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    const-class v1, Lcom/android/phone/MSimDeleteFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "subscription"

    sget v2, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimEditFdnContactScreen;->startActivity(Landroid/content/Intent;)V

    .line 146
    :cond_26
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->finish()V

    .line 147
    return-void
.end method

.method protected getContentURI()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 73
    sget v0, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    if-nez v0, :cond_b

    .line 74
    const-string v0, "content://iccmsim/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    :goto_a
    return-object v0

    .line 75
    :cond_b
    sget v0, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 76
    const-string v0, "content://iccmsim/fdn_sub2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_a

    .line 80
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 55
    :cond_9
    return-void
.end method

.method protected resolveIntent()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mName:Ljava/lang/String;

    .line 62
    const-string v2, "number"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    .line 66
    iget-object v2, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v1, 0x1

    :cond_32
    iput-boolean v1, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mAddContact:Z

    .line 69
    return-void
.end method

.method protected updateContact()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimEditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 113
    invoke-virtual {p0, v1, v7}, Lcom/android/phone/MSimEditFdnContactScreen;->handleResult(ZZ)V

    .line 130
    :goto_10
    return-void

    .line 116
    :cond_11
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    .line 118
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v4, bundle:Landroid/content/ContentValues;
    const-string v0, "tag"

    iget-object v5, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "number"

    iget-object v5, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "newTag"

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "newNumber"

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "pin2"

    iget-object v5, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "subscription"

    sget v5, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 127
    iget-object v0, p0, Lcom/android/phone/MSimEditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v7}, Lcom/android/phone/MSimEditFdnContactScreen;->displayProgress(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimEditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method
