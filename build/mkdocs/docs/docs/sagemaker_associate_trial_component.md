<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_associate_trial_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a trial component with a trial

### Description

Associates a trial component with a trial. A trial component can be
associated with multiple trials. To disassociate a trial component from
a trial, call the `disassociate_trial_component` API.

### Usage

    sagemaker_associate_trial_component(TrialComponentName, TrialName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_associate_trial_component_:_TrialComponentName">TrialComponentName</code></td>
<td><p>[required] The name of the component to associated with the
trial.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_associate_trial_component_:_TrialName">TrialName</code></td>
<td><p>[required] The name of the trial to associate with.</p></td>
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

    svc$associate_trial_component(
      TrialComponentName = "string",
      TrialName = "string"
    )
