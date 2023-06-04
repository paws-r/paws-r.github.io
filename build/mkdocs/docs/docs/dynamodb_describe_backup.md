<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an existing backup of a table

### Description

Describes an existing backup of a table.

You can call `describe_backup` at a maximum rate of 10 times per second.

### Usage

    dynamodb_describe_backup(BackupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_describe_backup_:_BackupArn">BackupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) associated with the
backup.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupDescription = list(
        BackupDetails = list(
          BackupArn = "string",
          BackupName = "string",
          BackupSizeBytes = 123,
          BackupStatus = "CREATING"|"DELETED"|"AVAILABLE",
          BackupType = "USER"|"SYSTEM"|"AWS_BACKUP",
          BackupCreationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          BackupExpiryDateTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        SourceTableDetails = list(
          TableName = "string",
          TableId = "string",
          TableArn = "string",
          TableSizeBytes = 123,
          KeySchema = list(
            list(
              AttributeName = "string",
              KeyType = "HASH"|"RANGE"
            )
          ),
          TableCreationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          ProvisionedThroughput = list(
            ReadCapacityUnits = 123,
            WriteCapacityUnits = 123
          ),
          ItemCount = 123,
          BillingMode = "PROVISIONED"|"PAY_PER_REQUEST"
        ),
        SourceTableFeatureDetails = list(
          LocalSecondaryIndexes = list(
            list(
              IndexName = "string",
              KeySchema = list(
                list(
                  AttributeName = "string",
                  KeyType = "HASH"|"RANGE"
                )
              ),
              Projection = list(
                ProjectionType = "ALL"|"KEYS_ONLY"|"INCLUDE",
                NonKeyAttributes = list(
                  "string"
                )
              )
            )
          ),
          GlobalSecondaryIndexes = list(
            list(
              IndexName = "string",
              KeySchema = list(
                list(
                  AttributeName = "string",
                  KeyType = "HASH"|"RANGE"
                )
              ),
              Projection = list(
                ProjectionType = "ALL"|"KEYS_ONLY"|"INCLUDE",
                NonKeyAttributes = list(
                  "string"
                )
              ),
              ProvisionedThroughput = list(
                ReadCapacityUnits = 123,
                WriteCapacityUnits = 123
              )
            )
          ),
          StreamDescription = list(
            StreamEnabled = TRUE|FALSE,
            StreamViewType = "NEW_IMAGE"|"OLD_IMAGE"|"NEW_AND_OLD_IMAGES"|"KEYS_ONLY"
          ),
          TimeToLiveDescription = list(
            TimeToLiveStatus = "ENABLING"|"DISABLING"|"ENABLED"|"DISABLED",
            AttributeName = "string"
          ),
          SSEDescription = list(
            Status = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"UPDATING",
            SSEType = "AES256"|"KMS",
            KMSMasterKeyArn = "string",
            InaccessibleEncryptionDateTime = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_backup(
      BackupArn = "string"
    )
