<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_delete_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates the specified Amazon Web Services Systems Manager document (SSM document) from the specified managed node

### Description

Disassociates the specified Amazon Web Services Systems Manager document
(SSM document) from the specified managed node. If you created the
association by using the `Targets` parameter, then you must delete the
association by using the association ID.

When you disassociate a document from a managed node, it doesn't change
the configuration of the node. To change the configuration state of a
managed node after you disassociate a document, you must create a new
document with the desired configuration and associate it with the node.

### Usage

    ssm_delete_association(Name, InstanceId, AssociationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_delete_association_:_Name">Name</code></td>
<td><p>The name of the SSM document.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_delete_association_:_InstanceId">InstanceId</code></td>
<td><p>The managed node ID.</p>
<p><code>InstanceId</code> has been deprecated. To specify a managed
node ID for an association, use the <code>Targets</code> parameter.
Requests that include the parameter <code>InstanceID</code> with Systems
Manager documents (SSM documents) that use schema version 2.0 or later
will fail. In addition, if you use the parameter
<code>InstanceId</code>, you can't use the parameters
<code>AssociationName</code>, <code>DocumentVersion</code>,
<code>MaxErrors</code>, <code>MaxConcurrency</code>,
<code>OutputLocation</code>, or <code>ScheduleExpression</code>. To use
these parameters, you must use the <code>Targets</code>
parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_delete_association_:_AssociationId">AssociationId</code></td>
<td><p>The association ID that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_association(
      Name = "string",
      InstanceId = "string",
      AssociationId = "string"
    )
