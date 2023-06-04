<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_volumes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified EBS volumes or all of your EBS volumes

### Description

Describes the specified EBS volumes or all of your EBS volumes.

If you are describing a long list of volumes, we recommend that you
paginate the output to make the list more manageable. For more
information, see
[Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).

For more information about EBS volumes, see [Amazon EBS
volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volumes.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_volumes(Filters, VolumeIds, DryRun, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_volumes_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>attachment.attach-time</code> - The time stamp when the
attachment initiated.</p></li>
<li><p><code>attachment.delete-on-termination</code> - Whether the
volume is deleted on instance termination.</p></li>
<li><p><code>attachment.device</code> - The device name specified in the
block device mapping (for example, <code
style="white-space: pre;">⁠/dev/sda1⁠</code>).</p></li>
<li><p><code>attachment.instance-id</code> - The ID of the instance the
volume is attached to.</p></li>
<li><p><code>attachment.status</code> - The attachment state
(<code>attaching</code> | <code>attached</code> |
<code>detaching</code>).</p></li>
<li><p><code>availability-zone</code> - The Availability Zone in which
the volume was created.</p></li>
<li><p><code>create-time</code> - The time stamp when the volume was
created.</p></li>
<li><p><code>encrypted</code> - Indicates whether the volume is
encrypted (<code>true</code> | <code>false</code>)</p></li>
<li><p><code>multi-attach-enabled</code> - Indicates whether the volume
is enabled for Multi-Attach (<code>true</code> |
<code>false</code>)</p></li>
<li><p><code>fast-restored</code> - Indicates whether the volume was
created from a snapshot that is enabled for fast snapshot restore
(<code>true</code> | <code>false</code>).</p></li>
<li><p><code>size</code> - The size of the volume, in GiB.</p></li>
<li><p><code>snapshot-id</code> - The snapshot from which the volume was
created.</p></li>
<li><p><code>status</code> - The state of the volume
(<code>creating</code> | <code>available</code> | <code
style="white-space: pre;">⁠in-use⁠</code> | <code>deleting</code> |
<code>deleted</code> | <code>error</code>).</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>volume-id</code> - The volume ID.</p></li>
<li><p><code>volume-type</code> - The Amazon EBS volume type
(<code>gp2</code> | <code>gp3</code> | <code>io1</code> |
<code>io2</code> | <code>st1</code> | <code>sc1</code>|
<code>standard</code>)</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_volumes_:_VolumeIds">VolumeIds</code></td>
<td><p>The volume IDs.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_volumes_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_volumes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of volumes to return for this request. This
value can be between 5 and 500; if you specify a value larger than 500,
only 500 items are returned. If this parameter is not used, then all
items are returned. You cannot specify this parameter and the volume IDs
parameter in the same request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_volumes_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned from the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Volumes = list(
        list(
          Attachments = list(
            list(
              AttachTime = as.POSIXct(
                "2015-01-01"
              ),
              Device = "string",
              InstanceId = "string",
              State = "attaching"|"attached"|"detaching"|"detached"|"busy",
              VolumeId = "string",
              DeleteOnTermination = TRUE|FALSE
            )
          ),
          AvailabilityZone = "string",
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          Encrypted = TRUE|FALSE,
          KmsKeyId = "string",
          OutpostArn = "string",
          Size = 123,
          SnapshotId = "string",
          State = "creating"|"available"|"in-use"|"deleting"|"deleted"|"error",
          VolumeId = "string",
          Iops = 123,
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
          FastRestored = TRUE|FALSE,
          MultiAttachEnabled = TRUE|FALSE,
          Throughput = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_volumes(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      VolumeIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This example describes all of your volumes in the default region.
    svc$describe_volumes()

    # This example describes all volumes that are both attached to the
    # instance with the ID i-1234567890abcdef0 and set to delete when the
    # instance terminates.
    svc$describe_volumes(
      Filters = list(
        list(
          Name = "attachment.instance-id",
          Values = list(
            "i-1234567890abcdef0"
          )
        ),
        list(
          Name = "attachment.delete-on-termination",
          Values = list(
            "true"
          )
        )
      )
    )

    ## End(Not run)
