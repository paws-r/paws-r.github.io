<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_describe_flywheel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides configuration information about the flywheel

### Description

Provides configuration information about the flywheel. For more
information about flywheels, see [Flywheel
overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the *Amazon Comprehend Developer Guide*.

### Usage

    comprehend_describe_flywheel(FlywheelArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_describe_flywheel_:_FlywheelArn">FlywheelArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the
flywheel.</p></td>
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

    svc$describe_flywheel(
      FlywheelArn = "string"
    )
