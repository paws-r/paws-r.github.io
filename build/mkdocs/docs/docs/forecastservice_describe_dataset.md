<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an Amazon Forecast dataset created using the CreateDataset operation

### Description

Describes an Amazon Forecast dataset created using the `create_dataset`
operation.

In addition to listing the parameters specified in the `create_dataset`
request, this operation includes the following dataset properties:

-   `CreationTime`

-   `LastModificationTime`

-   `Status`

### Usage

    forecastservice_describe_dataset(DatasetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_dataset_:_DatasetArn">DatasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetArn = "string",
      DatasetName = "string",
      Domain = "RETAIL"|"CUSTOM"|"INVENTORY_PLANNING"|"EC2_CAPACITY"|"WORK_FORCE"|"WEB_TRAFFIC"|"METRICS",
      DatasetType = "TARGET_TIME_SERIES"|"RELATED_TIME_SERIES"|"ITEM_METADATA",
      DataFrequency = "string",
      Schema = list(
        Attributes = list(
          list(
            AttributeName = "string",
            AttributeType = "string"|"integer"|"float"|"timestamp"|"geolocation"
          )
        )
      ),
      EncryptionConfig = list(
        RoleArn = "string",
        KMSKeyArn = "string"
      ),
      Status = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_dataset(
      DatasetArn = "string"
    )
