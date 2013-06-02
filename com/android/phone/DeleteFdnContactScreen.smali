.class public Lcom/android/phone/DeleteFdnContactScreen;
.super Landroid/app/Activity;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;
    }
.end annotation


# static fields
.field private static mSubscription:I


# instance fields
.field private mEfid:Ljava/lang/String;

.field private mFDNHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mNumber:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPin2:Ljava/lang/String;

.field protected mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/DeleteFdnContactScreen;->mSubscription:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    .line 257
    new-instance v0, Lcom/android/phone/DeleteFdnContactScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/DeleteFdnContactScreen$2;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DeleteFdnContactScreen;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/DeleteFdnContactScreen;->handleResult(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DeleteFdnContactScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->deleteContactReq()V

    return-void
.end method

.method private authenticatePin2()V
    .registers 3

    .prologue
    .line 181
    const-string v0, "gsm.sim.num.pin2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 183
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 184
    :cond_22
    const v0, 0x7f0e02dc

    invoke-virtual {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->finish()V

    .line 193
    :goto_34
    return-void

    .line 190
    :cond_35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    const-class v1, Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_34
.end method

.method private deleteContactReq()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v6, buf:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 147
    const-string v0, "number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_18
    :goto_18
    const-string v0, "\' AND pin2=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v0, " AND efid=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mEfid:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v0, "\' AND index=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mIndex:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 173
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    .line 174
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 176
    return-void

    .line 150
    .end local v3           #uri:Landroid/net/Uri;
    :cond_61
    const-string v0, "tag=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 153
    const-string v0, "\' AND number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18
.end method

.method private handleResult(Z)V
    .registers 6
    .parameter "success"

    .prologue
    .line 211
    if-eqz p1, :cond_1d

    .line 213
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 219
    :goto_10
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/DeleteFdnContactScreen$1;

    invoke-direct {v1, p0}, Lcom/android/phone/DeleteFdnContactScreen$1;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    return-void

    .line 216
    :cond_1d
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method


# virtual methods
.method protected deleteContact()V
    .registers 4

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mFDNHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 135
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 136
    const-string v1, "GSM"

    const-string v2, "DeleteFdnContactsScreen:deleteContact(): mPhone.getIccCard() ! = null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 139
    :cond_22
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 140
    return-void
.end method

.method protected displayProgress(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_c

    const/4 v0, -0x1

    :goto_8
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 199
    return-void

    .line 196
    :cond_c
    const/4 v0, -0x2

    goto :goto_8
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_30

    .line 114
    :goto_3
    return-void

    .line 100
    :pswitch_4
    if-eqz p3, :cond_26

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, extras:Landroid/os/Bundle;
    :goto_a
    if-eqz v0, :cond_28

    .line 102
    const-string v1, "pin2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->deleteContact()V

    goto :goto_3

    .line 100
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_26
    const/4 v0, 0x0

    goto :goto_a

    .line 109
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_28
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->finish()V

    goto :goto_3

    .line 98
    :pswitch_data_30
    .packed-switch 0x64
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->resolveIntent()V

    .line 86
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->authenticatePin2()V

    .line 88
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 89
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->setContentView(I)V

    .line 91
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 93
    return-void
.end method

.method protected resolveIntent()V
    .registers 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    .line 120
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 122
    const-string v1, "efid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mEfid:Ljava/lang/String;

    .line 123
    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mIndex:Ljava/lang/String;

    .line 130
    return-void
.end method

.method protected showStatus(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "statusMsg"

    .prologue
    .line 204
    if-eqz p1, :cond_a

    .line 205
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 208
    :cond_a
    return-void
.end method
