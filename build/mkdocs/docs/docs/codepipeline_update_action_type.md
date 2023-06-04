<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_update_action_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an action type that was created with any supported integration model, where the action type is to be used by customers of the action type provider

### Description

Updates an action type that was created with any supported integration
model, where the action type is to be used by customers of the action
type provider. Use a JSON file with the action definition and
`update_action_type` to provide the full structure.

### Usage

    codepipeline_update_action_type(actionType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_update_action_type_:_actionType">actionType</code></td>
<td><p>[required] The action type definition for the action type to be
updated.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_action_type(
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
