<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the templates in the current Amazon QuickSight account

### Description

Lists all the templates in the current Amazon QuickSight account.

### Usage

    quicksight_list_templates(AwsAccountId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_templates_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the templates that you're listing.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_templates_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_templates_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemplateSummaryList = list(
        list(
          Arn = "string",
          TemplateId = "string",
          Name = "string",
          LatestVersionNumber = 123,
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string",
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$list_templates(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123
    )
