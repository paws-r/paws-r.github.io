<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_publish_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Publishes the specified extension to the CloudFormation registry as a public extension in this region

### Description

Publishes the specified extension to the CloudFormation registry as a
public extension in this region. Public extensions are available for use
by all CloudFormation users. For more information about publishing
extensions, see [Publishing extensions to make them available for public
use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html)
in the *CloudFormation CLI User Guide*.

To publish an extension, you must be registered as a publisher with
CloudFormation. For more information, see `register_publisher`.

### Usage

    cloudformation_publish_type(Type, Arn, TypeName, PublicVersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudformation_publish_type_:_Type">Type</code></td>
<td><p>The type of the extension.</p>
<p>Conditional: You must specify <code>Arn</code>, or
<code>TypeName</code> and <code>Type</code>.</p></td>
</tr>
<tr class="even">
<td><code id="cloudformation_publish_type_:_Arn">Arn</code></td>
<td><p>The Amazon Resource Name (ARN) of the extension.</p>
<p>Conditional: You must specify <code>Arn</code>, or
<code>TypeName</code> and <code>Type</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_publish_type_:_TypeName">TypeName</code></td>
<td><p>The name of the extension.</p>
<p>Conditional: You must specify <code>Arn</code>, or
<code>TypeName</code> and <code>Type</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_publish_type_:_PublicVersionNumber">PublicVersionNumber</code></td>
<td><p>The version number to assign to this version of the
extension.</p>
<p>Use the following format, and adhere to semantic versioning when
assigning a version number to your extension:</p>
<p><code>MAJOR.MINOR.PATCH</code></p>
<p>For more information, see <a href="https://semver.org/">Semantic
Versioning 2.0.0</a>.</p>
<p>If you don't specify a version number, CloudFormation increments the
version number by one minor version release.</p>
<p>You cannot specify a version number the first time you publish a
type. CloudFormation automatically sets the first version number to be
<code style="white-space: pre;">⁠1.0.0⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PublicTypeArn = "string"
    )

### Request syntax

    svc$publish_type(
      Type = "RESOURCE"|"MODULE"|"HOOK",
      Arn = "string",
      TypeName = "string",
      PublicVersionNumber = "string"
    )
