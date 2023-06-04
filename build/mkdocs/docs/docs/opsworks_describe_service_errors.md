<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_service_errors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes AWS OpsWorks Stacks service errors

### Description

Describes AWS OpsWorks Stacks service errors.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

This call accepts only one resource-identifying parameter.

### Usage

    opsworks_describe_service_errors(StackId, InstanceId, ServiceErrorIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_service_errors_:_StackId">StackId</code></td>
<td><p>The stack ID. If you use this parameter,
<code>describe_service_errors</code> returns descriptions of the errors
associated with the specified stack.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_describe_service_errors_:_InstanceId">InstanceId</code></td>
<td><p>The instance ID. If you use this parameter,
<code>describe_service_errors</code> returns descriptions of the errors
associated with the specified instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_describe_service_errors_:_ServiceErrorIds">ServiceErrorIds</code></td>
<td><p>An array of service error IDs. If you use this parameter,
<code>describe_service_errors</code> returns descriptions of the
specified errors. Otherwise, it returns a description of every
error.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceErrors = list(
        list(
          ServiceErrorId = "string",
          StackId = "string",
          InstanceId = "string",
          Type = "string",
          Message = "string",
          CreatedAt = "string"
        )
      )
    )

### Request syntax

    svc$describe_service_errors(
      StackId = "string",
      InstanceId = "string",
      ServiceErrorIds = list(
        "string"
      )
    )
