<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_import_snapshot_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes your import snapshot tasks

### Description

Describes your import snapshot tasks.

### Usage

    ec2_describe_import_snapshot_tasks(DryRun, Filters, ImportTaskIds,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_import_snapshot_tasks_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_import_snapshot_tasks_:_Filters">Filters</code></td>
<td><p>The filters.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_import_snapshot_tasks_:_ImportTaskIds">ImportTaskIds</code></td>
<td><p>A list of import snapshot task IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_import_snapshot_tasks_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
<code>NextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_import_snapshot_tasks_:_NextToken">NextToken</code></td>
<td><p>A token that indicates the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImportSnapshotTasks = list(
        list(
          Description = "string",
          ImportTaskId = "string",
          SnapshotTaskDetail = list(
            Description = "string",
            DiskImageSize = 123.0,
            Encrypted = TRUE|FALSE,
            Format = "string",
            KmsKeyId = "string",
            Progress = "string",
            SnapshotId = "string",
            Status = "string",
            StatusMessage = "string",
            Url = "string",
            UserBucket = list(
              S3Bucket = "string",
              S3Key = "string"
            )
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_import_snapshot_tasks(
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      ImportTaskIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
