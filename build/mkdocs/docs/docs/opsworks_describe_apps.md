<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_apps</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests a description of a specified set of apps

### Description

Requests a description of a specified set of apps.

This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_apps(StackId, AppIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_describe_apps_:_StackId">StackId</code></td>
<td><p>The app stack ID. If you use this parameter,
<code>describe_apps</code> returns a description of the apps in the
specified stack.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_describe_apps_:_AppIds">AppIds</code></td>
<td><p>An array of app IDs for the apps to be described. If you use this
parameter, <code>describe_apps</code> returns a description of the
specified apps. Otherwise, it returns a description of every
app.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Apps = list(
        list(
          AppId = "string",
          StackId = "string",
          Shortname = "string",
          Name = "string",
          Description = "string",
          DataSources = list(
            list(
              Type = "string",
              Arn = "string",
              DatabaseName = "string"
            )
          ),
          Type = "aws-flow-ruby"|"java"|"rails"|"php"|"nodejs"|"static"|"other",
          AppSource = list(
            Type = "git"|"svn"|"archive"|"s3",
            Url = "string",
            Username = "string",
            Password = "string",
            SshKey = "string",
            Revision = "string"
          ),
          Domains = list(
            "string"
          ),
          EnableSsl = TRUE|FALSE,
          SslConfiguration = list(
            Certificate = "string",
            PrivateKey = "string",
            Chain = "string"
          ),
          Attributes = list(
            "string"
          ),
          CreatedAt = "string",
          Environment = list(
            list(
              Key = "string",
              Value = "string",
              Secure = TRUE|FALSE
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_apps(
      StackId = "string",
      AppIds = list(
        "string"
      )
    )
