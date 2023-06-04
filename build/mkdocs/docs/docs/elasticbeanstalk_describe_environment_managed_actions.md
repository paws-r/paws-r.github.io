<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_environment_managed_actions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists an environment's upcoming and in-progress managed actions

### Description

Lists an environment's upcoming and in-progress managed actions.

### Usage

    elasticbeanstalk_describe_environment_managed_actions(EnvironmentName,
      EnvironmentId, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_environment_managed_actions_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the target environment.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_environment_managed_actions_:_EnvironmentId">EnvironmentId</code></td>
<td><p>The environment ID of the target environment.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_environment_managed_actions_:_Status">Status</code></td>
<td><p>To show only actions with a particular status, specify a
status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ManagedActions = list(
        list(
          ActionId = "string",
          ActionDescription = "string",
          ActionType = "InstanceRefresh"|"PlatformUpdate"|"Unknown",
          Status = "Scheduled"|"Pending"|"Running"|"Unknown",
          WindowStartTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_environment_managed_actions(
      EnvironmentName = "string",
      EnvironmentId = "string",
      Status = "Scheduled"|"Pending"|"Running"|"Unknown"
    )
