<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_stacks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests a description of one or more stacks

### Description

Requests a description of one or more stacks.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_stacks(StackIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_describe_stacks_:_StackIds">StackIds</code></td>
<td><p>An array of stack IDs that specify the stacks to be described. If
you omit this parameter, <code>describe_stacks</code> returns a
description of every stack.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Stacks = list(
        list(
          StackId = "string",
          Name = "string",
          Arn = "string",
          Region = "string",
          VpcId = "string",
          Attributes = list(
            "string"
          ),
          ServiceRoleArn = "string",
          DefaultInstanceProfileArn = "string",
          DefaultOs = "string",
          HostnameTheme = "string",
          DefaultAvailabilityZone = "string",
          DefaultSubnetId = "string",
          CustomJson = "string",
          ConfigurationManager = list(
            Name = "string",
            Version = "string"
          ),
          ChefConfiguration = list(
            ManageBerkshelf = TRUE|FALSE,
            BerkshelfVersion = "string"
          ),
          UseCustomCookbooks = TRUE|FALSE,
          UseOpsworksSecurityGroups = TRUE|FALSE,
          CustomCookbooksSource = list(
            Type = "git"|"svn"|"archive"|"s3",
            Url = "string",
            Username = "string",
            Password = "string",
            SshKey = "string",
            Revision = "string"
          ),
          DefaultSshKeyName = "string",
          CreatedAt = "string",
          DefaultRootDeviceType = "ebs"|"instance-store",
          AgentVersion = "string"
        )
      )
    )

### Request syntax

    svc$describe_stacks(
      StackIds = list(
        "string"
      )
    )
