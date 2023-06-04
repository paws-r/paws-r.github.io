<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_trial</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified trial

### Description

Deletes the specified trial. All trial components that make up the trial
must be deleted first. Use the `describe_trial_component` API to get the
list of trial components.

### Usage

    sagemaker_delete_trial(TrialName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_delete_trial_:_TrialName">TrialName</code></td>
<td><p>[required] The name of the trial to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrialArn = "string"
    )

### Request syntax

    svc$delete_trial(
      TrialName = "string"
    )
