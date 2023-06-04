<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_list_segment_references</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to find which experiments or launches are using a specified segment

### Description

Use this operation to find which experiments or launches are using a
specified segment.

### Usage

    cloudwatchevidently_list_segment_references(maxResults, nextToken,
      segment, type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_list_segment_references_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the response. If you
omit this, the default of 50 is used.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_list_segment_references_:_nextToken">nextToken</code></td>
<td><p>The token to use when requesting the next set of results. You
received this token from a previous <code>list_segment_references</code>
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_list_segment_references_:_segment">segment</code></td>
<td><p>[required] The ARN of the segment that you want to view
information for.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_list_segment_references_:_type">type</code></td>
<td><p>[required] Specifies whether to return information about launches
or experiments that use this segment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      referencedBy = list(
        list(
          arn = "string",
          endTime = "string",
          lastUpdatedOn = "string",
          name = "string",
          startTime = "string",
          status = "string",
          type = "string"
        )
      )
    )

### Request syntax

    svc$list_segment_references(
      maxResults = 123,
      nextToken = "string",
      segment = "string",
      type = "EXPERIMENT"|"LAUNCH"
    )
