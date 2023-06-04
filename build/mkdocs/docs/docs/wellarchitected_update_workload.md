<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_update_workload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an existing workload

### Description

Update an existing workload.

### Usage

    wellarchitected_update_workload(WorkloadId, WorkloadName, Description,
      Environment, AccountIds, AwsRegions, NonAwsRegions, PillarPriorities,
      ArchitecturalDesign, ReviewOwner, IsReviewOwnerUpdateAcknowledged,
      IndustryType, Industry, Notes, ImprovementStatus, DiscoveryConfig,
      Applications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_update_workload_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_workload_:_WorkloadName">WorkloadName</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_workload_:_Description">Description</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_workload_:_Environment">Environment</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_workload_:_AccountIds">AccountIds</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_workload_:_AwsRegions">AwsRegions</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_workload_:_NonAwsRegions">NonAwsRegions</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_workload_:_PillarPriorities">PillarPriorities</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_workload_:_ArchitecturalDesign">ArchitecturalDesign</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_workload_:_ReviewOwner">ReviewOwner</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_workload_:_IsReviewOwnerUpdateAcknowledged">IsReviewOwnerUpdateAcknowledged</code></td>
<td><p>Flag indicating whether the workload owner has acknowledged that
the <em>Review owner</em> field is required.</p>
<p>If a <strong>Review owner</strong> is not added to the workload
within 60 days of acknowledgement, access to the workload is restricted
until an owner is added.</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_workload_:_IndustryType">IndustryType</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_workload_:_Industry">Industry</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="wellarchitected_update_workload_:_Notes">Notes</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_workload_:_ImprovementStatus">ImprovementStatus</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_workload_:_DiscoveryConfig">DiscoveryConfig</code></td>
<td><p>Well-Architected discovery configuration settings to associate to
the workload.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_workload_:_Applications">Applications</code></td>
<td><p>List of AppRegistry application ARNs to associate to the
workload.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Workload = list(
        WorkloadId = "string",
        WorkloadArn = "string",
        WorkloadName = "string",
        Description = "string",
        Environment = "PRODUCTION"|"PREPRODUCTION",
        UpdatedAt = as.POSIXct(
          "2015-01-01"
        ),
        AccountIds = list(
          "string"
        ),
        AwsRegions = list(
          "string"
        ),
        NonAwsRegions = list(
          "string"
        ),
        ArchitecturalDesign = "string",
        ReviewOwner = "string",
        ReviewRestrictionDate = as.POSIXct(
          "2015-01-01"
        ),
        IsReviewOwnerUpdateAcknowledged = TRUE|FALSE,
        IndustryType = "string",
        Industry = "string",
        Notes = "string",
        ImprovementStatus = "NOT_APPLICABLE"|"NOT_STARTED"|"IN_PROGRESS"|"COMPLETE"|"RISK_ACKNOWLEDGED",
        RiskCounts = list(
          123
        ),
        PillarPriorities = list(
          "string"
        ),
        Lenses = list(
          "string"
        ),
        Owner = "string",
        ShareInvitationId = "string",
        Tags = list(
          "string"
        ),
        DiscoveryConfig = list(
          TrustedAdvisorIntegrationStatus = "ENABLED"|"DISABLED",
          WorkloadResourceDefinition = list(
            "WORKLOAD_METADATA"|"APP_REGISTRY"
          )
        ),
        Applications = list(
          "string"
        )
      )
    )

### Request syntax

    svc$update_workload(
      WorkloadId = "string",
      WorkloadName = "string",
      Description = "string",
      Environment = "PRODUCTION"|"PREPRODUCTION",
      AccountIds = list(
        "string"
      ),
      AwsRegions = list(
        "string"
      ),
      NonAwsRegions = list(
        "string"
      ),
      PillarPriorities = list(
        "string"
      ),
      ArchitecturalDesign = "string",
      ReviewOwner = "string",
      IsReviewOwnerUpdateAcknowledged = TRUE|FALSE,
      IndustryType = "string",
      Industry = "string",
      Notes = "string",
      ImprovementStatus = "NOT_APPLICABLE"|"NOT_STARTED"|"IN_PROGRESS"|"COMPLETE"|"RISK_ACKNOWLEDGED",
      DiscoveryConfig = list(
        TrustedAdvisorIntegrationStatus = "ENABLED"|"DISABLED",
        WorkloadResourceDefinition = list(
          "WORKLOAD_METADATA"|"APP_REGISTRY"
        )
      ),
      Applications = list(
        "string"
      )
    )
