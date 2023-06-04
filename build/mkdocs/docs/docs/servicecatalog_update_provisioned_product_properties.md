<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_update_provisioned_product_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests updates to the properties of the specified provisioned product

### Description

Requests updates to the properties of the specified provisioned product.

### Usage

    servicecatalog_update_provisioned_product_properties(AcceptLanguage,
      ProvisionedProductId, ProvisionedProductProperties, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioned_product_properties_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_provisioned_product_properties_:_ProvisionedProductId">ProvisionedProductId</code></td>
<td><p>[required] The identifier of the provisioned product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioned_product_properties_:_ProvisionedProductProperties">ProvisionedProductProperties</code></td>
<td><p>[required] A map that contains the provisioned product properties
to be updated.</p>
<p>The <code>LAUNCH_ROLE</code> key accepts role ARNs. This key allows
an administrator to call
<code>update_provisioned_product_properties</code> to update the launch
role that is associated with a provisioned product. This role is used
when an end user calls a provisioning operation such as
<code>update_provisioned_product</code>,
<code>terminate_provisioned_product</code>, or
<code>execute_provisioned_product_service_action</code>. Only a role ARN
is valid. A user ARN is invalid.</p>
<p>The <code>OWNER</code> key accepts user ARNs, IAM role ARNs, and STS
assumed-role ARNs. The owner is the user that has permission to see,
update, terminate, and execute service actions in the provisioned
product.</p>
<p>The administrator can change the owner of a provisioned product to
another IAM or STS entity within the same account. Both end user owners
and administrators can see ownership history of the provisioned product
using the <code>list_record_history</code> API. The new owner can
describe all past records for the provisioned product using the
<code>describe_record</code> API. The previous owner can no longer use
<code>describe_record</code>, but can still see the product's history
from when he was an owner using <code>list_record_history</code>.</p>
<p>If a provisioned product ownership is assigned to an end user, they
can see and perform any action through the API or Service Catalog
console such as update, terminate, and execute service actions. If an
end user provisions a product and the owner is updated to someone else,
they will no longer be able to see or perform any actions through API or
the Service Catalog console on that provisioned product.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_provisioned_product_properties_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] The idempotency token that uniquely identifies the
provisioning product update request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProvisionedProductId = "string",
      ProvisionedProductProperties = list(
        "string"
      ),
      RecordId = "string",
      Status = "CREATED"|"IN_PROGRESS"|"IN_PROGRESS_IN_ERROR"|"SUCCEEDED"|"FAILED"
    )

### Request syntax

    svc$update_provisioned_product_properties(
      AcceptLanguage = "string",
      ProvisionedProductId = "string",
      ProvisionedProductProperties = list(
        "string"
      ),
      IdempotencyToken = "string"
    )
