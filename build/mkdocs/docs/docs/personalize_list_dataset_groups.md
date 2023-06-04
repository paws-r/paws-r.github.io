<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_dataset_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of dataset groups

### Description

Returns a list of dataset groups. The response provides the properties
for each dataset group, including the Amazon Resource Name (ARN). For
more information on dataset groups, see `create_dataset_group`.

### Usage

    personalize_list_dataset_groups(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_dataset_groups_:_nextToken">nextToken</code></td>
<td><p>A token returned from the previous call to
<code>list_dataset_groups</code> for getting the next set of dataset
groups (if they exist).</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_dataset_groups_:_maxResults">maxResults</code></td>
<td><p>The maximum number of dataset groups to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetGroups = list(
        list(
          name = "string",
          datasetGroupArn = "string",
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          failureReason = "string",
          domain = "ECOMMERCE"|"VIDEO_ON_DEMAND"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_dataset_groups(
      nextToken = "string",
      maxResults = 123
    )
