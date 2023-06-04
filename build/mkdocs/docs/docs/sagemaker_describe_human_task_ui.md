<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_human_task_ui</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the requested human task user interface (worker task template)

### Description

Returns information about the requested human task user interface
(worker task template).

### Usage

    sagemaker_describe_human_task_ui(HumanTaskUiName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_human_task_ui_:_HumanTaskUiName">HumanTaskUiName</code></td>
<td><p>[required] The name of the human task user interface (worker task
template) you want information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HumanTaskUiArn = "string",
      HumanTaskUiName = "string",
      HumanTaskUiStatus = "Active"|"Deleting",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      UiTemplate = list(
        Url = "string",
        ContentSha256 = "string"
      )
    )

### Request syntax

    svc$describe_human_task_ui(
      HumanTaskUiName = "string"
    )
