<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_classification_export_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the configuration settings for storing data classification results

### Description

Retrieves the configuration settings for storing data classification
results.

### Usage

    macie2_get_classification_export_configuration()

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

    svc$get_classification_export_configuration()
