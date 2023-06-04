<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_cancel_export_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an active export task

### Description

Cancels an active export task. The request removes all artifacts of the
export, including any partially-created Amazon S3 objects. If the export
task is complete or is in the process of transferring the final disk
image, the command fails and returns an error.

### Usage

    ec2_cancel_export_task(ExportTaskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_cancel_export_task_:_ExportTaskId">ExportTaskId</code></td>
<td><p>[required] The ID of the export task. This is the ID returned by
<code>create_instance_export_task</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_export_task(
      ExportTaskId = "string"
    )
