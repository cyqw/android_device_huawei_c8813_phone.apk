.class Lcom/android/phone/InCallFragment$10;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 3381
    iput-object p1, p0, Lcom/android/phone/InCallFragment$10;->this$0:Lcom/android/phone/InCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3383
    iget-object v0, p0, Lcom/android/phone/InCallFragment$10;->this$0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->bailOutAfterErrorDialog()V

    .line 3384
    return-void
.end method
