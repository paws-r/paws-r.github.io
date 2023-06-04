<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_store_image_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the progress of the AMI store tasks

### Description

Describes the progress of the AMI store tasks. You can describe the
store tasks for specified AMIs. If you don't specify the AMIs, you get a
paginated list of store tasks from the last 31 days.

For each AMI task, the response indicates if the task is `InProgress`,
`Completed`, or `Failed`. For tasks `InProgress`, the response shows the
estimated progress as a percentage.

Tasks are listed in reverse chronological order. Currently, only tasks
from the past 31 days can be viewed.

To use this API, you must have the required permissions. For more
information, see [Permissions for storing and restoring AMIs using
Amazon
S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
in the *Amazon EC2 User Guide*.

For more information, see [Store and restore an AMI using Amazon
S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_describe_store_image_tasks(ImageIds, DryRun, Filters, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_store_image_tasks_:_ImageIds">ImageIds</code></td>
<td><p>The AMI IDs for which to show progress. Up to 20 AMI IDs can be
included in a request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_store_image_tasks_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_store_image_tasks_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>task-state</code> - Returns tasks in a certain state
(<code>InProgress</code> | <code>Completed</code> |
<code>Failed</code>)</p></li>
<li><p><code>bucket</code> - Returns task information for tasks that
targeted a specific bucket. For the filter value, specify the bucket
name.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_store_image_tasks_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_store_image_tasks_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p>
<p>You cannot specify this parameter and the <code>ImageIDs</code>
parameter in the same call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StoreImageTaskResults = list(
        list(
          AmiId = "string",
          TaskStartTime = as.POSIXct(
            "2015-01-01"
          ),
          Bucket = "string",
          S3objectKey = "string",
          ProgressPercentage = 123,
          StoreTaskState = "string",
          StoreTaskFailureReason = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_store_image_tasks(
      ImageIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
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
