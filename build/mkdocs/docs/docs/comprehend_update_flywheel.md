<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_update_flywheel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the configuration information for an existing flywheel

### Description

Update the configuration information for an existing flywheel.

### Usage

    comprehend_update_flywheel(FlywheelArn, ActiveModelArn,
      DataAccessRoleArn, DataSecurityConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_update_flywheel_:_FlywheelArn">FlywheelArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the flywheel to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_update_flywheel_:_ActiveModelArn">ActiveModelArn</code></td>
<td><p>The Amazon Resource Number (ARN) of the active model
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_update_flywheel_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role that grants Amazon
Comprehend permission to access the flywheel data.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_update_flywheel_:_DataSecurityConfig">DataSecurityConfig</code></td>
<td><p>Flywheel data security configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FlywheelProperties = list(
        FlywheelArn = "string",
        ActiveModelArn = "string",
        DataAccessRoleArn = "string",
        TaskConfig = list(
          LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW",
          DocumentClassificationConfig = list(
            Mode = "MULTI_CLASS"|"MULTI_LABEL",
            Labels = list(
              "string"
            )
          ),
          EntityRecognitionConfig = list(
            EntityTypes = list(
              list(
                Type = "string"
              )
            )
          )
        ),
        DataLakeS3Uri = "string",
        DataSecurityConfig = list(
          ModelKmsKeyId = "string",
          VolumeKmsKeyId = "string",
          DataLakeKmsKeyId = "string",
          VpcConfig = list(
            SecurityGroupIds = list(
              "string"
            ),
            Subnets = list(
              "string"
            )
          )
        ),
        Status = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"FAILED",
        ModelType = "DOCUMENT_CLASSIFIER"|"ENTITY_RECOGNIZER",
        Message = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        LatestFlywheelIteration = "string"
      )
    )

### Request syntax

    svc$update_flywheel(
      FlywheelArn = "string",
      ActiveModelArn = "string",
      DataAccessRoleArn = "string",
      DataSecurityConfig = list(
        ModelKmsKeyId = "string",
        VolumeKmsKeyId = "string",
        VpcConfig = list(
          SecurityGroupIds = list(
            "string"
          ),
          Subnets = list(
            "string"
          )
        )
      )
    )
