<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_volumes_modifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the most recent volume modification request for the specified EBS volumes

### Description

Describes the most recent volume modification request for the specified
EBS volumes.

If a volume has never been modified, some information in the output will
be null. If a volume has been modified more than once, the output
includes only the most recent modification request.

You can also use CloudWatch Events to check the status of a modification
to an EBS volume. For information about CloudWatch Events, see the
[Amazon CloudWatch Events User
Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). For
more information, see [Monitor the progress of volume
modifications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-modifications.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_volumes_modifications(DryRun, VolumeIds, Filters,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_volumes_modifications_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_volumes_modifications_:_VolumeIds">VolumeIds</code></td>
<td><p>The IDs of the volumes.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_volumes_modifications_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>modification-state</code> - The current modification state
(modifying | optimizing | completed | failed).</p></li>
<li><p><code>original-iops</code> - The original IOPS rate of the
volume.</p></li>
<li><p><code>original-size</code> - The original size of the volume, in
GiB.</p></li>
<li><p><code>original-volume-type</code> - The original volume type of
the volume (standard | io1 | io2 | gp2 | sc1 | st1).</p></li>
<li><p><code>originalMultiAttachEnabled</code> - Indicates whether
Multi-Attach support was enabled (true | false).</p></li>
<li><p><code>start-time</code> - The modification start time.</p></li>
<li><p><code>target-iops</code> - The target IOPS rate of the
volume.</p></li>
<li><p><code>target-size</code> - The target size of the volume, in
GiB.</p></li>
<li><p><code>target-volume-type</code> - The target volume type of the
volume (standard | io1 | io2 | gp2 | sc1 | st1).</p></li>
<li><p><code>targetMultiAttachEnabled</code> - Indicates whether
Multi-Attach support is to be enabled (true | false).</p></li>
<li><p><code>volume-id</code> - The ID of the volume.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_volumes_modifications_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_volumes_modifications_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results (up to a limit of 500) to be
returned in a paginated request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VolumesModifications = list(
        list(
          VolumeId = "string",
          ModificationState = "modifying"|"optimizing"|"completed"|"failed",
          StatusMessage = "string",
          TargetSize = 123,
          TargetIops = 123,
          TargetVolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
          TargetThroughput = 123,
          TargetMultiAttachEnabled = TRUE|FALSE,
          OriginalSize = 123,
          OriginalIops = 123,
          OriginalVolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
          OriginalThroughput = 123,
          OriginalMultiAttachEnabled = TRUE|FALSE,
          Progress = 123,
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_volumes_modifications(
      DryRun = TRUE|FALSE,
      VolumeIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
