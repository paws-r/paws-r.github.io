<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_human_task_ui</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to delete a human task user interface (worker task template)

### Description

Use this operation to delete a human task user interface (worker task
template).

To see a list of human task user interfaces (work task templates) in
your account, use `list_human_task_uis`. When you delete a worker task
template, it no longer appears when you call `list_human_task_uis`.

### Usage

    sagemaker_delete_human_task_ui(HumanTaskUiName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_human_task_ui_:_HumanTaskUiName">HumanTaskUiName</code></td>
<td><p>[required] The name of the human task user interface (work task
template) you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_human_task_ui(
      HumanTaskUiName = "string"
    )
