<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_trial_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified trial component

### Description

Deletes the specified trial component. A trial component must be
disassociated from all trials before the trial component can be deleted.
To disassociate a trial component from a trial, call the
`disassociate_trial_component` API.

### Usage

    sagemaker_delete_trial_component(TrialComponentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_trial_component_:_TrialComponentName">TrialComponentName</code></td>
<td><p>[required] The name of the component to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrialComponentArn = "string"
    )

### Request syntax

    svc$delete_trial_component(
      TrialComponentName = "string"
    )
