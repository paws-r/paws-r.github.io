<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the given dataset

### Description

Describes the given dataset. For more information on datasets, see
`create_dataset`.

### Usage

    personalize_describe_dataset(datasetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_dataset_:_datasetArn">datasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      dataset = list(
        name = "string",
        datasetArn = "string",
        datasetGroupArn = "string",
        datasetType = "string",
        schemaArn = "string",
        status = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_dataset(
      datasetArn = "string"
    )
