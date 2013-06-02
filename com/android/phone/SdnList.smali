.class public Lcom/android/phone/SdnList;
.super Lcom/android/phone/ADNList;
.source "SdnList.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    return-void
.end method


# virtual methods
.method protected displayProgress(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/phone/SdnList;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    const v0, 0x7f0e0140

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/SdnList;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_24

    const/4 v0, -0x1

    :goto_12
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 81
    return-void

    .line 75
    :cond_16
    invoke-static {p0}, Lcom/android/phone/SdnList;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x7f0e0143

    goto :goto_7

    :cond_20
    const v0, 0x7f0e03d1

    goto :goto_7

    .line 78
    :cond_24
    const/4 v0, -0x2

    goto :goto_12
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/phone/SdnList;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 64
    invoke-virtual {p0}, Lcom/android/phone/SdnList;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/SdnList;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/phone/SdnList;->startActivity(Landroid/content/Intent;)V

    .line 71
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    :cond_35
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/phone/SdnList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://icc/sdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
