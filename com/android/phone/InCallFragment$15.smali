.class Lcom/android/phone/InCallFragment$15;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallFragment;->showExitingECMDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;

.field final synthetic val$inCallUiState:Lcom/android/phone/MSimInCallUiState;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;Lcom/android/phone/MSimInCallUiState;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3507
    iput-object p1, p0, Lcom/android/phone/InCallFragment$15;->this$0:Lcom/android/phone/InCallFragment;

    iput-object p2, p0, Lcom/android/phone/InCallFragment$15;->val$inCallUiState:Lcom/android/phone/MSimInCallUiState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 3509
    iget-object v0, p0, Lcom/android/phone/InCallFragment$15;->val$inCallUiState:Lcom/android/phone/MSimInCallUiState;

    iget-object v1, p0, Lcom/android/phone/InCallFragment$15;->this$0:Lcom/android/phone/InCallFragment;

    #getter for: Lcom/android/phone/InCallFragment;->mSubscription:I
    invoke-static {v1}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimInCallUiState;->clearPendingCallStatusCode(I)V

    .line 3510
    return-void
.end method
