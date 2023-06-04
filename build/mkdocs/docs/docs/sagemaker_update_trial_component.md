<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_trial_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates one or more properties of a trial component

### Description

Updates one or more properties of a trial component.

### Usage

    sagemaker_update_trial_component(TrialComponentName, DisplayName,
      Status, StartTime, EndTime, Parameters, ParametersToRemove,
      InputArtifacts, InputArtifactsToRemove, OutputArtifacts,
      OutputArtifactsToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_trial_component_:_TrialComponentName">TrialComponentName</code></td>
<td><p>[required] The name of the component to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_trial_component_:_DisplayName">DisplayName</code></td>
<td><p>The name of the component as displayed. The name doesn't need to
be unique. If <code>DisplayName</code> isn't specified,
<code>TrialComponentName</code> is displayed.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_trial_component_:_Status">Status</code></td>
<td><p>The new status of the component.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_trial_component_:_StartTime">StartTime</code></td>
<td><p>When the component started.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_trial_component_:_EndTime">EndTime</code></td>
<td><p>When the component ended.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_trial_component_:_Parameters">Parameters</code></td>
<td><p>Replaces all of the component's hyperparameters with the
specified hyperparameters or add new hyperparameters. Existing
hyperparameters are replaced if the trial component is updated with an
identical hyperparameter key.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_trial_component_:_ParametersToRemove">ParametersToRemove</code></td>
<td><p>The hyperparameters to remove from the component.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_trial_component_:_InputArtifacts">InputArtifacts</code></td>
<td><p>Replaces all of the component's input artifacts with the
specified artifacts or adds new input artifacts. Existing input
artifacts are replaced if the trial component is updated with an
identical input artifact key.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_trial_component_:_InputArtifactsToRemove">InputArtifactsToRemove</code></td>
<td><p>The input artifacts to remove from the component.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_trial_component_:_OutputArtifacts">OutputArtifacts</code></td>
<td><p>Replaces all of the component's output artifacts with the
specified artifacts or adds new output artifacts. Existing output
artifacts are replaced if the trial component is updated with an
identical output artifact key.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_trial_component_:_OutputArtifactsToRemove">OutputArtifactsToRemove</code></td>
<td><p>The output artifacts to remove from the component.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrialComponentArn = "string"
    )

### Request syntax

    svc$update_trial_component(
      TrialComponentName = "string",
      DisplayName = "string",
      Status = list(
        PrimaryStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
        Message = "string"
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Parameters = list(
        list(
          StringValue = "string",
          NumberValue = 123.0
        )
      ),
      ParametersToRemove = list(
        "string"
      ),
      InputArtifacts = list(
        list(
          MediaType = "string",
          Value = "string"
        )
      ),
      InputArtifactsToRemove = list(
        "string"
      ),
      OutputArtifacts = list(
        list(
          MediaType = "string",
          Value = "string"
        )
      ),
      OutputArtifactsToRemove = list(
        "string"
      )
    )
