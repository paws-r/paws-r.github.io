<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_send_project_session_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Performs a recipe step within an interactive DataBrew session that's currently open

### Description

Performs a recipe step within an interactive DataBrew session that's
currently open.

### Usage

    gluedatabrew_send_project_session_action(Preview, Name, RecipeStep,
      StepIndex, ClientSessionId, ViewFrame)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_send_project_session_action_:_Preview">Preview</code></td>
<td><p>If true, the result of the recipe step will be returned, but not
applied.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_send_project_session_action_:_Name">Name</code></td>
<td><p>[required] The name of the project to apply the action
to.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_send_project_session_action_:_RecipeStep">RecipeStep</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_send_project_session_action_:_StepIndex">StepIndex</code></td>
<td><p>The index from which to preview a step. This index is used to
preview the result of steps that have already been applied, so that the
resulting view frame is from earlier in the view frame stack.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_send_project_session_action_:_ClientSessionId">ClientSessionId</code></td>
<td><p>A unique identifier for an interactive session that's currently
open and ready for work. The action will be performed on this
session.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_send_project_session_action_:_ViewFrame">ViewFrame</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Result = "string",
      Name = "string",
      ActionId = 123
    )

### Request syntax

    svc$send_project_session_action(
      Preview = TRUE|FALSE,
      Name = "string",
      RecipeStep = list(
        Action = list(
          Operation = "string",
          Parameters = list(
            "string"
          )
        ),
        ConditionExpressions = list(
          list(
            Condition = "string",
            Value = "string",
            TargetColumn = "string"
          )
        )
      ),
      StepIndex = 123,
      ClientSessionId = "string",
      ViewFrame = list(
        StartColumnIndex = 123,
        ColumnRange = 123,
        HiddenColumns = list(
          "string"
        ),
        StartRowIndex = 123,
        RowRange = 123,
        Analytics = "ENABLE"|"DISABLE"
      )
    )
