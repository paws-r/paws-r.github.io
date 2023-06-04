<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_put_classification_export_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates the configuration settings for storing data classification results

### Description

Creates or updates the configuration settings for storing data
classification results.

### Usage

    macie2_put_classification_export_configuration(configuration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_put_classification_export_configuration_:_configuration">configuration</code></td>
<td><p>[required] The location to store data classification results in,
and the encryption settings to use when storing results in that
location.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      configuration = list(
        s3Destination = list(
          bucketName = "string",
          keyPrefix = "string",
          kmsKeyArn = "string"
        )
      )
    )

### Request syntax

    svc$put_classification_export_configuration(
      configuration = list(
        s3Destination = list(
          bucketName = "string",
          keyPrefix = "string",
          kmsKeyArn = "string"
        )
      )
    )
