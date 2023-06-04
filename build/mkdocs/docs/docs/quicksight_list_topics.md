<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_topics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the topics within an account

### Description

Lists all of the topics within an account.

### Usage

    quicksight_list_topics(AwsAccountId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_topics_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the topics that you want to list.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_list_topics_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_topics_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TopicsSummaries = list(
        list(
          Arn = "string",
          TopicId = "string",
          Name = "string"
        )
      ),
      NextToken = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$list_topics(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123
    )
