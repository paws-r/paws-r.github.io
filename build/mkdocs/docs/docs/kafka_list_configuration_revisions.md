<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_list_configuration_revisions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all the MSK configurations in this Region

### Description

Returns a list of all the MSK configurations in this Region.

### Usage

    kafka_list_configuration_revisions(Arn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_list_configuration_revisions_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies an MSK configuration and all of its revisions.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_list_configuration_revisions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the response. If there
are more results, the response includes a NextToken parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_list_configuration_revisions_:_NextToken">NextToken</code></td>
<td><p>The paginated results marker. When the result of the operation is
truncated, the call returns NextToken in the response. To get the next
batch, provide this token in your next request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Revisions = list(
        list(
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          Revision = 123
        )
      )
    )

### Request syntax

    svc$list_configuration_revisions(
      Arn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
