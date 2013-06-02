.class public Lcom/android/phone/IccPanel;
.super Landroid/app/Dialog;
.source "IccPanel.java"


# instance fields
.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    const/high16 v0, 0x7f10

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/IccPanel;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 63
    .local v1, winP:Landroid/view/Window;
    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 64
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 66
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 87
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 88
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 91
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/IccPanel;->requestWindowFeature(I)Z

    .line 92
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 107
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 108
    const/4 v0, 0x1

    .line 111
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 97
    iget-object v0, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 98
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 103
    iget-object v0, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 104
    return-void
.end method
