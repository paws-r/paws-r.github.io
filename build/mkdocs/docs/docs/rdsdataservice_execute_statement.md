<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rdsdataservice_execute_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs a SQL statement against a database

### Description

Runs a SQL statement against a database.

If a call isn't part of a transaction because it doesn't include the
`transactionID` parameter, changes that result from the call are
committed automatically.

If the binary response data from the database is more than 1 MB, the
call is terminated.

### Usage

    rdsdataservice_execute_statement(resourceArn, secretArn, sql, database,
      schema, parameters, transactionId, includeResultMetadata,
      continueAfterTimeout, resultSetOptions, formatRecordsAs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rdsdataservice_execute_statement_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Aurora
Serverless DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_execute_statement_:_secretArn">secretArn</code></td>
<td><p>[required] The ARN of the secret that enables access to the DB
cluster. Enter the database user name and password for the credentials
in the secret.</p>
<p>For information about creating the secret, see <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html">Create
a database secret</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="rdsdataservice_execute_statement_:_sql">sql</code></td>
<td><p>[required] The SQL statement to run.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_execute_statement_:_database">database</code></td>
<td><p>The name of the database.</p></td>
</tr>
<tr class="odd">
<td><code
id="rdsdataservice_execute_statement_:_schema">schema</code></td>
<td><p>The name of the database schema.</p>
<p>Currently, the <code>schema</code> parameter isn't
supported.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_execute_statement_:_parameters">parameters</code></td>
<td><p>The parameters for the SQL statement.</p>
<p>Array parameters are not supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="rdsdataservice_execute_statement_:_transactionId">transactionId</code></td>
<td><p>The identifier of a transaction that was started by using the
<code>begin_transaction</code> operation. Specify the transaction ID of
the transaction that you want to include the SQL statement in.</p>
<p>If the SQL statement is not part of a transaction, don't set this
parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_execute_statement_:_includeResultMetadata">includeResultMetadata</code></td>
<td><p>A value that indicates whether to include metadata in the
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="rdsdataservice_execute_statement_:_continueAfterTimeout">continueAfterTimeout</code></td>
<td><p>A value that indicates whether to continue running the statement
after the call times out. By default, the statement stops running when
the call times out.</p>
<p>For DDL statements, we recommend continuing to run the statement
after the call times out. When a DDL statement terminates before it is
finished running, it can result in errors and possibly corrupted data
structures.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_execute_statement_:_resultSetOptions">resultSetOptions</code></td>
<td><p>Options that control how the result set is returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="rdsdataservice_execute_statement_:_formatRecordsAs">formatRecordsAs</code></td>
<td><p>A value that indicates whether to format the result set as a
single JSON string. This parameter only applies to <code>SELECT</code>
statements and is ignored for other types of statements. Allowed values
are <code>NONE</code> and <code>JSON</code>. The default value is
<code>NONE</code>. The result is returned in the
<code>formattedRecords</code> field.</p>
<p>For usage information about the JSON format for result sets, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using
the Data API</a> in the <em>Amazon Aurora User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      records = list(
        list(
          list(
            isNull = TRUE|FALSE,
            booleanValue = TRUE|FALSE,
            longValue = 123,
            doubleValue = 123.0,
            stringValue = "string",
            blobValue = raw,
            arrayValue = list(
              booleanValues = list(
                TRUE|FALSE
              ),
              longValues = list(
                123
              ),
              doubleValues = list(
                123.0
              ),
              stringValues = list(
                "string"
              ),
              arrayValues = list(
                list()
              )
            )
          )
        )
      ),
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
      ),
      numberOfRecordsUpdated = 123,
      generatedFields = list(
        list(
          isNull = TRUE|FALSE,
          booleanValue = TRUE|FALSE,
          longValue = 123,
          doubleValue = 123.0,
          stringValue = "string",
          blobValue = raw,
          arrayValue = list(
            booleanValues = list(
              TRUE|FALSE
            ),
            longValues = list(
              123
            ),
            doubleValues = list(
              123.0
            ),
            stringValues = list(
              "string"
            ),
            arrayValues = list(
              list()
            )
          )
        )
      ),
      formattedRecords = "string"
    )

### Request syntax

    svc$execute_statement(
      resourceArn = "string",
      secretArn = "string",
      sql = "string",
      database = "string",
      schema = "string",
      parameters = list(
        list(
          name = "string",
          value = list(
            isNull = TRUE|FALSE,
            booleanValue = TRUE|FALSE,
            longValue = 123,
            doubleValue = 123.0,
            stringValue = "string",
            blobValue = raw,
            arrayValue = list(
              booleanValues = list(
                TRUE|FALSE
              ),
              longValues = list(
                123
              ),
              doubleValues = list(
                123.0
              ),
              stringValues = list(
                "string"
              ),
              arrayValues = list(
                list()
              )
            )
          ),
          typeHint = "JSON"|"UUID"|"TIMESTAMP"|"DATE"|"TIME"|"DECIMAL"
        )
      ),
      transactionId = "string",
      includeResultMetadata = TRUE|FALSE,
      continueAfterTimeout = TRUE|FALSE,
      resultSetOptions = list(
        decimalReturnType = "STRING"|"DOUBLE_OR_LONG",
        longReturnType = "STRING"|"LONG"
      ),
      formatRecordsAs = "NONE"|"JSON"
    )
