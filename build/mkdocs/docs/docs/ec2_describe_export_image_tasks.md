<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_export_image_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified export image tasks or all of your export image tasks

### Description

Describes the specified export image tasks or all of your export image
tasks.

### Usage

    ec2_describe_export_image_tasks(DryRun, Filters, ExportImageTaskIds,
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
id="ec2_describe_export_image_tasks_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_export_image_tasks_:_Filters">Filters</code></td>
<td><p>Filter tasks using the <code>task-state</code> filter and one of
the following values: <code>active</code>, <code>completed</code>,
<code>deleting</code>, or <code>deleted</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_export_image_tasks_:_ExportImageTaskIds">ExportImageTaskIds</code></td>
<td><p>The IDs of the export image tasks.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_export_image_tasks_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_export_image_tasks_:_NextToken">NextToken</code></td>
<td><p>A token that indicates the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportImageTasks = list(
        list(
          Description = "string",
          ExportImageTaskId = "string",
          ImageId = "string",
          Progress = "string",
          S3ExportLocation = list(
            S3Bucket = "string",
            S3Prefix = "string"
          ),
          Status = "string",
          StatusMessage = "string",
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

    svc$describe_export_image_tasks(
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      ExportImageTaskIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
