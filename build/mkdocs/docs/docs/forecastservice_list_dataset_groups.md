<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_list_dataset_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of dataset groups created using the CreateDatasetGroup operation

### Description

Returns a list of dataset groups created using the
`create_dataset_group` operation. For each dataset group, this operation
returns a summary of its properties, including its Amazon Resource Name
(ARN). You can retrieve the complete set of properties by using the
dataset group ARN with the `describe_dataset_group` operation.

### Usage

    forecastservice_list_dataset_groups(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_list_dataset_groups_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous request was truncated, the response
includes a <code>NextToken</code>. To retrieve the next set of results,
use the token in the next request. Tokens expire after 24
hours.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_list_dataset_groups_:_MaxResults">MaxResults</code></td>
<td><p>The number of items to return in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetGroups = list(
        list(
          DatasetGroupArn = "string",
          DatasetGroupName = "string",
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

    svc$list_dataset_groups(
      NextToken = "string",
      MaxResults = 123
    )
