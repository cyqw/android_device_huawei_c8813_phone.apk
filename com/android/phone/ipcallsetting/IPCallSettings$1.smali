.class Lcom/android/phone/ipcallsetting/IPCallSettings$1;
.super Ljava/lang/Object;
.source "IPCallSettings.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ipcallsetting/IPCallSettings;->registerOnCreateContextMenuListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/ipcallsetting/IPCallSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$1;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x1

    .line 136
    move-object v1, p3

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 137
    .local v1, contextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 139
    .local v4, position:I
    if-nez v4, :cond_9

    .line 169
    :cond_8
    :goto_8
    return-void

    .line 144
    :cond_9
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$1;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 145
    .local v0, c:Landroid/database/Cursor;
    const-string v5, "_data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, ipNumber:Ljava/lang/String;
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 153
    .local v2, id:I
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 155
    if-eq v6, v2, :cond_8

    const/4 v5, 0x2

    if-eq v5, v2, :cond_8

    .line 167
    :cond_34
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 168
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$1;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v5, p1, v4}, Lcom/android/phone/ipcallsetting/IPCallSettings;->createDeleteContextMenu(Landroid/view/ContextMenu;I)V

    goto :goto_8

    .line 160
    :cond_3d
    if-ne v6, v2, :cond_34

    goto :goto_8
.end method
