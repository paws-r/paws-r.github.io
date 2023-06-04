<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_human_task_ui</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Defines the settings you will use for the human review workflow user interface

### Description

Defines the settings you will use for the human review workflow user
interface. Reviewers will see a three-panel interface with an
instruction area, the item to review, and an input area.

### Usage

    sagemaker_create_human_task_ui(HumanTaskUiName, UiTemplate, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_human_task_ui_:_HumanTaskUiName">HumanTaskUiName</code></td>
<td><p>[required] The name of the user interface you are
creating.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_human_task_ui_:_UiTemplate">UiTemplate</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_human_task_ui_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs that contain metadata to help you
categorize and organize a human review workflow user interface. Each tag
consists of a key and a value, both of which you define.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HumanTaskUiArn = "string"
    )

### Request syntax

    svc$create_human_task_ui(
      HumanTaskUiName = "string",
      UiTemplate = list(
        Content = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
