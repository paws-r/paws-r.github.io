<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_create_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Timestream database

### Description

Creates a new Timestream database. If the KMS key is not specified, the
database will be encrypted with a Timestream managed KMS key located in
your account. For more information, see [Amazon Web Services managed
keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
[Service quotas
apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
For details, see [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-db.html).

### Usage

    timestreamwrite_create_database(DatabaseName, KmsKeyId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_create_database_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the Timestream database.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_create_database_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The KMS key for the database. If the KMS key is not specified,
the database will be encrypted with a Timestream managed KMS key located
in your account. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon
Web Services managed keys</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="timestreamwrite_create_database_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs to label the table.</p></td>
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

    svc$create_database(
      DatabaseName = "string",
      KmsKeyId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
