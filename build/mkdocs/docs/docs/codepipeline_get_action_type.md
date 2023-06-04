<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_get_action_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about an action type created for an external provider, where the action is to be used by customers of the external provider

### Description

Returns information about an action type created for an external
provider, where the action is to be used by customers of the external
provider. The action can be created with any supported integration
model.

### Usage

    codepipeline_get_action_type(category, owner, provider, version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_get_action_type_:_category">category</code></td>
<td><p>[required] Defines what kind of action can be taken in the stage.
The following are the valid values:</p>
<ul>
<li><p><code>Source</code></p></li>
<li><p><code>Build</code></p></li>
<li><p><code>Test</code></p></li>
<li><p><code>Deploy</code></p></li>
<li><p><code>Approval</code></p></li>
<li><p><code>Invoke</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="codepipeline_get_action_type_:_owner">owner</code></td>
<td><p>[required] The creator of an action type that was created with
any supported integration model. There are two valid values:
<code>AWS</code> and <code>ThirdParty</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_get_action_type_:_provider">provider</code></td>
<td><p>[required] The provider of the action type being called. The
provider name is specified when the action type is created.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_get_action_type_:_version">version</code></td>
<td><p>[required] A string that describes the action type
version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      actionType = list(
        description = "string",
        executor = list(
          configuration = list(
            lambdaExecutorConfiguration = list(
              lambdaFunctionArn = "string"
            ),
            jobWorkerExecutorConfiguration = list(
              pollingAccounts = list(
                "string"
              ),
              pollingServicePrincipals = list(
                "string"
              )
            )
          ),
          type = "JobWorker"|"Lambda",
          policyStatementsTemplate = "string",
          jobTimeout = 123
        ),
        id = list(
          category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
          owner = "string",
          provider = "string",
          version = "string"
        ),
        inputArtifactDetails = list(
          minimumCount = 123,
          maximumCount = 123
        ),
        outputArtifactDetails = list(
          minimumCount = 123,
          maximumCount = 123
        ),
        permissions = list(
          allowedAccounts = list(
            "string"
          )
        ),
        properties = list(
          list(
            name = "string",
            optional = TRUE|FALSE,
            key = TRUE|FALSE,
            noEcho = TRUE|FALSE,
            queryable = TRUE|FALSE,
            description = "string"
          )
        ),
        urls = list(
          configurationUrl = "string",
          entityUrlTemplate = "string",
          executionUrlTemplate = "string",
          revisionUrlTemplate = "string"
        )
      )
    )

### Request syntax

    svc$get_action_type(
      category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
      owner = "string",
      provider = "string",
      version = "string"
    )
