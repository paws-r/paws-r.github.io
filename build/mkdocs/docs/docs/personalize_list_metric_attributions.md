<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_metric_attributions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists metric attributions

### Description

Lists metric attributions.

### Usage

    personalize_list_metric_attributions(datasetGroupArn, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_metric_attributions_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>The metric attributions' dataset group Amazon Resource Name
(ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_metric_attributions_:_nextToken">nextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_metric_attributions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of metric attributions to return in one page
of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      metricAttributions = list(
        list(
          name = "string",
          metricAttributionArn = "string",
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          failureReason = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_metric_attributions(
      datasetGroupArn = "string",
      nextToken = "string",
      maxResults = 123
    )
