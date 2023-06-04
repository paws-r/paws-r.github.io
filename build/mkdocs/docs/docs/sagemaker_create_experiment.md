<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a SageMaker experiment

### Description

Creates a SageMaker *experiment*. An experiment is a collection of
*trials* that are observed, compared and evaluated as a group. A trial
is a set of steps, called *trial components*, that produce a machine
learning model.

In the Studio UI, trials are referred to as *run groups* and trial
components are referred to as *runs*.

The goal of an experiment is to determine the components that produce
the best model. Multiple trials are performed, each one isolating and
measuring the impact of a change to one or more inputs, while keeping
the remaining inputs constant.

When you use SageMaker Studio or the SageMaker Python SDK, all
experiments, trials, and trial components are automatically tracked,
logged, and indexed. When you use the Amazon Web Services SDK for Python
(Boto), you must use the logging APIs provided by the SDK.

You can add tags to experiments, trials, trial components and then use
the `search` API to search for the tags.

To add a description to an experiment, specify the optional
`Description` parameter. To add a description later, or to change the
description, call the `update_experiment` API.

To get a list of all your experiments, call the `list_experiments` API.
To view an experiment's properties, call the `describe_experiment` API.
To get a list of all the trials associated with an experiment, call the
`list_trials` API. To create a trial call the `create_trial` API.

### Usage

    sagemaker_create_experiment(ExperimentName, DisplayName, Description,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_experiment_:_ExperimentName">ExperimentName</code></td>
<td><p>[required] The name of the experiment. The name must be unique in
your Amazon Web Services account and is not case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_experiment_:_DisplayName">DisplayName</code></td>
<td><p>The name of the experiment as displayed. The name doesn't need to
be unique. If you don't specify <code>DisplayName</code>, the value in
<code>ExperimentName</code> is displayed.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_experiment_:_Description">Description</code></td>
<td><p>The description of the experiment.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_experiment_:_Tags">Tags</code></td>
<td><p>A list of tags to associate with the experiment. You can use
<code>search</code> API to search on the tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExperimentArn = "string"
    )

### Request syntax

    svc$create_experiment(
      ExperimentName = "string",
      DisplayName = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
