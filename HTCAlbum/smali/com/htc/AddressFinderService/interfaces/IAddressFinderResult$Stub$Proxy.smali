.class Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAddressFinderResult.java"

# interfaces
.implements Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 97
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    return-object v0
.end method

.method public onLookupBegin(I)V
    .locals 5
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 110
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v1, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onLookupEnd(I)V
    .locals 5
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 155
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v1, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    return-void

    .line 160
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onLookupError(II)V
    .locals 5
    .parameter "handle"
    .parameter "errorId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v1, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onLookupResult(I[Lcom/htc/AddressFinderService/interfaces/AddressData;Landroid/os/Bundle;)V
    .locals 5
    .parameter "handle"
    .parameter "data"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 122
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 125
    if-eqz p3, :cond_0

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    return-void

    .line 130
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
