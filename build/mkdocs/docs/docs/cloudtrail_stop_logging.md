<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_stop_logging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Suspends the recording of Amazon Web Services API calls and log file delivery for the specified trail

### Description

Suspends the recording of Amazon Web Services API calls and log file
delivery for the specified trail. Under most circumstances, there is no
need to use this action. You can update a trail without stopping it
first. This action is the only way to stop recording. For a trail
enabled in all regions, this operation must be called from the region in
which the trail was created, or an `InvalidHomeRegionException` will
occur. This operation cannot be called on the shadow trails (replicated
trails in other regions) of a trail enabled in all regions.

### Usage

    cloudtrail_stop_logging(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_stop_logging_:_Name">Name</code></td>
<td><p>[required] Specifies the name or the CloudTrail ARN of the trail
for which CloudTrail will stop logging Amazon Web Services API calls.
The following is the format of a trail ARN.</p>
<p><code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_logging(
      Name = "string"
    )
