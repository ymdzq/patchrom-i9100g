.class Lcom/android/OriginalSettings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mCWError:I

.field private mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

.field private mEapIdentity:Landroid/widget/EditText;

.field private final mEdit:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private final mRetry:Z

.field private mSoftKeyboardVisible:Z

.field private mSsid:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"

    .prologue
    const/4 v1, 0x0

    .line 71
    const v0, 0x7f10002b

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mSoftKeyboardVisible:Z

    .line 56
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mCWError:I

    .line 72
    iput-boolean p4, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mEdit:Z

    .line 73
    iput-boolean p5, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mRetry:Z

    .line 74
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 76
    return-void
.end method


# virtual methods
.method public dismissKeypad()V
    .locals 4

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, immView:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0304

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 175
    .local v0, getView:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #immView:Landroid/view/inputmethod/InputMethodManager;
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 177
    .restart local v1       #immView:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 181
    :cond_0
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b01a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 138
    .local v0, layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0340

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0366

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 142
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0367

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 144
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0381

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 145
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0368

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 146
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0369

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 147
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b036a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0387

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 150
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0388

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b038b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 154
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b038c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 156
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b038d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0391

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 159
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 160
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0392

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b036d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 163
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 164
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b036f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0375

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 167
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 168
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0376

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 170
    :cond_6
    return-void
.end method

.method public getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 190
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04011e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 91
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mRetry:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/WifiConfigController;-><init>(Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    .line 93
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 95
    const-string v0, "securityType"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    const-string v1, "securityType"

    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setAccessPointSecurity(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 102
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0304

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b033e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mSsid:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b036b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/EditText;

    .line 105
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 108
    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    const v3, 0x7f0b0340

    .line 126
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 128
    const-string v2, "securityType"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    :cond_0
    return-object v0
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 215
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 216
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 210
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 211
    return-void
.end method

.method public setSoftKeyboardVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mSoftKeyboardVisible:Z

    .line 134
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 205
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 206
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->updateShowPassword()V

    .line 116
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->updateShowAdvancedOptions()V

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mSoftKeyboardVisible:Z

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 122
    :cond_1
    return-void
.end method
