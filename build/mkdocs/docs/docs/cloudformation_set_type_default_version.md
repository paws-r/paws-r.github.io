<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_set_type_default_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specify the default version of an extension

### Description

Specify the default version of an extension. The default version of an
extension will be used in CloudFormation operations.

### Usage

    cloudformation_set_type_default_version(Arn, Type, TypeName, VersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_set_type_default_version_:_Arn">Arn</code></td>
<td><p>The Amazon Resource Name (ARN) of the extension for which you
want version summary information.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_set_type_default_version_:_Type">Type</code></td>
<td><p>The kind of extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_set_type_default_version_:_TypeName">TypeName</code></td>
<td><p>The name of the extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_set_type_default_version_:_VersionId">VersionId</code></td>
<td><p>The ID of a specific version of the extension. The version ID is
the value at the end of the Amazon Resource Name (ARN) assigned to the
extension version when it is registered.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_type_default_version(
      Arn = "string",
      Type = "RESOURCE"|"MODULE"|"HOOK",
      TypeName = "string",
      VersionId = "string"
    )
