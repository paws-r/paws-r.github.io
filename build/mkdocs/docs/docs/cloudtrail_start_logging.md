<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_start_logging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the recording of Amazon Web Services API calls and log file delivery for a trail

### Description

Starts the recording of Amazon Web Services API calls and log file
delivery for a trail. For a trail that is enabled in all regions, this
operation must be called from the region in which the trail was created.
This operation cannot be called on the shadow trails (replicated trails
in other regions) of a trail that is enabled in all regions.

### Usage

    cloudtrail_start_logging(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_start_logging_:_Name">Name</code></td>
<td><p>[required] Specifies the name or the CloudTrail ARN of the trail
for which CloudTrail logs Amazon Web Services API calls. The following
is the format of a trail ARN.</p>
<p><code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_logging(
      Name = "string"
    )
