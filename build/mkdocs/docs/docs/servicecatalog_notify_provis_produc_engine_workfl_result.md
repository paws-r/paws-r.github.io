<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_notify_provision_product_engine_workflow_result</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Notifies the result of the provisioning engine execution

### Description

Notifies the result of the provisioning engine execution.

### Usage

    servicecatalog_notify_provision_product_engine_workflow_result(
      WorkflowToken, RecordId, Status, FailureReason, ResourceIdentifier,
      Outputs, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_notify_provision_product_engine_workflow_result_:_WorkflowToken">WorkflowToken</code></td>
<td><p>[required] The encrypted contents of the provisioning engine
execution payload that Service Catalog sends after the Terraform product
provisioning workflow starts.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_notify_provision_product_engine_workflow_result_:_RecordId">RecordId</code></td>
<td><p>[required] The identifier of the record.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_notify_provision_product_engine_workflow_result_:_Status">Status</code></td>
<td><p>[required] The status of the provisioning engine
execution.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_notify_provision_product_engine_workflow_result_:_FailureReason">FailureReason</code></td>
<td><p>The reason why the provisioning engine execution failed.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_notify_provision_product_engine_workflow_result_:_ResourceIdentifier">ResourceIdentifier</code></td>
<td><p>The ID for the provisioned product resources that are part of a
resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_notify_provision_product_engine_workflow_result_:_Outputs">Outputs</code></td>
<td><p>The output of the provisioning engine execution.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_notify_provision_product_engine_workflow_result_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] The idempotency token that identifies the provisioning
engine execution.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$notify_provision_product_engine_workflow_result(
      WorkflowToken = "string",
      RecordId = "string",
      Status = "SUCCEEDED"|"FAILED",
      FailureReason = "string",
      ResourceIdentifier = list(
        UniqueTag = list(
          Key = "string",
          Value = "string"
        )
      ),
      Outputs = list(
        list(
          OutputKey = "string",
          OutputValue = "string",
          Description = "string"
        )
      ),
      IdempotencyToken = "string"
    )
