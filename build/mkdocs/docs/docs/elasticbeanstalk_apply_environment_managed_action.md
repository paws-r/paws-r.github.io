<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_apply_environment_managed_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies a scheduled managed action immediately

### Description

Applies a scheduled managed action immediately. A managed action can be
applied only if its status is `Scheduled`. Get the status and action ID
of a managed action with `describe_environment_managed_actions`.

### Usage

    elasticbeanstalk_apply_environment_managed_action(EnvironmentName,
      EnvironmentId, ActionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_apply_environment_managed_action_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the target environment.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_apply_environment_managed_action_:_EnvironmentId">EnvironmentId</code></td>
<td><p>The environment ID of the target environment.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_apply_environment_managed_action_:_ActionId">ActionId</code></td>
<td><p>[required] The action ID of the scheduled managed action to
execute.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActionId = "string",
      ActionDescription = "string",
      ActionType = "InstanceRefresh"|"PlatformUpdate"|"Unknown",
      Status = "string"
    )

### Request syntax

    svc$apply_environment_managed_action(
      EnvironmentName = "string",
      EnvironmentId = "string",
      ActionId = "string"
    )
