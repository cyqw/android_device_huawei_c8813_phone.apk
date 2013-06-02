.class Lcom/android/phone/DataRoamingSettings$TabListener;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabListener"
.end annotation


# instance fields
.field private mFragment:Lcom/android/phone/MSimDataRoamingTabFragment;

.field final synthetic this$0:Lcom/android/phone/DataRoamingSettings;


# direct methods
.method public constructor <init>(Lcom/android/phone/DataRoamingSettings;Lcom/android/phone/MSimDataRoamingTabFragment;)V
    .registers 3
    .parameter
    .parameter "fragment"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/phone/DataRoamingSettings$TabListener;->this$0:Lcom/android/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/android/phone/DataRoamingSettings$TabListener;->mFragment:Lcom/android/phone/MSimDataRoamingTabFragment;

    .line 88
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 114
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 6
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/DataRoamingSettings$TabListener;->mFragment:Lcom/android/phone/MSimDataRoamingTabFragment;

    invoke-virtual {v0}, Lcom/android/phone/MSimDataRoamingTabFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_11

    .line 96
    const v0, 0x1020002

    iget-object v1, p0, Lcom/android/phone/DataRoamingSettings$TabListener;->mFragment:Lcom/android/phone/MSimDataRoamingTabFragment;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 98
    :cond_11
    iget-object v0, p0, Lcom/android/phone/DataRoamingSettings$TabListener;->mFragment:Lcom/android/phone/MSimDataRoamingTabFragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 99
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 4
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/DataRoamingSettings$TabListener;->mFragment:Lcom/android/phone/MSimDataRoamingTabFragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 107
    return-void
.end method
