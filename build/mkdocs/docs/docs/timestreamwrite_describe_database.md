<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_describe_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the database, including the database name, time that the database was created, and the total number of tables found within the database

### Description

Returns information about the database, including the database name,
time that the database was created, and the total number of tables found
within the database. [Service quotas
apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-db.html)
for details.

### Usage

    timestreamwrite_describe_database(DatabaseName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_describe_database_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the Timestream database.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Database = list(
        Arn = "string",
        DatabaseName = "string",
        TableCount = 123,
        KmsKeyId = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_database(
      DatabaseName = "string"
    )
