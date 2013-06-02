.class final Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManageConferenceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryCompleteListener"
.end annotation


# instance fields
.field private final mConferencCallListIndex:I

.field final synthetic this$0:Lcom/android/phone/ManageConferenceUtils;


# direct methods
.method public constructor <init>(Lcom/android/phone/ManageConferenceUtils;I)V
    .registers 3
    .parameter
    .parameter "index"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;->this$0:Lcom/android/phone/ManageConferenceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p2, p0, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;->mConferencCallListIndex:I

    .line 73
    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 12
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 78
    move-object v6, p2

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 79
    .local v6, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 82
    .local v2, presentation:I
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;->this$0:Lcom/android/phone/ManageConferenceUtils;

    #getter for: Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/phone/ManageConferenceUtils;->access$000(Lcom/android/phone/ManageConferenceUtils;)[Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;->mConferencCallListIndex:I

    aget-object v7, v0, v1

    .line 83
    .local v7, viewGroup:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;->this$0:Lcom/android/phone/ManageConferenceUtils;

    const v1, 0x7f09003c

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v1, 0x7f09003e

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v1, 0x7f09003d

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 90
    return-void
.end method
