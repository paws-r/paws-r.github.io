<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_put_compliance_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a compliance type and other compliance details on a designated resource

### Description

Registers a compliance type and other compliance details on a designated
resource. This operation lets you register custom compliance details
with a resource. This call overwrites existing compliance information on
the resource, so you must provide a full list of compliance items each
time that you send the request.

ComplianceType can be one of the following:

-   ExecutionId: The execution ID when the patch, association, or custom
    compliance item was applied.

-   ExecutionType: Specify patch, association, or Custom:`string`.

-   ExecutionTime. The time the patch, association, or custom compliance
    item was applied to the managed node.

-   Id: The patch, association, or custom compliance ID.

-   Title: A title.

-   Status: The status of the compliance item. For example, `approved`
    for patches, or `Failed` for associations.

-   Severity: A patch severity. For example, `Critical`.

-   DocumentName: An SSM document name. For example,
    `AWS-RunPatchBaseline`.

-   DocumentVersion: An SSM document version number. For example, 4.

-   Classification: A patch classification. For example,
    `⁠security updates⁠`.

-   PatchBaselineId: A patch baseline ID.

-   PatchSeverity: A patch severity. For example, `Critical`.

-   PatchState: A patch state. For example,
    `InstancesWithFailedPatches`.

-   PatchGroup: The name of a patch group.

-   InstalledTime: The time the association, patch, or custom compliance
    item was applied to the resource. Specify the time by using the
    following format: yyyy-MM-dd'T'HH:mm:ss'Z'

### Usage

    ssm_put_compliance_items(ResourceId, ResourceType, ComplianceType,
      ExecutionSummary, Items, ItemContentHash, UploadType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_put_compliance_items_:_ResourceId">ResourceId</code></td>
<td><p>[required] Specify an ID for this resource. For a managed node,
this is the node ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_put_compliance_items_:_ResourceType">ResourceType</code></td>
<td><p>[required] Specify the type of resource.
<code>ManagedInstance</code> is currently the only supported resource
type.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_put_compliance_items_:_ComplianceType">ComplianceType</code></td>
<td><p>[required] Specify the compliance type. For example, specify
Association (for a State Manager association), Patch, or
Custom:<code>string</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_put_compliance_items_:_ExecutionSummary">ExecutionSummary</code></td>
<td><p>[required] A summary of the call execution that includes an
execution ID, the type of execution (for example, <code>Command</code>),
and the date/time of the execution using a datetime object that is saved
in the following format: yyyy-MM-dd'T'HH:mm:ss'Z'.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_put_compliance_items_:_Items">Items</code></td>
<td><p>[required] Information about the compliance as defined by the
resource type. For example, for a patch compliance type,
<code>Items</code> includes information about the PatchSeverity,
Classification, and so on.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_put_compliance_items_:_ItemContentHash">ItemContentHash</code></td>
<td><p>MD5 or SHA-256 content hash. The content hash is used to
determine if existing information should be overwritten or ignored. If
the content hashes match, the request to put compliance information is
ignored.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_put_compliance_items_:_UploadType">UploadType</code></td>
<td><p>The mode for uploading compliance items. You can specify
<code>COMPLETE</code> or <code>PARTIAL</code>. In <code>COMPLETE</code>
mode, the system overwrites all existing compliance information for the
resource. You must provide a full list of compliance items each time you
send the request.</p>
<p>In <code>PARTIAL</code> mode, the system overwrites compliance
information for a specific association. The association must be
configured with <code>SyncCompliance</code> set to <code>MANUAL</code>.
By default, all requests use <code>COMPLETE</code> mode.</p>
<p>This attribute is only valid for association compliance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_compliance_items(
      ResourceId = "string",
      ResourceType = "string",
      ComplianceType = "string",
      ExecutionSummary = list(
        ExecutionTime = as.POSIXct(
          "2015-01-01"
        ),
        ExecutionId = "string",
        ExecutionType = "string"
      ),
      Items = list(
        list(
          Id = "string",
          Title = "string",
          Severity = "CRITICAL"|"HIGH"|"MEDIUM"|"LOW"|"INFORMATIONAL"|"UNSPECIFIED",
          Status = "COMPLIANT"|"NON_COMPLIANT",
          Details = list(
            "string"
          )
        )
      ),
      ItemContentHash = "string",
      UploadType = "COMPLETE"|"PARTIAL"
    )
