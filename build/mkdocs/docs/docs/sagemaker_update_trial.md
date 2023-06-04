<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_trial</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the display name of a trial

### Description

Updates the display name of a trial.

### Usage

    sagemaker_update_trial(TrialName, DisplayName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_update_trial_:_TrialName">TrialName</code></td>
<td><p>[required] The name of the trial to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_trial_:_DisplayName">DisplayName</code></td>
<td><p>The name of the trial as displayed. The name doesn't need to be
unique. If <code>DisplayName</code> isn't specified,
<code>TrialName</code> is displayed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrialArn = "string"
    )

### Request syntax

    svc$update_trial(
      TrialName = "string",
      DisplayName = "string"
    )
