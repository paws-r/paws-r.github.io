<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_bundle_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified bundle tasks or all of your bundle tasks

### Description

Describes the specified bundle tasks or all of your bundle tasks.

Completed bundle tasks are listed for only a limited time. If your
bundle task is no longer in the list, you can still register an AMI from
it. Just use `register_image` with the Amazon S3 bucket name and image
manifest name you provided to the bundle task.

### Usage

    ec2_describe_bundle_tasks(BundleIds, Filters, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_bundle_tasks_:_BundleIds">BundleIds</code></td>
<td><p>The bundle task IDs.</p>
<p>Default: Describes all your bundle tasks.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_bundle_tasks_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>bundle-id</code> - The ID of the bundle task.</p></li>
<li><p><code>error-code</code> - If the task failed, the error code
returned.</p></li>
<li><p><code>error-message</code> - If the task failed, the error
message returned.</p></li>
<li><p><code>instance-id</code> - The ID of the instance.</p></li>
<li><p><code>progress</code> - The level of task completion, as a
percentage (for example, 20%).</p></li>
<li><p><code>s3-bucket</code> - The Amazon S3 bucket to store the
AMI.</p></li>
<li><p><code>s3-prefix</code> - The beginning of the AMI name.</p></li>
<li><p><code>start-time</code> - The time the task started (for example,
2013-09-15T17:15:20.000Z).</p></li>
<li><p><code>state</code> - The state of the task (<code>pending</code>
| <code style="white-space: pre;">⁠waiting-for-shutdown⁠</code> |
<code>bundling</code> | <code>storing</code> | <code>cancelling</code> |
<code>complete</code> | <code>failed</code>).</p></li>
<li><p><code>update-time</code> - The time of the most recent update for
the task.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_bundle_tasks_:_DryRun">DryRun</code></td>
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
      BundleTasks = list(
        list(
          BundleId = "string",
          BundleTaskError = list(
            Code = "string",
            Message = "string"
          ),
          InstanceId = "string",
          Progress = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          State = "pending"|"waiting-for-shutdown"|"bundling"|"storing"|"cancelling"|"complete"|"failed",
          Storage = list(
            S3 = list(
              AWSAccessKeyId = "string",
              Bucket = "string",
              Prefix = "string",
              UploadPolicy = raw,
              UploadPolicySignature = "string"
            )
          ),
          UpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_bundle_tasks(
      BundleIds = list(
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
      DryRun = TRUE|FALSE
    )
