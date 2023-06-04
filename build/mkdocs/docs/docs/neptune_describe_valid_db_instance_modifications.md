<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_describe_valid_db_instance_modifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You can call DescribeValidDBInstanceModifications to learn what modifications you can make to your DB instance

### Description

You can call `describe_valid_db_instance_modifications` to learn what
modifications you can make to your DB instance. You can use this
information when you call `modify_db_instance`.

### Usage

    neptune_describe_valid_db_instance_modifications(DBInstanceIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_describe_valid_db_instance_modifications_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The customer identifier or the ARN of your DB
instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ValidDBInstanceModificationsMessage = list(
        Storage = list(
          list(
            StorageType = "string",
            StorageSize = list(
              list(
                From = 123,
                To = 123,
                Step = 123
              )
            ),
            ProvisionedIops = list(
              list(
                From = 123,
                To = 123,
                Step = 123
              )
            ),
            IopsToStorageRatio = list(
              list(
                From = 123.0,
                To = 123.0
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_valid_db_instance_modifications(
      DBInstanceIdentifier = "string"
    )
