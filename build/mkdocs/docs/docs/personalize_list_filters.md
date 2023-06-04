<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_filters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all filters that belong to a given dataset group

### Description

Lists all filters that belong to a given dataset group.

### Usage

    personalize_list_filters(datasetGroupArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_filters_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>The ARN of the dataset group that contains the filters.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_filters_:_nextToken">nextToken</code></td>
<td><p>A token returned from the previous call to
<code>list_filters</code> for getting the next set of filters (if they
exist).</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_filters_:_maxResults">maxResults</code></td>
<td><p>The maximum number of filters to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Filters = list(
        list(
          name = "string",
          filterArn = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          datasetGroupArn = "string",
          failureReason = "string",
          status = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_filters(
      datasetGroupArn = "string",
      nextToken = "string",
      maxResults = 123
    )
