<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_export_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified export instance tasks or all of your export instance tasks

### Description

Describes the specified export instance tasks or all of your export
instance tasks.

### Usage

    ec2_describe_export_tasks(ExportTaskIds, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_export_tasks_:_ExportTaskIds">ExportTaskIds</code></td>
<td><p>The export task IDs.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_export_tasks_:_Filters">Filters</code></td>
<td><p>the filters for the export tasks.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportTasks = list(
        list(
          Description = "string",
          ExportTaskId = "string",
          ExportToS3Task = list(
            ContainerFormat = "ova",
            DiskImageFormat = "VMDK"|"RAW"|"VHD",
            S3Bucket = "string",
            S3Key = "string"
          ),
          InstanceExportDetails = list(
            InstanceId = "string",
            TargetEnvironment = "citrix"|"vmware"|"microsoft"
          ),
          State = "active"|"cancelling"|"cancelled"|"completed",
          StatusMessage = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_export_tasks(
      ExportTaskIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )
