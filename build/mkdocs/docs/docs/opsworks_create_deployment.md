<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_create_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs deployment or stack commands

### Description

Runs deployment or stack commands. For more information, see [Deploying
Apps](https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html)
and [Run Stack
Commands](https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html).

**Required Permissions**: To use this action, an IAM user must have a
Deploy or Manage permissions level for the stack, or an attached policy
that explicitly grants permissions. For more information on user
permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_create_deployment(StackId, AppId, InstanceIds, LayerIds,
      Command, Comment, CustomJson)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_create_deployment_:_StackId">StackId</code></td>
<td><p>[required] The stack ID.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_deployment_:_AppId">AppId</code></td>
<td><p>The app ID. This parameter is required for app deployments, but
not for other deployment commands.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_deployment_:_InstanceIds">InstanceIds</code></td>
<td><p>The instance IDs for the deployment targets.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_deployment_:_LayerIds">LayerIds</code></td>
<td><p>The layer IDs for the deployment targets.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_deployment_:_Command">Command</code></td>
<td><p>[required] A <code>DeploymentCommand</code> object that specifies
the deployment command and any associated arguments.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_deployment_:_Comment">Comment</code></td>
<td><p>A user-defined comment.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_deployment_:_CustomJson">CustomJson</code></td>
<td><p>A string that contains user-defined, custom JSON. You can use
this parameter to override some corresponding default stack
configuration JSON values. The string should be in the following
format:</p>
<p><code
style="white-space: pre;">⁠"{\"key1\": \"value1\", \"key2\": \"value2\",...}"⁠</code></p>
<p>For more information about custom JSON, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use
Custom JSON to Modify the Stack Configuration Attributes</a> and <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">Overriding
Attributes With Custom JSON</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeploymentId = "string"
    )

### Request syntax

    svc$create_deployment(
      StackId = "string",
      AppId = "string",
      InstanceIds = list(
        "string"
      ),
      LayerIds = list(
        "string"
      ),
      Command = list(
        Name = "install_dependencies"|"update_dependencies"|"update_custom_cookbooks"|"execute_recipes"|"configure"|"setup"|"deploy"|"rollback"|"start"|"stop"|"restart"|"undeploy",
        Args = list(
          list(
            "string"
          )
        )
      ),
      Comment = "string",
      CustomJson = "string"
    )
