<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_fast_launch_images</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe details for Windows AMIs that are configured for faster launching

### Description

Describe details for Windows AMIs that are configured for faster
launching.

### Usage

    ec2_describe_fast_launch_images(ImageIds, Filters, MaxResults,
      NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_fast_launch_images_:_ImageIds">ImageIds</code></td>
<td><p>Details for one or more Windows AMI image IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fast_launch_images_:_Filters">Filters</code></td>
<td><p>Use the following filters to streamline results.</p>
<ul>
<li><p><code>resource-type</code> - The resource type for
pre-provisioning.</p></li>
<li><p><code>launch-template</code> - The launch template that is
associated with the pre-provisioned Windows AMI.</p></li>
<li><p><code>owner-id</code> - The owner ID for the pre-provisioning
resource.</p></li>
<li><p><code>state</code> - The current state of fast launching for the
Windows AMI.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_fast_launch_images_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fast_launch_images_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_fast_launch_images_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FastLaunchImages = list(
        list(
          ImageId = "string",
          ResourceType = "snapshot",
          SnapshotConfiguration = list(
            TargetResourceCount = 123
          ),
          LaunchTemplate = list(
            LaunchTemplateId = "string",
            LaunchTemplateName = "string",
            Version = "string"
          ),
          MaxParallelLaunches = 123,
          OwnerId = "string",
          State = "enabling"|"enabling-failed"|"enabled"|"enabled-failed"|"disabling"|"disabling-failed",
          StateTransitionReason = "string",
          StateTransitionTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_fast_launch_images(
      ImageIds = list(
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
      MaxResults = 123,
      NextToken = "string",
      DryRun = TRUE|FALSE
    )
