<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rdsdataservice_execute_sql</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs one or more SQL statements

### Description

Runs one or more SQL statements.

This operation is deprecated. Use the `batch_execute_statement` or
`execute_statement` operation.

### Usage

    rdsdataservice_execute_sql(dbClusterOrInstanceArn, awsSecretStoreArn,
      sqlStatements, database, schema)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rdsdataservice_execute_sql_:_dbClusterOrInstanceArn">dbClusterOrInstanceArn</code></td>
<td><p>[required] The ARN of the Aurora Serverless DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_execute_sql_:_awsSecretStoreArn">awsSecretStoreArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the secret that
enables access to the DB cluster. Enter the database user name and
password for the credentials in the secret.</p>
<p>For information about creating the secret, see <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html">Create
a database secret</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rdsdataservice_execute_sql_:_sqlStatements">sqlStatements</code></td>
<td><p>[required] One or more SQL statements to run on the DB
cluster.</p>
<p>You can separate SQL statements from each other with a semicolon (;).
Any valid SQL statement is permitted, including data definition, data
manipulation, and commit statements.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_execute_sql_:_database">database</code></td>
<td><p>The name of the database.</p></td>
</tr>
<tr class="odd">
<td><code id="rdsdataservice_execute_sql_:_schema">schema</code></td>
<td><p>The name of the database schema.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      sqlStatementResults = list(
        list(
          resultFrame = list(
            resultSetMetadata = list(
              columnCount = 123,
              columnMetadata = list(
                list(
                  name = "string",
                  type = 123,
                  typeName = "string",
                  label = "string",
                  schemaName = "string",
                  tableName = "string",
                  isAutoIncrement = TRUE|FALSE,
                  isSigned = TRUE|FALSE,
                  isCurrency = TRUE|FALSE,
                  isCaseSensitive = TRUE|FALSE,
                  nullable = 123,
                  precision = 123,
                  scale = 123,
                  arrayBaseColumnType = 123
                )
              )
            ),
            records = list(
              list(
                values = list(
                  list(
                    isNull = TRUE|FALSE,
                    bitValue = TRUE|FALSE,
                    bigIntValue = 123,
                    intValue = 123,
                    doubleValue = 123.0,
                    realValue = 123.0,
                    stringValue = "string",
                    blobValue = raw,
                    arrayValues = list(
                      list()
                    ),
                    structValue = list(
                      attributes = list(
                        list()
                      )
                    )
                  )
                )
              )
            )
          ),
          numberOfRecordsUpdated = 123
        )
      )
    )

### Request syntax

    svc$execute_sql(
      dbClusterOrInstanceArn = "string",
      awsSecretStoreArn = "string",
      sqlStatements = "string",
      database = "string",
      schema = "string"
    )
