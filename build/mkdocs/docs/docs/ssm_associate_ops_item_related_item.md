<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_associate_ops_item_related_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a related item to a Systems Manager OpsCenter OpsItem

### Description

Associates a related item to a Systems Manager OpsCenter OpsItem. For
example, you can associate an Incident Manager incident or analysis with
an OpsItem. Incident Manager and OpsCenter are capabilities of Amazon
Web Services Systems Manager.

### Usage

    ssm_associate_ops_item_related_item(OpsItemId, AssociationType,
      ResourceType, ResourceUri)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_associate_ops_item_related_item_:_OpsItemId">OpsItemId</code></td>
<td><p>[required] The ID of the OpsItem to which you want to associate a
resource as a related item.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_associate_ops_item_related_item_:_AssociationType">AssociationType</code></td>
<td><p>[required] The type of association that you want to create
between an OpsItem and a resource. OpsCenter supports
<code>IsParentOf</code> and <code>RelatesTo</code> association
types.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_associate_ops_item_related_item_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of resource that you want to associate with
an OpsItem. OpsCenter supports the following types:</p>
<p><code
style="white-space: pre;">⁠AWS::SSMIncidents::IncidentRecord⁠</code>: an
Incident Manager incident.</p>
<p><code style="white-space: pre;">⁠AWS::SSM::Document⁠</code>: a Systems
Manager (SSM) document.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_associate_ops_item_related_item_:_ResourceUri">ResourceUri</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon Web
Services resource that you want to associate with the OpsItem.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssociationId = "string"
    )

### Request syntax

    svc$associate_ops_item_related_item(
      OpsItemId = "string",
      AssociationType = "string",
      ResourceType = "string",
      ResourceUri = "string"
    )
