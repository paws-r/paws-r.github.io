<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_activate_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates a public third-party extension, making it available for use in stack templates

### Description

Activates a public third-party extension, making it available for use in
stack templates. For more information, see [Using public
extensions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html)
in the *CloudFormation User Guide*.

Once you have activated a public third-party extension in your account
and region, use `set_type_configuration` to specify configuration
properties for the extension. For more information, see [Configuring
extensions at the account
level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/#registry-set-configuration)
in the *CloudFormation User Guide*.

### Usage

    cloudformation_activate_type(Type, PublicTypeArn, PublisherId, TypeName,
      TypeNameAlias, AutoUpdate, LoggingConfig, ExecutionRoleArn, VersionBump,
      MajorVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudformation_activate_type_:_Type">Type</code></td>
<td><p>The extension type.</p>
<p>Conditional: You must specify <code>PublicTypeArn</code>, or
<code>TypeName</code>, <code>Type</code>, and
<code>PublisherId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_activate_type_:_PublicTypeArn">PublicTypeArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the public extension.</p>
<p>Conditional: You must specify <code>PublicTypeArn</code>, or
<code>TypeName</code>, <code>Type</code>, and
<code>PublisherId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_activate_type_:_PublisherId">PublisherId</code></td>
<td><p>The ID of the extension publisher.</p>
<p>Conditional: You must specify <code>PublicTypeArn</code>, or
<code>TypeName</code>, <code>Type</code>, and
<code>PublisherId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_activate_type_:_TypeName">TypeName</code></td>
<td><p>The name of the extension.</p>
<p>Conditional: You must specify <code>PublicTypeArn</code>, or
<code>TypeName</code>, <code>Type</code>, and
<code>PublisherId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_activate_type_:_TypeNameAlias">TypeNameAlias</code></td>
<td><p>An alias to assign to the public extension, in this account and
region. If you specify an alias for the extension, CloudFormation treats
the alias as the extension type name within this account and region. You
must use the alias to refer to the extension in your templates, API
calls, and CloudFormation console.</p>
<p>An extension alias must be unique within a given account and region.
You can activate the same public resource multiple times in the same
account and region, using different type name aliases.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_activate_type_:_AutoUpdate">AutoUpdate</code></td>
<td><p>Whether to automatically update the extension in this account and
region when a new <em>minor</em> version is published by the extension
publisher. Major versions released by the publisher must be manually
updated.</p>
<p>The default is <code>true</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_activate_type_:_LoggingConfig">LoggingConfig</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_activate_type_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>The name of the IAM execution role to use to activate the
extension.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_activate_type_:_VersionBump">VersionBump</code></td>
<td><p>Manually updates a previously-activated type to a new major or
minor version, if available. You can also use this parameter to update
the value of <code>AutoUpdate</code>.</p>
<ul>
<li><p><code>MAJOR</code>: CloudFormation updates the extension to the
newest major version, if one is available.</p></li>
<li><p><code>MINOR</code>: CloudFormation updates the extension to the
newest minor version, if one is available.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_activate_type_:_MajorVersion">MajorVersion</code></td>
<td><p>The major version of this extension you want to activate, if
multiple major versions are available. The default is the latest major
version. CloudFormation uses the latest available <em>minor</em> version
of the major version selected.</p>
<p>You can specify <code>MajorVersion</code> or
<code>VersionBump</code>, but not both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$activate_type(
      Type = "RESOURCE"|"MODULE"|"HOOK",
      PublicTypeArn = "string",
      PublisherId = "string",
      TypeName = "string",
      TypeNameAlias = "string",
      AutoUpdate = TRUE|FALSE,
      LoggingConfig = list(
        LogRoleArn = "string",
        LogGroupName = "string"
      ),
      ExecutionRoleArn = "string",
      VersionBump = "MAJOR"|"MINOR",
      MajorVersion = 123
    )
