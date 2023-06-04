<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_update_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the KMS key for an existing database

### Description

Modifies the KMS key for an existing database. While updating the
database, you must specify the database name and the identifier of the
new KMS key to be used (`KmsKeyId`). If there are any concurrent
`update_database` requests, first writer wins.

See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-db.html)
for details.

### Usage

    timestreamwrite_update_database(DatabaseName, KmsKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_update_database_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the database.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_update_database_:_KmsKeyId">KmsKeyId</code></td>
<td><p>[required] The identifier of the new KMS key
(<code>KmsKeyId</code>) to be used to encrypt the data stored in the
database. If the <code>KmsKeyId</code> currently registered with the
database is the same as the <code>KmsKeyId</code> in the request, there
will not be any update.</p>
<p>You can specify the <code>KmsKeyId</code> using any of the
following:</p>
<ul>
<li><p>Key ID: <code
style="white-space: pre;">⁠1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Key ARN: <code
style="white-space: pre;">⁠arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Alias name: <code>alias/ExampleAlias</code></p></li>
<li><p>Alias ARN:
<code>arn:aws:kms:us-east-1:111122223333:alias/ExampleAlias</code></p></li>
</ul></td>
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

    svc$update_database(
      DatabaseName = "string",
      KmsKeyId = "string"
    )
