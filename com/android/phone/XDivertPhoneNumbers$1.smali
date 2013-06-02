.class Lcom/android/phone/XDivertPhoneNumbers$1;
.super Ljava/lang/Object;
.source "XDivertPhoneNumbers.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/XDivertPhoneNumbers;->displayAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/XDivertPhoneNumbers;


# direct methods
.method constructor <init>(Lcom/android/phone/XDivertPhoneNumbers;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/phone/XDivertPhoneNumbers$1;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers$1;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    invoke-virtual {v0}, Lcom/android/phone/XDivertPhoneNumbers;->finish()V

    .line 114
    return-void
.end method
