<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_resume_batch_load_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resume batch load task

### Description

Resume batch load task

### Usage

    timestreamwrite_resume_batch_load_task(TaskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_resume_batch_load_task_:_TaskId">TaskId</code></td>
<td><p>[required] The ID of the batch load task to resume.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$resume_batch_load_task(
      TaskId = "string"
    )
