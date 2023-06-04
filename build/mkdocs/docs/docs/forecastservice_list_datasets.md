<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_list_datasets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of datasets created using the CreateDataset operation

### Description

Returns a list of datasets created using the `create_dataset` operation.
For each dataset, a summary of its properties, including its Amazon
Resource Name (ARN), is returned. To retrieve the complete set of
properties, use the ARN with the `describe_dataset` operation.

### Usage

    forecastservice_list_datasets(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_list_datasets_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous request was truncated, the response
includes a <code>NextToken</code>. To retrieve the next set of results,
use the token in the next request. Tokens expire after 24
hours.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_list_datasets_:_MaxResults">MaxResults</code></td>
<td><p>The number of items to return in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Datasets = list(
        list(
          DatasetArn = "string",
          DatasetName = "string",
          DatasetType = "TARGET_TIME_SERIES"|"RELATED_TIME_SERIES"|"ITEM_METADATA",
          Domain = "RETAIL"|"CUSTOM"|"INVENTORY_PLANNING"|"EC2_CAPACITY"|"WORK_FORCE"|"WEB_TRAFFIC"|"METRICS",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModificationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_datasets(
      NextToken = "string",
      MaxResults = 123
    )
