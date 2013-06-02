.class Lcom/android/phone/SimContacts$3;
.super Ljava/lang/Object;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method constructor <init>(Lcom/android/phone/SimContacts;)V
    .registers 2
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/phone/SimContacts$3;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/phone/SimContacts$3;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v0}, Lcom/android/phone/SimContacts;->finish()V

    .line 625
    return-void
.end method
