.class public Lcom/android/phone/FdnList;
.super Lcom/android/phone/ADNList;
.source "FdnList.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    return-void
.end method

.method private editSelected()V
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->editSelected(I)V

    .line 149
    return-void
.end method


# virtual methods
.method protected addContact()V
    .registers 3

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    const-class v1, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method protected deleteSelected()V
    .registers 7

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 185
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 191
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 196
    const-class v5, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    const-string v5, "name"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "number"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "efid"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v1, "index"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v4}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 206
    :cond_43
    return-void
.end method

.method protected editSelected(I)V
    .registers 8
    .parameter

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 157
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 158
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 169
    const-class v5, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    const-string v5, "name"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "number"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "efid"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "index"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v4}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 179
    :cond_3f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    :cond_d
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0e012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 81
    const/4 v1, 0x2

    const v2, 0x7f0e012e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 83
    const/4 v1, 0x3

    const v2, 0x7f0e012f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 85
    return v4
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 130
    invoke-virtual {p0, p3}, Lcom/android/phone/FdnList;->editSelected(I)V

    .line 131
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_32

    .line 124
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 104
    :sswitch_d
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FdnSetting;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->finish()V

    goto :goto_c

    .line 112
    :sswitch_25
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->addContact()V

    goto :goto_c

    .line 116
    :sswitch_29
    invoke-direct {p0}, Lcom/android/phone/FdnList;->editSelected()V

    goto :goto_c

    .line 120
    :sswitch_2d
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->deleteSelected()V

    goto :goto_c

    .line 102
    nop

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_29
        0x3 -> :sswitch_2d
        0x102002c -> :sswitch_d
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 91
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v2

    if-ltz v2, :cond_23

    move v0, v1

    .line 93
    .local v0, hasSelection:Z
    :goto_b
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 97
    return v1

    .line 91
    .end local v0           #hasSelection:Z
    :cond_23
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://icc/fdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
