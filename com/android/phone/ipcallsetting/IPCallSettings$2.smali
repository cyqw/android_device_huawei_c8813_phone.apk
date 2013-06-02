.class Lcom/android/phone/ipcallsetting/IPCallSettings$2;
.super Ljava/lang/Object;
.source "IPCallSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ipcallsetting/IPCallSettings;->createDeleteContextMenu(Landroid/view/ContextMenu;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/ipcallsetting/IPCallSettings;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    iput p2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 182
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0279

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0281

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;

    invoke-direct {v2, p0}, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;-><init>(Lcom/android/phone/ipcallsetting/IPCallSettings$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/phone/ipcallsetting/IPCallSettings$2$1;

    invoke-direct {v2, p0}, Lcom/android/phone/ipcallsetting/IPCallSettings$2$1;-><init>(Lcom/android/phone/ipcallsetting/IPCallSettings$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 219
    const/4 v0, 0x1

    return v0
.end method
