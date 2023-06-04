<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_describe_ledger</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a ledger, including its state, permissions mode, encryption at rest settings, and when it was created

### Description

Returns information about a ledger, including its state, permissions
mode, encryption at rest settings, and when it was created.

### Usage

    qldb_describe_ledger(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_describe_ledger_:_Name">Name</code></td>
<td><p>[required] The name of the ledger that you want to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Arn = "string",
      State = "CREATING"|"ACTIVE"|"DELETING"|"DELETED",
      CreationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      PermissionsMode = "ALLOW_ALL"|"STANDARD",
      DeletionProtection = TRUE|FALSE,
      EncryptionDescription = list(
        KmsKeyArn = "string",
        EncryptionStatus = "ENABLED"|"UPDATING"|"KMS_KEY_INACCESSIBLE",
        InaccessibleKmsKeyDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_ledger(
      Name = "string"
    )
