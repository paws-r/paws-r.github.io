<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_trial_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a trial component, which is a stage of a machine learning trial

### Description

Creates a *trial component*, which is a stage of a machine learning
*trial*. A trial is composed of one or more trial components. A trial
component can be used in multiple trials.

Trial components include pre-processing jobs, training jobs, and batch
transform jobs.

When you use SageMaker Studio or the SageMaker Python SDK, all
experiments, trials, and trial components are automatically tracked,
logged, and indexed. When you use the Amazon Web Services SDK for Python
(Boto), you must use the logging APIs provided by the SDK.

You can add tags to a trial component and then use the `search` API to
search for the tags.

### Usage

    sagemaker_create_trial_component(TrialComponentName, DisplayName,
      Status, StartTime, EndTime, Parameters, InputArtifacts, OutputArtifacts,
      MetadataProperties, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_trial_component_:_TrialComponentName">TrialComponentName</code></td>
<td><p>[required] The name of the component. The name must be unique in
your Amazon Web Services account and is not case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_trial_component_:_DisplayName">DisplayName</code></td>
<td><p>The name of the component as displayed. The name doesn't need to
be unique. If <code>DisplayName</code> isn't specified,
<code>TrialComponentName</code> is displayed.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_trial_component_:_Status">Status</code></td>
<td><p>The status of the component. States include:</p>
<ul>
<li><p>InProgress</p></li>
<li><p>Completed</p></li>
<li><p>Failed</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_trial_component_:_StartTime">StartTime</code></td>
<td><p>When the component started.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_trial_component_:_EndTime">EndTime</code></td>
<td><p>When the component ended.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_trial_component_:_Parameters">Parameters</code></td>
<td><p>The hyperparameters for the component.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_trial_component_:_InputArtifacts">InputArtifacts</code></td>
<td><p>The input artifacts for the component. Examples of input
artifacts are datasets, algorithms, hyperparameters, source code, and
instance types.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_trial_component_:_OutputArtifacts">OutputArtifacts</code></td>
<td><p>The output artifacts for the component. Examples of output
artifacts are metrics, snapshots, logs, and images.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_trial_component_:_MetadataProperties">MetadataProperties</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_trial_component_:_Tags">Tags</code></td>
<td><p>A list of tags to associate with the component. You can use
<code>search</code> API to search on the tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrialComponentArn = "string"
    )

### Request syntax

    svc$create_trial_component(
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
      InputArtifacts = list(
        list(
          MediaType = "string",
          Value = "string"
        )
      ),
      OutputArtifacts = list(
        list(
          MediaType = "string",
          Value = "string"
        )
      ),
      MetadataProperties = list(
        CommitId = "string",
        Repository = "string",
        GeneratedBy = "string",
        ProjectId = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
