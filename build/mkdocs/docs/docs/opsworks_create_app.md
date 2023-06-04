<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_create_app</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an app for a specified stack

### Description

Creates an app for a specified stack. For more information, see
[Creating
Apps](https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_create_app(StackId, Shortname, Name, Description, DataSources,
      Type, AppSource, Domains, EnableSsl, SslConfiguration, Attributes,
      Environment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_create_app_:_StackId">StackId</code></td>
<td><p>[required] The stack ID.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_app_:_Shortname">Shortname</code></td>
<td><p>The app's short name.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_app_:_Name">Name</code></td>
<td><p>[required] The app name.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_app_:_Description">Description</code></td>
<td><p>A description of the app.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_app_:_DataSources">DataSources</code></td>
<td><p>The app's data source.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_app_:_Type">Type</code></td>
<td><p>[required] The app type. Each supported type is associated with a
particular layer. For example, PHP applications are associated with a
PHP layer. AWS OpsWorks Stacks deploys an application to those instances
that are members of the corresponding layer. If your app isn't one of
the standard types, or you prefer to implement your own Deploy recipes,
specify <code>other</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_app_:_AppSource">AppSource</code></td>
<td><p>A <code>Source</code> object that specifies the app
repository.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_app_:_Domains">Domains</code></td>
<td><p>The app virtual host settings, with multiple domains separated by
commas. For example:
<code>'www.example.com, example.com'</code></p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_app_:_EnableSsl">EnableSsl</code></td>
<td><p>Whether to enable SSL for the app.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_app_:_SslConfiguration">SslConfiguration</code></td>
<td><p>An <code>SslConfiguration</code> object with the SSL
configuration.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_app_:_Attributes">Attributes</code></td>
<td><p>One or more user-defined key/value pairs to be added to the stack
attributes.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_app_:_Environment">Environment</code></td>
<td><p>An array of <code>EnvironmentVariable</code> objects that specify
environment variables to be associated with the app. After you deploy
the app, these variables are defined on the associated app server
instance. For more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment">Environment
Variables</a>.</p>
<p>There is no specific limit on the number of environment variables.
However, the size of the associated data structure - which includes the
variables' names, values, and protected flag values - cannot exceed 20
KB. This limit should accommodate most if not all use cases. Exceeding
it will cause an exception with the message, "Environment: is too large
(maximum is 20KB)."</p>
<p>If you have specified one or more environment variables, you cannot
modify the stack's Chef version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppId = "string"
    )

### Request syntax

    svc$create_app(
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
      Environment = list(
        list(
          Key = "string",
          Value = "string",
          Secure = TRUE|FALSE
        )
      )
    )
