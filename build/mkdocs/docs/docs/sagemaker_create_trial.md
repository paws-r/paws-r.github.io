<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_trial</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an SageMaker trial

### Description

Creates an SageMaker *trial*. A trial is a set of steps called *trial
components* that produce a machine learning model. A trial is part of a
single SageMaker *experiment*.

When you use SageMaker Studio or the SageMaker Python SDK, all
experiments, trials, and trial components are automatically tracked,
logged, and indexed. When you use the Amazon Web Services SDK for Python
(Boto), you must use the logging APIs provided by the SDK.

You can add tags to a trial and then use the `search` API to search for
the tags.

To get a list of all your trials, call the `list_trials` API. To view a
trial's properties, call the `describe_trial` API. To create a trial
component, call the `create_trial_component` API.

### Usage

    sagemaker_create_trial(TrialName, DisplayName, ExperimentName,
      MetadataProperties, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_create_trial_:_TrialName">TrialName</code></td>
<td><p>[required] The name of the trial. The name must be unique in your
Amazon Web Services account and is not case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_trial_:_DisplayName">DisplayName</code></td>
<td><p>The name of the trial as displayed. The name doesn't need to be
unique. If <code>DisplayName</code> isn't specified,
<code>TrialName</code> is displayed.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_trial_:_ExperimentName">ExperimentName</code></td>
<td><p>[required] The name of the experiment to associate the trial
with.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_trial_:_MetadataProperties">MetadataProperties</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_trial_:_Tags">Tags</code></td>
<td><p>A list of tags to associate with the trial. You can use
<code>search</code> API to search on the tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrialArn = "string"
    )

### Request syntax

    svc$create_trial(
      TrialName = "string",
      DisplayName = "string",
      ExperimentName = "string",
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
