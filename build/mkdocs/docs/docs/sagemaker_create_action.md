<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an action

### Description

Creates an *action*. An action is a lineage tracking entity that
represents an action or activity. For example, a model deployment or an
HPO job. Generally, an action involves at least one input or output
artifact. For more information, see [Amazon SageMaker ML Lineage
Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).

### Usage

    sagemaker_create_action(ActionName, Source, ActionType, Description,
      Status, Properties, MetadataProperties, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_action_:_ActionName">ActionName</code></td>
<td><p>[required] The name of the action. Must be unique to your account
in an Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_action_:_Source">Source</code></td>
<td><p>[required] The source type, ID, and URI.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_action_:_ActionType">ActionType</code></td>
<td><p>[required] The action type.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_action_:_Description">Description</code></td>
<td><p>The description of the action.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_action_:_Status">Status</code></td>
<td><p>The status of the action.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_action_:_Properties">Properties</code></td>
<td><p>A list of properties to add to the action.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_action_:_MetadataProperties">MetadataProperties</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_action_:_Tags">Tags</code></td>
<td><p>A list of tags to apply to the action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActionArn = "string"
    )

### Request syntax

    svc$create_action(
      ActionName = "string",
      Source = list(
        SourceUri = "string",
        SourceType = "string",
        SourceId = "string"
      ),
      ActionType = "string",
      Description = "string",
      Status = "Unknown"|"InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
      Properties = list(
        "string"
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
