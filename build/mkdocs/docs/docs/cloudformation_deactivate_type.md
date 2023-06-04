<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_deactivate_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deactivates a public extension that was previously activated in this account and region

### Description

Deactivates a public extension that was previously activated in this
account and region.

Once deactivated, an extension can't be used in any CloudFormation
operation. This includes stack update operations where the stack
template includes the extension, even if no updates are being made to
the extension. In addition, deactivated extensions aren't automatically
updated if a new version of the extension is released.

### Usage

    cloudformation_deactivate_type(TypeName, Type, Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_deactivate_type_:_TypeName">TypeName</code></td>
<td><p>The type name of the extension, in this account and region. If
you specified a type name alias when enabling the extension, use the
type name alias.</p>
<p>Conditional: You must specify either <code>Arn</code>, or
<code>TypeName</code> and <code>Type</code>.</p></td>
</tr>
<tr class="even">
<td><code id="cloudformation_deactivate_type_:_Type">Type</code></td>
<td><p>The extension type.</p>
<p>Conditional: You must specify either <code>Arn</code>, or
<code>TypeName</code> and <code>Type</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudformation_deactivate_type_:_Arn">Arn</code></td>
<td><p>The Amazon Resource Name (ARN) for the extension, in this account
and region.</p>
<p>Conditional: You must specify either <code>Arn</code>, or
<code>TypeName</code> and <code>Type</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deactivate_type(
      TypeName = "string",
      Type = "RESOURCE"|"MODULE"|"HOOK",
      Arn = "string"
    )
