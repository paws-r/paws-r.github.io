<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_prompts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the prompts for the specified Amazon Connect instance

### Description

Provides information about the prompts for the specified Amazon Connect
instance.

### Usage

    connect_list_prompts(InstanceId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_list_prompts_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_list_prompts_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_list_prompts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page. The default
MaxResult size is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PromptSummaryList = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_prompts(
      InstanceId = "string",
      NextToken = "string",
      MaxResults = 123
    )
