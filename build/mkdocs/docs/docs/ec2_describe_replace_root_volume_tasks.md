<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_replace_root_volume_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a root volume replacement task

### Description

Describes a root volume replacement task. For more information, see
[Replace a root
volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/replace-root.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_replace_root_volume_tasks(ReplaceRootVolumeTaskIds,
      Filters, MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_replace_root_volume_tasks_:_ReplaceRootVolumeTaskIds">ReplaceRootVolumeTaskIds</code></td>
<td><p>The ID of the root volume replacement task to view.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_replace_root_volume_tasks_:_Filters">Filters</code></td>
<td><p>Filter to use:</p>
<ul>
<li><p><code>instance-id</code> - The ID of the instance for which the
root volume replacement task was created.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_replace_root_volume_tasks_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_replace_root_volume_tasks_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_replace_root_volume_tasks_:_DryRun">DryRun</code></td>
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
      ReplaceRootVolumeTasks = list(
        list(
          ReplaceRootVolumeTaskId = "string",
          InstanceId = "string",
          TaskState = "pending"|"in-progress"|"failing"|"succeeded"|"failed"|"failed-detached",
          StartTime = "string",
          CompleteTime = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          ImageId = "string",
          SnapshotId = "string",
          DeleteReplacedRootVolume = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_replace_root_volume_tasks(
      ReplaceRootVolumeTaskIds = list(
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
