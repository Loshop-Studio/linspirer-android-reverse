package org.greenrobot.greendao.internal;

import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;

/* loaded from: classes.dex */
public class TableStatements {
    public final String[] allColumns;
    public DatabaseStatement countStatement;

    /* renamed from: db */
    public final Database f6508db;
    public DatabaseStatement deleteStatement;
    public DatabaseStatement insertOrReplaceStatement;
    public DatabaseStatement insertStatement;
    public final String[] pkColumns;
    public volatile String selectAll;
    public volatile String selectByKey;
    public volatile String selectByRowId;
    public volatile String selectKeys;
    public final String tablename;
    public DatabaseStatement updateStatement;

    public TableStatements(Database database, String str, String[] strArr, String[] strArr2) {
        this.f6508db = database;
        this.tablename = str;
        this.allColumns = strArr;
        this.pkColumns = strArr2;
    }

    public DatabaseStatement getCountStatement() {
        if (this.countStatement == null) {
            this.countStatement = this.f6508db.compileStatement(SqlUtils.createSqlCount(this.tablename));
        }
        return this.countStatement;
    }

    public DatabaseStatement getDeleteStatement() {
        if (this.deleteStatement == null) {
            DatabaseStatement databaseStatementCompileStatement = this.f6508db.compileStatement(SqlUtils.createSqlDelete(this.tablename, this.pkColumns));
            synchronized (this) {
                if (this.deleteStatement == null) {
                    this.deleteStatement = databaseStatementCompileStatement;
                }
            }
            if (this.deleteStatement != databaseStatementCompileStatement) {
                databaseStatementCompileStatement.close();
            }
        }
        return this.deleteStatement;
    }

    public DatabaseStatement getInsertOrReplaceStatement() {
        if (this.insertOrReplaceStatement == null) {
            DatabaseStatement databaseStatementCompileStatement = this.f6508db.compileStatement(SqlUtils.createSqlInsert("INSERT OR REPLACE INTO ", this.tablename, this.allColumns));
            synchronized (this) {
                if (this.insertOrReplaceStatement == null) {
                    this.insertOrReplaceStatement = databaseStatementCompileStatement;
                }
            }
            if (this.insertOrReplaceStatement != databaseStatementCompileStatement) {
                databaseStatementCompileStatement.close();
            }
        }
        return this.insertOrReplaceStatement;
    }

    public DatabaseStatement getInsertStatement() {
        if (this.insertStatement == null) {
            DatabaseStatement databaseStatementCompileStatement = this.f6508db.compileStatement(SqlUtils.createSqlInsert("INSERT INTO ", this.tablename, this.allColumns));
            synchronized (this) {
                if (this.insertStatement == null) {
                    this.insertStatement = databaseStatementCompileStatement;
                }
            }
            if (this.insertStatement != databaseStatementCompileStatement) {
                databaseStatementCompileStatement.close();
            }
        }
        return this.insertStatement;
    }

    public String getSelectAll() {
        if (this.selectAll == null) {
            this.selectAll = SqlUtils.createSqlSelect(this.tablename, "T", this.allColumns, false);
        }
        return this.selectAll;
    }

    public String getSelectByKey() {
        if (this.selectByKey == null) {
            StringBuilder sb = new StringBuilder(getSelectAll());
            sb.append("WHERE ");
            SqlUtils.appendColumnsEqValue(sb, "T", this.pkColumns);
            this.selectByKey = sb.toString();
        }
        return this.selectByKey;
    }

    public String getSelectByRowId() {
        if (this.selectByRowId == null) {
            this.selectByRowId = getSelectAll() + "WHERE ROWID=?";
        }
        return this.selectByRowId;
    }

    public String getSelectKeys() {
        if (this.selectKeys == null) {
            this.selectKeys = SqlUtils.createSqlSelect(this.tablename, "T", this.pkColumns, false);
        }
        return this.selectKeys;
    }

    public DatabaseStatement getUpdateStatement() {
        if (this.updateStatement == null) {
            DatabaseStatement databaseStatementCompileStatement = this.f6508db.compileStatement(SqlUtils.createSqlUpdate(this.tablename, this.allColumns, this.pkColumns));
            synchronized (this) {
                if (this.updateStatement == null) {
                    this.updateStatement = databaseStatementCompileStatement;
                }
            }
            if (this.updateStatement != databaseStatementCompileStatement) {
                databaseStatementCompileStatement.close();
            }
        }
        return this.updateStatement;
    }
}
