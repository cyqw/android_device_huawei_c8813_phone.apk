.class Lcom/android/phone/InCallFragment$8;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallFragment;->handleMissingVoiceMailNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;

.field final synthetic val$msg2:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;Landroid/os/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3328
    iput-object p1, p0, Lcom/android/phone/InCallFragment$8;->this$0:Lcom/android/phone/InCallFragment;

    iput-object p2, p0, Lcom/android/phone/InCallFragment$8;->val$msg2:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3330
    iget-object v0, p0, Lcom/android/phone/InCallFragment$8;->val$msg2:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3331
    iget-object v0, p0, Lcom/android/phone/InCallFragment$8;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3332
    return-void
.end method
