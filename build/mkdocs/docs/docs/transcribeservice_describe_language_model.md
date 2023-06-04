<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_describe_language_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the specified custom language model

### Description

Provides information about the specified custom language model.

This operation also shows if the base language model that you used to
create your custom language model has been updated. If Amazon Transcribe
has updated the base model, you can create a new custom language model
using the updated base model.

If you tried to create a new custom language model and the request
wasn't successful, you can use `describe_language_model` to help
identify the reason for this failure.

### Usage

    transcribeservice_describe_language_model(ModelName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_describe_language_model_:_ModelName">ModelName</code></td>
<td><p>[required] The name of the custom language model you want
information about. Model names are case sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LanguageModel = list(
        ModelName = "string",
        CreateTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        LanguageCode = "en-US"|"hi-IN"|"es-US"|"en-GB"|"en-AU"|"de-DE"|"ja-JP",
        BaseModelName = "NarrowBand"|"WideBand",
        ModelStatus = "IN_PROGRESS"|"FAILED"|"COMPLETED",
        UpgradeAvailability = TRUE|FALSE,
        FailureReason = "string",
        InputDataConfig = list(
          S3Uri = "string",
          TuningDataS3Uri = "string",
          DataAccessRoleArn = "string"
        )
      )
    )

### Request syntax

    svc$describe_language_model(
      ModelName = "string"
    )
