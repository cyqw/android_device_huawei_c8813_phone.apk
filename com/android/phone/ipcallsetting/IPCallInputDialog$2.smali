.class Lcom/android/phone/ipcallsetting/IPCallInputDialog$2;
.super Ljava/lang/Object;
.source "IPCallInputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ipcallsetting/IPCallInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    #getter for: Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPickByIntent:Z
    invoke-static {v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$200(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 102
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->setResult(ILandroid/content/Intent;)V

    .line 105
    :cond_13
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-virtual {v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->finish()V

    .line 106
    return-void
.end method
