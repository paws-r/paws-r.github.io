<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_create_custom_action_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new custom action that can be used in all pipelines associated with the Amazon Web Services account

### Description

Creates a new custom action that can be used in all pipelines associated
with the Amazon Web Services account. Only used for custom actions.

### Usage

    codepipeline_create_custom_action_type(category, provider, version,
      settings, configurationProperties, inputArtifactDetails,
      outputArtifactDetails, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_create_custom_action_type_:_category">category</code></td>
<td><p>[required] The category of the custom action, such as a build
action or a test action.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_create_custom_action_type_:_provider">provider</code></td>
<td><p>[required] The provider of the service used in the custom action,
such as CodeDeploy.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_create_custom_action_type_:_version">version</code></td>
<td><p>[required] The version identifier of the custom action.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_create_custom_action_type_:_settings">settings</code></td>
<td><p>URLs that provide users information about this custom
action.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_create_custom_action_type_:_configurationProperties">configurationProperties</code></td>
<td><p>The configuration properties for the custom action.</p>
<p>You can refer to a name in the configuration properties of the custom
action within the URL templates by following the format of
{Config:name}, as long as the configuration property is both required
and not secret. For more information, see <a
href="https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-create-custom-action.html">Create
a Custom Action for a Pipeline</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_create_custom_action_type_:_inputArtifactDetails">inputArtifactDetails</code></td>
<td><p>[required] The details of the input artifact for the action, such
as its commit ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_create_custom_action_type_:_outputArtifactDetails">outputArtifactDetails</code></td>
<td><p>[required] The details of the output artifact of the action, such
as its commit ID.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_create_custom_action_type_:_tags">tags</code></td>
<td><p>The tags for the custom action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      actionType = list(
        id = list(
          category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
          owner = "AWS"|"ThirdParty"|"Custom",
          provider = "string",
          version = "string"
        ),
        settings = list(
          thirdPartyConfigurationUrl = "string",
          entityUrlTemplate = "string",
          executionUrlTemplate = "string",
          revisionUrlTemplate = "string"
        ),
        actionConfigurationProperties = list(
          list(
            name = "string",
            required = TRUE|FALSE,
            key = TRUE|FALSE,
            secret = TRUE|FALSE,
            queryable = TRUE|FALSE,
            description = "string",
            type = "String"|"Number"|"Boolean"
          )
        ),
        inputArtifactDetails = list(
          minimumCount = 123,
          maximumCount = 123
        ),
        outputArtifactDetails = list(
          minimumCount = 123,
          maximumCount = 123
        )
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Request syntax

    svc$create_custom_action_type(
      category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
      provider = "string",
      version = "string",
      settings = list(
        thirdPartyConfigurationUrl = "string",
        entityUrlTemplate = "string",
        executionUrlTemplate = "string",
        revisionUrlTemplate = "string"
      ),
      configurationProperties = list(
        list(
          name = "string",
          required = TRUE|FALSE,
          key = TRUE|FALSE,
          secret = TRUE|FALSE,
          queryable = TRUE|FALSE,
          description = "string",
          type = "String"|"Number"|"Boolean"
        )
      ),
      inputArtifactDetails = list(
        minimumCount = 123,
        maximumCount = 123
      ),
      outputArtifactDetails = list(
        minimumCount = 123,
        maximumCount = 123
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
