<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_remove_tags_from_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tag keys from the specified resource

### Description

Removes tag keys from the specified resource.

### Usage

    ssm_remove_tags_from_resource(ResourceType, ResourceId, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_remove_tags_from_resource_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of resource from which you want to remove a
tag.</p>
<p>The <code>ManagedInstance</code> type for this API operation is only
for on-premises managed nodes. Specify the name of the managed node in
the following format: <code>mi-ID_number </code>. For example, <code
style="white-space: pre;">⁠mi-1a2b3c4d5e6f⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_remove_tags_from_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource from which you want to remove
tags. For example:</p>
<p>ManagedInstance: mi-012345abcde</p>
<p>MaintenanceWindow: mw-012345abcde</p>
<p><code>Automation</code>: <code
style="white-space: pre;">⁠example-c160-4567-8519-012345abcde⁠</code></p>
<p>PatchBaseline: pb-012345abcde</p>
<p>OpsMetadata object: <code>ResourceID</code> for tagging is created
from the Amazon Resource Name (ARN) for the object. Specifically,
<code>ResourceID</code> is created from the strings that come after the
word <code>opsmetadata</code> in the ARN. For example, an OpsMetadata
object with an ARN of
<code>arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager</code>
has a <code>ResourceID</code> of either
<code>aws/ssm/MyGroup/appmanager</code> or <code
style="white-space: pre;">⁠/aws/ssm/MyGroup/appmanager⁠</code>.</p>
<p>For the Document and Parameter values, use the name of the
resource.</p>
<p>The <code>ManagedInstance</code> type for this API operation is only
for on-premises managed nodes. Specify the name of the managed node in
the following format: mi-ID_number. For example,
mi-1a2b3c4d5e6f.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_remove_tags_from_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] Tag keys that you want to remove from the specified
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags_from_resource(
      ResourceType = "Document"|"ManagedInstance"|"MaintenanceWindow"|"Parameter"|"PatchBaseline"|"OpsItem"|"OpsMetadata"|"Automation"|"Association",
      ResourceId = "string",
      TagKeys = list(
        "string"
      )
    )
