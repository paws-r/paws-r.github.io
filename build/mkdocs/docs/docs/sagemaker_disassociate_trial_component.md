<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_disassociate_trial_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a trial component from a trial

### Description

Disassociates a trial component from a trial. This doesn't effect other
trials the component is associated with. Before you can delete a
component, you must disassociate the component from all trials it is
associated with. To associate a trial component with a trial, call the
`associate_trial_component` API.

To get a list of the trials a component is associated with, use the
`search` API. Specify `ExperimentTrialComponent` for the `Resource`
parameter. The list appears in the response under
`Results.TrialComponent.Parents`.

### Usage

    sagemaker_disassociate_trial_component(TrialComponentName, TrialName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_disassociate_trial_component_:_TrialComponentName">TrialComponentName</code></td>
<td><p>[required] The name of the component to disassociate from the
trial.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_disassociate_trial_component_:_TrialName">TrialName</code></td>
<td><p>[required] The name of the trial to disassociate from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrialComponentArn = "string",
      TrialArn = "string"
    )

### Request syntax

    svc$disassociate_trial_component(
      TrialComponentName = "string",
      TrialName = "string"
    )
