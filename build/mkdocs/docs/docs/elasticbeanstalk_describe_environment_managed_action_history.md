<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_environment_managed_action_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists an environment's completed and failed managed actions

### Description

Lists an environment's completed and failed managed actions.

### Usage

    elasticbeanstalk_describe_environment_managed_action_history(
      EnvironmentId, EnvironmentName, NextToken, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_environment_managed_action_history_:_EnvironmentId">EnvironmentId</code></td>
<td><p>The environment ID of the target environment.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_environment_managed_action_history_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the target environment.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_environment_managed_action_history_:_NextToken">NextToken</code></td>
<td><p>The pagination token returned by a previous request.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_environment_managed_action_history_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of items to return for a single
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ManagedActionHistoryItems = list(
        list(
          ActionId = "string",
          ActionType = "InstanceRefresh"|"PlatformUpdate"|"Unknown",
          ActionDescription = "string",
          FailureType = "UpdateCancelled"|"CancellationFailed"|"RollbackFailed"|"RollbackSuccessful"|"InternalFailure"|"InvalidEnvironmentState"|"PermissionsError",
          Status = "Completed"|"Failed"|"Unknown",
          FailureDescription = "string",
          ExecutedTime = as.POSIXct(
            "2015-01-01"
          ),
          FinishedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_environment_managed_action_history(
      EnvironmentId = "string",
      EnvironmentName = "string",
      NextToken = "string",
      MaxItems = 123
    )
