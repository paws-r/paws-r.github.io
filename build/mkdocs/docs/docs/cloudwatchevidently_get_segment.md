<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_get_segment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified segment

### Description

Returns information about the specified segment. Specify the segment you
want to view by specifying its ARN.

### Usage

    cloudwatchevidently_get_segment(segment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_get_segment_:_segment">segment</code></td>
<td><p>[required] The ARN of the segment to return information
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      segment = list(
        arn = "string",
        createdTime = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        experimentCount = 123,
        lastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        launchCount = 123,
        name = "string",
        pattern = "string",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_segment(
      segment = "string"
    )
