<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_delete_account_setting</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables an account setting for a specified user, role, or the root user for an account

### Description

Disables an account setting for a specified user, role, or the root user
for an account.

### Usage

    ecs_delete_account_setting(name, principalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_delete_account_setting_:_name">name</code></td>
<td><p>[required] The resource name to disable the account setting for.
If <code>serviceLongArnFormat</code> is specified, the ARN for your
Amazon ECS services is affected. If <code>taskLongArnFormat</code> is
specified, the ARN and resource ID for your Amazon ECS tasks is
affected. If <code>containerInstanceLongArnFormat</code> is specified,
the ARN and resource ID for your Amazon ECS container instances is
affected. If <code>awsvpcTrunking</code> is specified, the ENI limit for
your Amazon ECS container instances is affected.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_delete_account_setting_:_principalArn">principalArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the principal. It can be an
user, role, or the root user. If you specify the root user, it disables
the account setting for all users, roles, and the root user of the
account unless a user or role explicitly overrides these settings. If
this field is omitted, the setting is changed only for the authenticated
user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      setting = list(
        name = "serviceLongArnFormat"|"taskLongArnFormat"|"containerInstanceLongArnFormat"|"awsvpcTrunking"|"containerInsights"|"fargateFIPSMode"|"tagResourceAuthorization",
        value = "string",
        principalArn = "string"
      )
    )

### Request syntax

    svc$delete_account_setting(
      name = "serviceLongArnFormat"|"taskLongArnFormat"|"containerInstanceLongArnFormat"|"awsvpcTrunking"|"containerInsights"|"fargateFIPSMode"|"tagResourceAuthorization",
      principalArn = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the account setting for your user for the specified
    # resource type.
    svc$delete_account_setting(
      name = "serviceLongArnFormat"
    )

    # This example deletes the account setting for a specific IAM user or IAM
    # role for the specified resource type. Only the root user can view or
    # modify the account settings for another user.
    svc$delete_account_setting(
      name = "containerInstanceLongArnFormat",
      principalArn = "arn:aws:iam::<aws_account_id>:user/principalName"
    )

    ## End(Not run)
