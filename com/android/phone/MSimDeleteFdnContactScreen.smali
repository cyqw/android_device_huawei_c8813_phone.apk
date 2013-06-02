.class public Lcom/android/phone/MSimDeleteFdnContactScreen;
.super Lcom/android/phone/DeleteFdnContactScreen;
.source "MSimDeleteFdnContactScreen.java"


# static fields
.field private static mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/MSimDeleteFdnContactScreen;->mSubscription:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;-><init>()V

    return-void
.end method


# virtual methods
.method protected deleteContact()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v6, buf:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 73
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/MSimDeleteFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 74
    const-string v0, "number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :goto_15
    iget-object v0, p0, Lcom/android/phone/MSimDeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v0, "\' AND pin2=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v0, p0, Lcom/android/phone/MSimDeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    sget v0, Lcom/android/phone/MSimDeleteFdnContactScreen;->mSubscription:I

    if-nez v0, :cond_5d

    .line 86
    const-string v0, "content://iccmsim/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 95
    :goto_33
    new-instance v0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/MSimDeleteFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/MSimDeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    .line 96
    iget-object v0, p0, Lcom/android/phone/MSimDeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v7}, Lcom/android/phone/MSimDeleteFdnContactScreen;->displayProgress(Z)V

    .line 98
    :cond_4c
    return-void

    .line 76
    :cond_4d
    const-string v0, "tag=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v0, p0, Lcom/android/phone/MSimDeleteFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, "\' AND number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 87
    :cond_5d
    sget v0, Lcom/android/phone/MSimDeleteFdnContactScreen;->mSubscription:I

    if-ne v0, v7, :cond_4c

    .line 88
    const-string v0, "content://iccmsim/fdn_sub2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_33
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/phone/DeleteFdnContactScreen;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 51
    :cond_9
    return-void
.end method

.method protected resolveIntent()V
    .registers 5

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/phone/MSimDeleteFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimDeleteFdnContactScreen;->mName:Ljava/lang/String;

    .line 57
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimDeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/MSimDeleteFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/MSimDeleteFdnContactScreen;->mSubscription:I

    .line 66
    return-void
.end method
