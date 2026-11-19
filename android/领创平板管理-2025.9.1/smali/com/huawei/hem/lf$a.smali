.class public Lcom/huawei/hem/lf$a;
.super Ljava/lang/Object;
.source "SqliteDatabaseImpl.java"

# interfaces
.implements Lcom/huawei/hem/if$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/huawei/hem/lf$b;

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/huawei/hem/ng;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Lcom/huawei/hem/lf;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/lf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/lf$a;->a:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/lf$a;->c:Landroid/util/SparseArray;

    .line 4
    iput-object p1, p0, Lcom/huawei/hem/lf$a;->d:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/lf;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/huawei/hem/ng;",
            ">;>;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/lf$a;->a:Landroid/util/SparseArray;

    .line 7
    iput-object p2, p0, Lcom/huawei/hem/lf$a;->c:Landroid/util/SparseArray;

    .line 8
    iput-object p3, p0, Lcom/huawei/hem/lf$a;->d:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lf$a;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lf$a;->b:Lcom/huawei/hem/lf$b;

    const-string v1, "filedownloaderConnection"

    const-string v2, "filedownloader"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v5, v0, Lcom/huawei/hem/lf$b;->a:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3
    iget-object v5, v0, Lcom/huawei/hem/lf$b;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4
    iget-object v5, v0, Lcom/huawei/hem/lf$b;->b:Ljava/util/List;

    const-string v6, ", "

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v6, v0, Lcom/huawei/hem/lf$b;->d:Lcom/huawei/hem/lf;

    .line 6
    iget-object v6, v6, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v3

    const-string v9, "_id"

    aput-object v9, v8, v4

    const/4 v9, 0x2

    aput-object v5, v8, v9

    const-string v10, "DELETE FROM %s WHERE %s IN (%s);"

    .line 7
    invoke-static {v10, v8}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8
    iget-object v0, v0, Lcom/huawei/hem/lf$b;->d:Lcom/huawei/hem/lf;

    .line 9
    iget-object v0, v0, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v3

    const-string v7, "id"

    aput-object v7, v6, v4

    aput-object v5, v6, v9

    .line 10
    invoke-static {v10, v6}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/lf$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 12
    :cond_1
    iget-object v5, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    .line 13
    iget-object v5, v5, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v5, v3

    :goto_0
    if-ge v5, v0, :cond_4

    .line 15
    :try_start_0
    iget-object v6, p0, Lcom/huawei/hem/lf$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 16
    iget-object v7, p0, Lcom/huawei/hem/lf$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 17
    iget-object v8, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    .line 18
    iget-object v8, v8, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "_id = ?"

    new-array v10, v4, [Ljava/lang/String;

    .line 19
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    .line 20
    invoke-virtual {v8, v2, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 21
    iget-object v8, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    .line 22
    iget-object v8, v8, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()Landroid/content/ContentValues;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 24
    iget v8, v7, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:I

    if-le v8, v4, :cond_3

    .line 25
    iget-object v8, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    invoke-virtual {v8, v6}, Lcom/huawei/hem/lf;->n(I)Ljava/util/List;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    check-cast v8, Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_2

    goto :goto_2

    .line 27
    :cond_2
    iget-object v9, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    .line 28
    iget-object v9, v9, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "id = ?"

    new-array v12, v4, [Ljava/lang/String;

    .line 29
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v3

    .line 30
    invoke-virtual {v9, v1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 31
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hem/ng;

    .line 32
    iget v9, v7, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 33
    iput v9, v8, Lcom/huawei/hem/ng;->a:I

    .line 34
    iget-object v9, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    .line 35
    iget-object v9, v9, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    invoke-virtual {v8}, Lcom/huawei/hem/ng;->b()Landroid/content/ContentValues;

    move-result-object v8

    .line 37
    invoke-virtual {v9, v1, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 38
    :cond_4
    iget-object v0, p0, Lcom/huawei/hem/lf$a;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/huawei/hem/lf$a;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    .line 39
    iget-object v0, p0, Lcom/huawei/hem/lf$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_3
    if-ge v3, v0, :cond_6

    .line 40
    iget-object v1, p0, Lcom/huawei/hem/lf$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 41
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 42
    iget-object v2, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    invoke-virtual {v2, v1}, Lcom/huawei/hem/lf;->n(I)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 44
    iget-object v4, p0, Lcom/huawei/hem/lf$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 45
    :cond_6
    iget-object v0, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    .line 46
    iget-object v0, v0, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    .line 49
    iget-object v0, v0, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    .line 51
    iget-object v1, v1, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 53
    throw v0
.end method

.method public f(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lf$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hem/lf$b;

    iget-object v1, p0, Lcom/huawei/hem/lf$a;->e:Lcom/huawei/hem/lf;

    invoke-direct {v0, v1}, Lcom/huawei/hem/lf$b;-><init>(Lcom/huawei/hem/lf;)V

    iput-object v0, p0, Lcom/huawei/hem/lf$a;->b:Lcom/huawei/hem/lf$b;

    return-object v0
.end method
