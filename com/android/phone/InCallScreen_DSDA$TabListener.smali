.class public Lcom/android/phone/InCallScreen_DSDA$TabListener;
.super Ljava/lang/Object;
.source "InCallScreen_DSDA.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen_DSDA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabListener"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mArgs:Landroid/os/Bundle;

.field private mFragment:Landroid/app/Fragment;

.field mSubscription:I

.field mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 5
    .parameter "activity"
    .parameter "subscription"
    .parameter "tag"

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/phone/InCallScreen_DSDA$TabListener;-><init>(Landroid/app/Activity;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .parameter "activity"
    .parameter "subscription"
    .parameter "tag"
    .parameter "args"

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mActivity:Landroid/app/Activity;

    .line 295
    iput-object p4, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mArgs:Landroid/os/Bundle;

    .line 296
    iput p2, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mSubscription:I

    .line 297
    iput-object p3, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mTag:Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    .line 303
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_35

    .line 304
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 305
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 306
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 308
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_35
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 347
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 9
    .parameter "tab"
    .parameter "ft"

    .prologue
    const/4 v3, 0x1

    .line 311
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    if-nez v2, :cond_38

    .line 312
    iget v2, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mSubscription:I

    invoke-static {v2}, Lcom/android/phone/InCallFragment;->newInstance(I)Lcom/android/phone/InCallFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    .line 313
    const v2, 0x1020002

    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v2, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 324
    :goto_17
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-le v2, v3, :cond_45

    move v0, v3

    .line 325
    .local v0, hasTwoTabs:Z
    :goto_24
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/phone/InCallFragment;

    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mSubscription:I

    invoke-virtual {v2, v4, v3, v0, v5}, Lcom/android/phone/InCallFragment;->getUpdatedTabView(Landroid/content/Context;ZZI)Landroid/view/View;

    move-result-object v1

    .line 327
    .local v1, v:Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 329
    return-void

    .line 317
    .end local v0           #hasTwoTabs:Z
    .end local v1           #v:Landroid/view/View;
    :cond_38
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 319
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/phone/InCallFragment;

    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->updateAfterTabChange()V

    goto :goto_17

    .line 324
    :cond_45
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 9
    .parameter "tab"
    .parameter "ft"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 334
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 336
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-le v2, v0, :cond_27

    .line 338
    .local v0, hasTwoTabs:Z
    :goto_13
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/phone/InCallFragment;

    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallScreen_DSDA$TabListener;->mSubscription:I

    invoke-virtual {v2, v4, v3, v0, v5}, Lcom/android/phone/InCallFragment;->getUpdatedTabView(Landroid/content/Context;ZZI)Landroid/view/View;

    move-result-object v1

    .line 341
    .local v1, v:Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 343
    return-void

    .end local v0           #hasTwoTabs:Z
    .end local v1           #v:Landroid/view/View;
    :cond_27
    move v0, v3

    .line 336
    goto :goto_13
.end method
