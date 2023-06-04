<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rdsdataservice_batch_execute_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs a batch SQL statement over an array of data

### Description

Runs a batch SQL statement over an array of data.

You can run bulk update and insert operations for multiple records using
a DML statement with different parameter sets. Bulk operations can
provide a significant performance improvement over individual insert and
update operations.

If a call isn't part of a transaction because it doesn't include the
`transactionID` parameter, changes that result from the call are
committed automatically.

There isn't a fixed upper limit on the number of parameter sets.
However, the maximum size of the HTTP request submitted through the Data
API is 4 MiB. If the request exceeds this limit, the Data API returns an
error and doesn't process the request. This 4-MiB limit includes the
size of the HTTP headers and the JSON notation in the request. Thus, the
number of parameter sets that you can include depends on a combination
of factors, such as the size of the SQL statement and the size of each
parameter set.

The response size limit is 1 MiB. If the call returns more than 1 MiB of
response data, the call is terminated.

### Usage

    rdsdataservice_batch_execute_statement(resourceArn, secretArn, sql,
      database, schema, parameterSets, transactionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rdsdataservice_batch_execute_statement_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Aurora
Serverless DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_batch_execute_statement_:_secretArn">secretArn</code></td>
<td><p>[required] The ARN of the secret that enables access to the DB
cluster. Enter the database user name and password for the credentials
in the secret.</p>
<p>For information about creating the secret, see <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html">Create
a database secret</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rdsdataservice_batch_execute_statement_:_sql">sql</code></td>
<td><p>[required] The SQL statement to run. Don't include a semicolon
(;) at the end of the SQL statement.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_batch_execute_statement_:_database">database</code></td>
<td><p>The name of the database.</p></td>
</tr>
<tr class="odd">
<td><code
id="rdsdataservice_batch_execute_statement_:_schema">schema</code></td>
<td><p>The name of the database schema.</p>
<p>Currently, the <code>schema</code> parameter isn't
supported.</p></td>
</tr>
<tr class="even">
<td><code
id="rdsdataservice_batch_execute_statement_:_parameterSets">parameterSets</code></td>
<td><p>The parameter set for the batch operation.</p>
<p>The SQL statement is executed as many times as the number of
parameter sets provided. To execute a SQL statement with no parameters,
use one of the following options:</p>
<ul>
<li><p>Specify one or more empty parameter sets.</p></li>
<li><p>Use the <code>execute_statement</code> operation instead of the
<code>batch_execute_statement</code> operation.</p></li>
</ul>
<p>Array parameters are not supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="rdsdataservice_batch_execute_statement_:_transactionId">transactionId</code></td>
<td><p>The identifier of a transaction that was started by using the
<code>begin_transaction</code> operation. Specify the transaction ID of
the transaction that you want to include the SQL statement in.</p>
<p>If the SQL statement is not part of a transaction, don't set this
parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      updateResults = list(
        list(
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
          )
        )
      )
    )

### Request syntax

    svc$batch_execute_statement(
      resourceArn = "string",
      secretArn = "string",
      sql = "string",
      database = "string",
      schema = "string",
      parameterSets = list(
        list(
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
        )
      ),
      transactionId = "string"
    )
