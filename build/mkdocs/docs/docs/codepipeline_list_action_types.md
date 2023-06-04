<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_list_action_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a summary of all CodePipeline action types associated with your account

### Description

Gets a summary of all CodePipeline action types associated with your
account.

### Usage

    codepipeline_list_action_types(actionOwnerFilter, nextToken,
      regionFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_list_action_types_:_actionOwnerFilter">actionOwnerFilter</code></td>
<td><p>Filters the list of action types to those created by a specified
entity.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_list_action_types_:_nextToken">nextToken</code></td>
<td><p>An identifier that was returned from the previous list action
types call, which can be used to return the next set of action types in
the list.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_list_action_types_:_regionFilter">regionFilter</code></td>
<td><p>The Region to filter on for the list of action types.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      actionTypes = list(
        list(
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
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_action_types(
      actionOwnerFilter = "AWS"|"ThirdParty"|"Custom",
      nextToken = "string",
      regionFilter = "string"
    )
