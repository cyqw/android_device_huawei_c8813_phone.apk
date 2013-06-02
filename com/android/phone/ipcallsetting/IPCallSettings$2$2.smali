.class Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;
.super Ljava/lang/Object;
.source "IPCallSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ipcallsetting/IPCallSettings$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;


# direct methods
.method constructor <init>(Lcom/android/phone/ipcallsetting/IPCallSettings$2;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 189
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    iget-object v2, v2, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    iget v3, v3, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->val$position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 191
    .local v0, c:Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 195
    .local v1, id:I
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 197
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    iget-object v2, v2, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    iget-object v2, v2, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    #getter for: Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I
    invoke-static {v2}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$000(Lcom/android/phone/ipcallsetting/IPCallSettings;)I

    move-result v2

    if-nez v2, :cond_4e

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    :goto_38
    const-string v4, "_id = ?"

    new-array v5, v7, [Ljava/lang/String;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 206
    :goto_4a
    invoke-static {v7}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$102(Z)Z

    .line 208
    return-void

    .line 197
    :cond_4e
    sget-object v2, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    goto :goto_38

    .line 201
    :cond_51
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    iget-object v2, v2, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    new-array v5, v7, [Ljava/lang/String;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4a
.end method
